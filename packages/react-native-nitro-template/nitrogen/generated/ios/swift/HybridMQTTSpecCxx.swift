///
/// HybridMQTTSpecCxx.swift
/// This file was generated by nitrogen. DO NOT MODIFY THIS FILE.
/// https://github.com/mrousavy/nitro
/// Copyright © 2024 Marc Rousavy @ Margelo
///

import Foundation
import NitroModules

/**
 * Holds instances of HybridMQTTSpecCxx and stores them under Integer IDs.
 * Those Integer IDs can be used in C++ to box the Swift type to prevent cyclic includes.
 */
public final class HybridMQTTSpecCxxReferenceHolder {
  private static var instances: [Int : HybridMQTTSpecCxx] = [:]
  private static var counter: Int = 0

  public static func put(_ instance: HybridMQTTSpecCxx) -> Int {
    let id = counter
    counter += 1
    instances[id] = instance
    return id
  }

  public static func getById(_ instanceId: Int) -> HybridMQTTSpecCxx {
    let instance = instances[instanceId]!
    instances.removeValue(forKey: instanceId)
    return instance
  }
}

/**
 * A class implementation that bridges HybridMQTTSpec over to C++.
 * In C++, we cannot use Swift protocols - so we need to wrap it in a class to make it strongly defined.
 *
 * Also, some Swift types need to be bridged with special handling:
 * - Enums need to be wrapped in Structs, otherwise they cannot be accessed bi-directionally (Swift bug: https://github.com/swiftlang/swift/issues/75330)
 * - Other HybridObjects need to be wrapped/unwrapped from the Swift TCxx wrapper
 * - Throwing methods need to be wrapped with a Result<T, Error> type, as exceptions cannot be propagated to C++
 */
public class HybridMQTTSpecCxx {
  /**
   * The Swift <> C++ bridge's namespace (`margelo::nitro::nitroMath::bridge::swift`)
   * from `NitroMath-Swift-Cxx-Bridge.hpp`.
   * This contains specialized C++ templates, and C++ helper functions that can be accessed from Swift.
   */
  public typealias bridge = margelo.nitro.nitroMath.bridge.swift

  /**
   * Holds an instance of the `HybridMQTTSpec` Swift protocol.
   */
  private var __implementation: any HybridMQTTSpec

  /**
   * Create a new `HybridMQTTSpecCxx` that wraps the given `HybridMQTTSpec`.
   * All properties and methods bridge to C++ types.
   */
  public init(_ implementation: some HybridMQTTSpec) {
    self.__implementation = implementation
    /* no base class */
  }

  /**
   * Get the actual `HybridMQTTSpec` instance this class wraps.
   */
  @inline(__always)
  public func getHybridMQTTSpec() -> any HybridMQTTSpec {
    return __implementation
  }

  /**
   * Contains a (weak) reference to the C++ HybridObject to cache it.
   */
  public var hybridContext: margelo.nitro.HybridContext {
    @inline(__always)
    get {
      return self.__implementation.hybridContext
    }
    @inline(__always)
    set {
      self.__implementation.hybridContext = newValue
    }
  }

  /**
   * Get the memory size of the Swift class (plus size of any other allocations)
   * so the JS VM can properly track it and garbage-collect the JS object if needed.
   */
  @inline(__always)
  public var memorySize: Int {
    return self.__implementation.memorySize
  }

  // Properties
  

  // Methods
  @inline(__always)
  public func connect(host: std.string, port: Double) -> Void {
    do {
      try self.__implementation.connect(host: String(host), port: port)
      return 
    } catch {
      let __message = "\(error.localizedDescription)"
      fatalError("Swift errors can currently not be propagated to C++! See https://github.com/swiftlang/swift/issues/75290 (Error: \(__message))")
    }
  }
  
  @inline(__always)
  public func disconnect() -> Void {
    do {
      try self.__implementation.disconnect()
      return 
    } catch {
      let __message = "\(error.localizedDescription)"
      fatalError("Swift errors can currently not be propagated to C++! See https://github.com/swiftlang/swift/issues/75290 (Error: \(__message))")
    }
  }
  
  @inline(__always)
  public func subscribe(topic: std.string) -> Void {
    do {
      try self.__implementation.subscribe(topic: String(topic))
      return 
    } catch {
      let __message = "\(error.localizedDescription)"
      fatalError("Swift errors can currently not be propagated to C++! See https://github.com/swiftlang/swift/issues/75290 (Error: \(__message))")
    }
  }
  
  @inline(__always)
  public func unsubscribe(topic: std.string) -> Void {
    do {
      try self.__implementation.unsubscribe(topic: String(topic))
      return 
    } catch {
      let __message = "\(error.localizedDescription)"
      fatalError("Swift errors can currently not be propagated to C++! See https://github.com/swiftlang/swift/issues/75290 (Error: \(__message))")
    }
  }
  
  @inline(__always)
  public func publish(topic: std.string, message: std.string) -> Void {
    do {
      try self.__implementation.publish(topic: String(topic), message: String(message))
      return 
    } catch {
      let __message = "\(error.localizedDescription)"
      fatalError("Swift errors can currently not be propagated to C++! See https://github.com/swiftlang/swift/issues/75290 (Error: \(__message))")
    }
  }
}
