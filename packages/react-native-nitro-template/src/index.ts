// TODO: Export all HybridObjects here
import { NitroModules } from 'react-native-nitro-modules'
import type { Math } from './Math.nitro'
import type { MQTT } from './MQTT.nitro'

export * from './Math.nitro'
export * from './MQTT.nitro'
/**
 * Constructors for creating instances of `Math`.
 */
export const MathHybridObject = NitroModules.createHybridObject<Math>('Math')

export const mathAdd = (a: number, b: number) => MathHybridObject.add(a, b)

export const mathSubtract = (a: number, b: number) =>
  MathHybridObject.subtract(a, b)

/**
 * Constructors for creating instances of `MQTT`.
 */
export const MQTTHybridObject = NitroModules.createHybridObject<MQTT>('MQTT')

export const mqttConnect = (host: string, port: number) => MQTTHybridObject.connect(host, port)

export const mqttDisconnect = () => MQTTHybridObject.disconnect()

export const mqttSubscribe = (topic: string) => MQTTHybridObject.subscribe(topic)

export const mqttUnsubscribe = (topic: string) => MQTTHybridObject.unsubscribe(topic)

export const mqttPublish = (topic: string, message: string) => MQTTHybridObject.publish(topic, message)
