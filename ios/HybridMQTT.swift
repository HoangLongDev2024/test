// import CocoaMQTT5

class HybridMQTT : HybridMQTTSpec {
    ///MQTT 5.0

  // Properties
    public var hybridContext = margelo.nitro.HybridContext()
    public var memorySize: Int {
       return getSizeOf(self)
    }

  // Methods
    public func connect(host: String, port: Double) throws -> String {
        print("connect", host, port)
        return "connected"
   }
   public func disconnect() throws -> Void {
        print("disconnect")
   }
   public func subscribe(topic: String) throws -> Void {
        print("subscribe", topic)
   }

   public func unsubscribe(topic: String) throws -> Void {
        print("unsubscribe", topic)
   }
   public func publish(topic: String, message: String) throws -> Void {
        print("publish", topic, message)
   }
   public func subscribe(topic: String, callBack: @escaping ((String) -> Void)) throws {
       print("subscribe", topic)
    }
    
    public func publish(topic: String, message: String) throws -> String {
        print("publish", topic)
        return "published"
    }

}
