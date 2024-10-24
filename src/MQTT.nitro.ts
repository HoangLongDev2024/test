import type { HybridObject } from 'react-native-nitro-modules'

export interface MQTT
  extends HybridObject<{ ios: 'swift'; android: 'kotlin' }> {
  connect(host: string, port: number): string

  disconnect(): void

  subscribe(topic: string, callBack: (data: string) => void): void

  unsubscribe(topic: string): void

  publish(topic: string, message: string): string
}
