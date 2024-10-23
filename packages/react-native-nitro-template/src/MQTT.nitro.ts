import type { HybridObject } from 'react-native-nitro-modules'

export interface MQTT extends HybridObject<{ ios: 'swift', android: 'kotlin' }> {
  connect(host: string, port: number): void

  disconnect(): void

  subscribe(topic: string): void

  unsubscribe(topic: string): void

  publish(topic: string, message: string): void
}
