package com.example.elpam

import android.appwidget.AppWidgetManager
import android.appwidget.AppWidgetProvider
import android.content.Context
import android.graphics.Bitmap
import android.graphics.drawable.Drawable
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
        // Enter relevant functionality for when the first widget is created
    }

    override fun onDisabled(context: Context) {
        // Enter relevant functionality for when the last widget is disabled
    }
}