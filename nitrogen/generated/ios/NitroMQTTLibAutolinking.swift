///
/// NitroMQTTLibAutolinking.swift
/// This file was generated by nitrogen. DO NOT MODIFY THIS FILE.
/// https://github.com/mrousavy/nitro
/// Copyright © 2024 Marc Rousavy @ Margelo
///

public final class NitroMQTTLibAutolinking {
  public typealias bridge = margelo.nitro.mqtt_lib.bridge.swift

  /**
   * Creates an instance of a Swift class that implements `HybridMQTTSpec`,
   * and wraps it in a Swift class that can directly interop with C++ (`HybridMQTTSpecCxx`)
   *
   * This is generated by Nitrogen and will initialize the class specified
   * in the `"autolinking"` property of `nitro.json` (in this case, `HybridMQTT`).
   */
  public static func createMQTT() -> bridge.std__shared_ptr_margelo__nitro__mqtt_lib__HybridMQTTSpec_ {
    let hybridObject = HybridMQTT()
    return { () -> bridge.std__shared_ptr_margelo__nitro__mqtt_lib__HybridMQTTSpec_ in
      let __cxxWrapped = HybridMQTTSpecCxx(hybridObject)
      let __pointer = HybridMQTTSpecCxxUnsafe.toUnsafe(__cxxWrapped)
      return bridge.create_std__shared_ptr_margelo__nitro__mqtt_lib__HybridMQTTSpec_(__pointer)
    }()
  }
}
