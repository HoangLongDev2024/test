///
/// NitroMQTTLibOnLoad.cpp
/// This file was generated by nitrogen. DO NOT MODIFY THIS FILE.
/// https://github.com/mrousavy/nitro
/// Copyright © 2024 Marc Rousavy @ Margelo
///

#include "NitroMQTTLibOnLoad.hpp"

#include <jni.h>
#include <fbjni/fbjni.h>
#include <NitroModules/HybridObjectRegistry.hpp>

#include "JHybridMQTTSpec.hpp"
#include "JFunc_void_std__string.hpp"
#include <NitroModules/JNISharedPtr.hpp>

namespace margelo::nitro::mqtt_lib {

int initialize(JavaVM* vm) {
  using namespace margelo::nitro;
  using namespace margelo::nitro::mqtt_lib;
  using namespace facebook;

  return facebook::jni::initialize(vm, [] {
    // Register native JNI methods
    margelo::nitro::mqtt_lib::JHybridMQTTSpec::registerNatives();
    margelo::nitro::mqtt_lib::JFunc_void_std__string::registerNatives();

    // Register Nitro Hybrid Objects
    HybridObjectRegistry::registerHybridObjectConstructor(
      "MQTT",
      []() -> std::shared_ptr<HybridObject> {
        static auto javaClass = jni::findClassStatic("com/margelo/nitro/mqtt_lib/HybridMQTT");
        static auto defaultConstructor = javaClass->getConstructor<JHybridMQTTSpec::javaobject()>();
    
        auto instance = javaClass->newObject(defaultConstructor);
    #ifdef NITRO_DEBUG
        if (instance == nullptr) [[unlikely]] {
          throw std::runtime_error("Failed to create an instance of \"JHybridMQTTSpec\" - the constructor returned null!");
        }
    #endif
        auto globalRef = jni::make_global(instance);
        return JNISharedPtr::make_shared_from_jni<JHybridMQTTSpec>(globalRef);
      }
    );
  });
}

} // namespace margelo::nitro::mqtt_lib
