import * as React from 'react'

import { Platform, StyleSheet, Text, View } from 'react-native'
import { HybridBase, HybridChild } from 'react-native-nitro-image'
import { SafeAreaView } from 'react-native-safe-area-context'
import SegmentedControl from '@react-native-segmented-control/segmented-control'
import { NitroModules } from 'react-native-nitro-modules'
import { mathAdd, mathSubtract, mqttConnect, mqttDisconnect } from 'react-native-nitro-template'
import { useEffect } from 'react'

console.log('HybridBase.baseValue', HybridBase.baseValue)
console.log('HybridChild.baseValue', HybridChild.baseValue)
console.log('HybridChild.childValue', HybridChild.childValue)

export function HybridObjectTestsScreen() {
  const [selectedIndex, setSelectedIndex] = React.useState(0)

  const result = mathSubtract(5015, 1117)
  console.log('mathSubtract result', result)

  const result2 = mathAdd(5015, 1117)
  console.log('mathAdd result', result2)

  useEffect(() => {
    mqttConnect('localhost', 1883)
    return () => {
      mqttDisconnect()
    }
  }, [])

  return (
    <SafeAreaView style={styles.container}>
      <Text style={styles.header}>HybridObject Tests</Text>
      <View style={styles.topControls}>
        <SegmentedControl
          style={styles.segmentedControl}
          values={['C++', 'Swift/Kotlin']}
          selectedIndex={selectedIndex}
          onChange={({ nativeEvent: { selectedSegmentIndex } }) => {
            setSelectedIndex(selectedSegmentIndex)
          }}
        />
        <View style={styles.flex} />
        <Text style={styles.buildTypeText}>{NitroModules.buildType}</Text>
      </View>
      <Text>Math Add: {result}</Text>
      <Text>Math Sub: {result2}</Text>

    </SafeAreaView>
  )
}

const styles = StyleSheet.create({
  header: {
    fontSize: 26,
    fontWeight: 'bold',
    paddingBottom: 15,
    marginHorizontal: 15,
  },
  container: {
    flex: 1,
    paddingVertical: 10,
  },
  scrollContent: {
    paddingHorizontal: 15,
  },
  topControls: {
    marginHorizontal: 15,
    marginBottom: 10,
    flexDirection: 'row',
    alignItems: 'center',
  },
  buildTypeText: {
    fontFamily: Platform.select({
      ios: 'Menlo',
      macos: 'Menlo',
      android: 'monospace',
    }),
    fontWeight: 'bold',
  },
  segmentedControl: {
    minWidth: 180,
  },
  box: {
    width: 60,
    height: 60,
    marginVertical: 20,
  },
  testCase: {
    width: '100%',
    borderBottomWidth: StyleSheet.hairlineWidth,
    paddingVertical: 10,
    flexDirection: 'row',
    alignItems: 'center',
  },
  testBox: {
    flexShrink: 1,
    flexDirection: 'column',
  },
  testName: {
    fontSize: 16,
    fontWeight: 'bold',
  },
  testStatus: {
    fontSize: 14,
    flex: 1,
  },
  smallVSpacer: {
    height: 5,
  },
  flex: { flex: 1 },
  bottomView: {
    paddingHorizontal: 15,
    paddingTop: 15,
    alignItems: 'center',
  },
})
