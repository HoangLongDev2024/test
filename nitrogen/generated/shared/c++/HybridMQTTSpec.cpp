///
/// HybridMQTTSpec.cpp
/// This file was generated by nitrogen. DO NOT MODIFY THIS FILE.
/// https://github.com/mrousavy/nitro
/// Copyright © 2024 Marc Rousavy @ Margelo
///

#include "HybridMQTTSpec.hpp"

namespace margelo::nitro::mqtt_lib {

  void HybridMQTTSpec::loadHybridMethods() {
    // load base methods/properties
    HybridObject::loadHybridMethods();
    // load custom methods/properties
    registerHybrids(this, [](Prototype& prototype) {
      prototype.registerHybridMethod("connect", &HybridMQTTSpec::connect);
      prototype.registerHybridMethod("disconnect", &HybridMQTTSpec::disconnect);
      prototype.registerHybridMethod("subscribe", &HybridMQTTSpec::subscribe);
      prototype.registerHybridMethod("unsubscribe", &HybridMQTTSpec::unsubscribe);
      prototype.registerHybridMethod("publish", &HybridMQTTSpec::publish);
    });
  }

} // namespace margelo::nitro::mqtt_lib
