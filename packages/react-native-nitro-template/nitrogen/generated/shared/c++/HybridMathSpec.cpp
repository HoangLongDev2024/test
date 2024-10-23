///
/// HybridMathSpec.cpp
/// This file was generated by nitrogen. DO NOT MODIFY THIS FILE.
/// https://github.com/mrousavy/nitro
/// Copyright © 2024 Marc Rousavy @ Margelo
///

#include "HybridMathSpec.hpp"

namespace margelo::nitro::nitroMath {

  void HybridMathSpec::loadHybridMethods() {
    // load base methods/properties
    HybridObject::loadHybridMethods();
    // load custom methods/properties
    registerHybrids(this, [](Prototype& prototype) {
      prototype.registerHybridGetter("pi", &HybridMathSpec::getPi);
      prototype.registerHybridMethod("add", &HybridMathSpec::add);
      prototype.registerHybridMethod("subtract", &HybridMathSpec::subtract);
    });
  }

} // namespace margelo::nitro::nitroMath
