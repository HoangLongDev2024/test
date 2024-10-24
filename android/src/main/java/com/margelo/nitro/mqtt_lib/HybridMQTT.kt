package com.margelo.nitro.nitroMath

import android.util.Log
import com.margelo.nitro.mqtt_lib.HybridMQTTSpec

class HybridMQTT : HybridMQTTSpec() {
    override val memorySize: Long
        get() = 0L

    override fun connect(host: String, port: Double): String {
        Log.d("connect","Connecting to MQTT server: ${host} - ${port}")
        return "Connected".toString()
    }

    override fun disconnect() {
         Log.d("disconnect","disconnect")
    }

    override fun subscribe(topic: String, callBack: (data: String) -> Unit) {
        Log.d("subscribe","Subscribing to topic: ${topic}")
    }

    override fun unsubscribe(topic: String) {
        Log.d("unsubscribe","unsubscribe to topic: ${topic}")
    }

    override fun publish(topic: String, message: String): String {
        Log.d("Publishing","Publishing message: ${topic} - ${message}")
        return "publish"
    }
}
