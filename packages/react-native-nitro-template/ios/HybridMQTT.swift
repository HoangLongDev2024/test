import Foundation
import CocoaMQTT5

class HybridMQTT : HybridMQTTSpec {
    ///MQTT 5.0
    let clientID = "CocoaMQTT-" + String(ProcessInfo().processIdentifier)
    let mqtt5

  // Properties
    public var hybridContext = margelo.nitro.HybridContext()
    public var memorySize: Int {
       return getSizeOf(self)
    }

  // Methods
   public func connect(host: String, port: Double) throws -> Void {
        print("connect", host, port)
        mqtt5 = CocoaMQTT5(clientID: clientID, host: "broker.emqx.io", port: 1883)
        let connectProperties = MqttConnectProperties()
        connectProperties.topicAliasMaximum = 0
        connectProperties.sessionExpiryInterval = 0
        connectProperties.receiveMaximum = 100
        connectProperties.maximumPacketSize = 500
        mqtt5.connectProperties = connectProperties

        mqtt5.username = "test"
        mqtt5.password = "public"
        mqtt5.willMessage = CocoaMQTTMessage(topic: "/will", string: "dieout")
        mqtt5.keepAlive = 60
        mqtt5.delegate = self
        mqtt5.connect()
        print("connected", mqtt5.connected)
   }
   public func disconnect() throws -> Void {
        print("disconnect")
        mqtt5.disconnect()
   }
   public func subscribe(topic: String) throws -> Void {
        print("subscribe", topic)
        mqtt5.subscribe(topic)
        mqtt.didReceiveMessage = { mqtt, message, id in
            print("Message received in topic \(message.topic) with payload \(message.string!)")
        }
   }

   public func unsubscribe(topic: String) throws -> Void {
        print("unsubscribe", topic)
        mqtt5.unsubscribe(topic)
   }
   public func publish(topic: String, message: String) throws -> Void {
        print("publish", topic, message)
        mqtt5.publish(CocoaMQTTMessage(topic: topic, string: message))
   }
}
