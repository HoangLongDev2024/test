// TODO: Export all HybridObjects here
// TODO: Export all HybridObjects here
import { NitroModules } from 'react-native-nitro-modules'
import type { MQTT } from './MQTT.nitro'

export * from './MQTT.nitro'

/**
 * Constructors for creating instances of `MQTT`.
 */
export const MQTTHybridObject = NitroModules.createHybridObject<MQTT>('MQTT')

export const mqttConnect = (host: string, port: number) =>
  MQTTHybridObject.connect(host, port)

export const mqttDisconnect = () => MQTTHybridObject.disconnect()

export const mqttSubscribe = (
  topic: string,
  callBack: (data: string) => void
) => MQTTHybridObject.subscribe(topic, callBack)

export const mqttUnsubscribe = (topic: string) =>
  MQTTHybridObject.unsubscribe(topic)

export const mqttPublish = (topic: string, message: string) =>
  MQTTHybridObject.publish(topic, message)
