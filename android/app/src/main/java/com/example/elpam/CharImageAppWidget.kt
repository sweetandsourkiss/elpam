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
import es.antonborri.home_widget.HomeWidgetPlugin
import com.bumptech.glide.Glide
import com.bumptech.glide.request.target.CustomTarget
import com.bumptech.glide.request.transition.Transition
import android.graphics.BitmapFactory
import java.io.File

/**
 * Implementation of App Widget functionality.
 */
class CharImageAppWidget : AppWidgetProvider() {
    private fun getMaxCount(context: Context): Int {
        val prefs = context.getSharedPreferences("widget_prefs", Context.MODE_PRIVATE)
        return prefs.getInt("max_count_idx", 0)
    }

    private fun setMaxCount(context: Context, value: Int) {
        val prefs = context.getSharedPreferences("widget_prefs", Context.MODE_PRIVATE)
        prefs.edit().putInt("max_count_idx", value).apply()
    }

    private fun getCount(context: Context): Int {
        val prefs = context.getSharedPreferences("widget_prefs", Context.MODE_PRIVATE)
        return prefs.getInt("count_idx", 0)
    }

    private fun setCount(context: Context, value: Int) {
        val prefs = context.getSharedPreferences("widget_prefs", Context.MODE_PRIVATE)
        prefs.edit().putInt("count_idx", value).apply()
    }

    private fun saveBitmapToInternalStorage(context: Context, bitmap: Bitmap, filename: String) {
        context.openFileOutput(filename, Context.MODE_PRIVATE).use { fos ->
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, fos)
        }
    }

    private fun loadBitmapFromInternalStorage(context: Context, filename: String): Bitmap? {
        return try {
            context.openFileInput(filename).use { fis ->
                BitmapFactory.decodeStream(fis)
            }
        } catch (e: Exception) {
            null
        }
    }

    override fun onUpdate(
        context: Context,
        appWidgetManager: AppWidgetManager,
        appWidgetIds: IntArray
    ) {
//        Log.d("WidgetUpdateService", "onUpdate called") // 로그 추가
        val maxCount = getMaxCount(context)
        var count = getCount(context)
        Log.d("WidgetUpdateService", "$count") // 4번

        if(count >= maxCount) {
            count = 0
        }

        for (appWidgetId in appWidgetIds) {
            val views = RemoteViews(context.packageName, R.layout.char_image_app_widget)
            val bitmap = loadBitmapFromInternalStorage(context, "widget_char_image_$count.png")
            if (bitmap != null) {
                views.setImageViewBitmap(R.id.char_image_url, bitmap)
            }
            appWidgetManager.updateAppWidget(appWidgetId, views)
        }

        count = (count + 1) % maxCount
        setCount(context, count)
    }

    override fun onEnabled(context: Context) {
        val widgetData = HomeWidgetPlugin.getData(context)
        val imageUrl = widgetData.getString("char_image_url", null)
        val actionName = widgetData.getString("char_image_action", null)
        val emotionName = widgetData.getString("char_image_emotion", null)
        val actionMaxFrame = widgetData.getInt("char_image_action_max_frame", -1)
        val emotionMaxFrame = widgetData.getInt("char_image_emotion_max_frame", -1)
        // 최대공약수(GCD) 함수 (유클리드 호제법)
        fun gcd(a: Int, b: Int): Int = if (b != 0) gcd(b, a % b) else a

        // 최소공배수(LCM) 함수
        fun lcm(a: Int, b: Int): Int = a * b / gcd(a, b)

        if (imageUrl != null && actionName != null && actionMaxFrame != -1 && emotionName != null && emotionMaxFrame != -1) {
            val result = lcm(actionMaxFrame, emotionMaxFrame)
            setMaxCount(context, result)
            setCount(context, 0)

            var actionIdx = 0
            var emotionIdx = 0
            for(i in 0 until result){
                val newImageUrl =
                    "$imageUrl?action=$actionName.$actionIdx&emotion=$emotionName.$emotionIdx"
                actionIdx = (actionIdx + 1) % actionMaxFrame
                emotionIdx = (emotionIdx + 1) % emotionMaxFrame
                Glide.with(context)
                    .asBitmap()
                    .load(newImageUrl)
                    .into(object : CustomTarget<Bitmap>() {
                        override fun onResourceReady(resource: Bitmap, transition: Transition<in Bitmap>?) {
                            saveBitmapToInternalStorage(context, resource, "widget_char_image_$i.png")
                        }
                        override fun onLoadCleared(placeholder: Drawable?) {}
                    })
            }
            // 서비스 시작
            val serviceIntent = Intent(context, WidgetUpdateService::class.java)
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                context.startForegroundService(serviceIntent)
            } else {
                context.startService(serviceIntent)
            }
        }
    }

    override fun onDisabled(context: Context) {
        // 서비스 정지
        context.stopService(Intent(context, WidgetUpdateService::class.java))
    }
}