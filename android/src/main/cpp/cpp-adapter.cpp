#include <jni.h>
#include "NitroMQTTLibOnLoad.hpp"

JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM* vm, void*) {
  return margelo::nitro::mqtt_lib::initialize(vm);
}
