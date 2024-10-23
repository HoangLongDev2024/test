package com.margelo.nitro.nitroMath

class HybridMQTT : HybridMQTTSpec() {
    override val memorySize: Long
        get() = 0L

    override fun connect(host: String, port: Double): Boolean {
        println("Connecting to MQTT server", host, port)
        return true
    }

    override fun disconnect(): Boolean {
        println("Disconnecting from MQTT server")
        return true
    }

    override fun subscribe(topic: String): Boolean {
        println("Subscribing to topic", topic)
        return true
    }

    override fun unsubscribe(topic: String): Boolean {
        println("Unsubscribing from topic", topic)
        return true
    }

    override fun publish(topic: String, message: String): Boolean {
        println("Publishing message", message, "to topic", topic)
        return true
    }
}
