package com.example.elpam

import android.app.Notification
import android.app.NotificationManager
import android.app.Service
import android.appwidget.AppWidgetManager
import android.content.Intent
import android.os.Handler
import android.os.Looper
import android.content.ComponentName
import android.os.Build
import android.app.NotificationChannel
import android.util.Log
import androidx.core.app.NotificationCompat


// WidgetUpdateService.kt
class WidgetUpdateService : Service() {
    private val handler = Handler(Looper.getMainLooper())
    private lateinit var runnable: Runnable

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        startForeground(1, createNotification())
        runnable = object : Runnable {
            override fun run() {
                updateWidget()
                handler.postDelayed(this, 1000) // 1초마다 반복
            }
        }
        handler.post(runnable)
        return START_STICKY
    }

    private fun updateWidget() {
        val appWidgetManager = AppWidgetManager.getInstance(this)
        val ids = appWidgetManager.getAppWidgetIds(
            ComponentName(this, CharImageAppWidget::class.java) // 임포트 해결됨
        )
        // 위젯 업데이트 로직 호출
        CharImageAppWidget().onUpdate(this, appWidgetManager, ids)
    }


    private fun createNotification(): Notification {
        val channelId = "widget_channel"
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val channel = NotificationChannel(
                channelId,
                "Widget",
                NotificationManager.IMPORTANCE_LOW // 임포트 해결됨
            )
            val manager = getSystemService(NotificationManager::class.java)
            manager.createNotificationChannel(channel)
        }
        return NotificationCompat.Builder(this, channelId)
            .setContentTitle("위젯 업데이트 중")
            .setSmallIcon(android.R.drawable.ic_dialog_info) // 기본 아이콘 사용
            .build()
    }

    override fun onBind(intent: Intent?) = null
}
