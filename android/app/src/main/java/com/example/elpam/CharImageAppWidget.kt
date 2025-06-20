package com.example.elpam

import android.appwidget.AppWidgetManager
import android.appwidget.AppWidgetProvider
import android.content.Context
import android.content.Intent
import android.graphics.Bitmap
import android.graphics.drawable.Drawable
import android.os.Build
import android.util.Log
import android.widget.RemoteViews

// New import.
import es.antonborri.home_widget.HomeWidgetPlugin
import com.bumptech.glide.Glide
import com.bumptech.glide.request.target.CustomTarget
import com.bumptech.glide.request.transition.Transition

/**
 * Implementation of App Widget functionality.
 */
class CharImageAppWidget : AppWidgetProvider() {
    override fun onUpdate(
        context: Context,
        appWidgetManager: AppWidgetManager,
        appWidgetIds: IntArray
    ) {
        Log.d("WidgetUpdateService", "updateWidget called") // 로그 추가
        // There may be multiple widgets active, so update all of them
        for (appWidgetId in appWidgetIds) {
            val widgetData = HomeWidgetPlugin.getData(context)
            val views = RemoteViews(context.packageName, R.layout.char_image_app_widget).apply {
                val imageUrl = widgetData.getString("char_image_url", null)
                Glide.with(context)
                    .asBitmap()
                    .load(imageUrl)
                    .into(object: CustomTarget<Bitmap> () {
                        override fun onResourceReady(
                            resource: Bitmap,
                            transition: Transition<in Bitmap>?
                        ) {
                            val views = RemoteViews(context.packageName, R.layout.char_image_app_widget)
                            views.setImageViewBitmap(R.id.char_image_url, resource)
                            appWidgetManager.updateAppWidget(appWidgetId, views)
                        }
                        override fun onLoadCleared(placeholder: Drawable?) {
                        }
                    })
            }
            appWidgetManager.updateAppWidget(appWidgetId, views)
        }
    }

    override fun onEnabled(context: Context) {
        // 서비스 시작
        val serviceIntent = Intent(context, WidgetUpdateService::class.java)
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            context.startForegroundService(serviceIntent)
        } else {
            context.startService(serviceIntent)
        }
    }

    override fun onDisabled(context: Context) {
        // 서비스 정지
        context.stopService(Intent(context, WidgetUpdateService::class.java))
    }
}