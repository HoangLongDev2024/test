///
/// JHybridMQTTSpec.cpp
/// This file was generated by nitrogen. DO NOT MODIFY THIS FILE.
/// https://github.com/mrousavy/nitro
/// Copyright © 2024 Marc Rousavy @ Margelo
///

#include "JHybridMQTTSpec.hpp"



#include <string>

namespace margelo::nitro::nitroMath {

  jni::local_ref<JHybridMQTTSpec::jhybriddata> JHybridMQTTSpec::initHybrid(jni::alias_ref<jhybridobject> jThis) {
    return makeCxxInstance(jThis);
  }

  void JHybridMQTTSpec::registerNatives() {
    registerHybrid({
      makeNativeMethod("initHybrid", JHybridMQTTSpec::initHybrid),
    });
  }

  size_t JHybridMQTTSpec::getExternalMemorySize() noexcept {
    static const auto method = _javaPart->getClass()->getMethod<jlong()>("getMemorySize");
    return method(_javaPart);
  }

  // Properties
  

  // Methods
  void JHybridMQTTSpec::connect(const std::string& host, double port) {
    static const auto method = _javaPart->getClass()->getMethod<void(jni::alias_ref<jni::JString> /* host */, double /* port */)>("connect");
    method(_javaPart, jni::make_jstring(host), port);
  }
  void JHybridMQTTSpec::disconnect() {
    static const auto method = _javaPart->getClass()->getMethod<void()>("disconnect");
    method(_javaPart);
  }
  void JHybridMQTTSpec::subscribe(const std::string& topic) {
    static const auto method = _javaPart->getClass()->getMethod<void(jni::alias_ref<jni::JString> /* topic */)>("subscribe");
    method(_javaPart, jni::make_jstring(topic));
  }
  void JHybridMQTTSpec::unsubscribe(const std::string& topic) {
    static const auto method = _javaPart->getClass()->getMethod<void(jni::alias_ref<jni::JString> /* topic */)>("unsubscribe");
    method(_javaPart, jni::make_jstring(topic));
  }
  void JHybridMQTTSpec::publish(const std::string& topic, const std::string& message) {
    static const auto method = _javaPart->getClass()->getMethod<void(jni::alias_ref<jni::JString> /* topic */, jni::alias_ref<jni::JString> /* message */)>("publish");
    method(_javaPart, jni::make_jstring(topic), jni::make_jstring(message));
  }

} // namespace margelo::nitro::nitroMath
