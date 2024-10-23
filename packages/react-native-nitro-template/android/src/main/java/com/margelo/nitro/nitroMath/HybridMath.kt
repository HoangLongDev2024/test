package com.margelo.nitro.nitroMath
class HybridMath : HybridMathSpec() {
    override val memorySize: Long
        get() = 0L

    override val pi: Double
        get() = Math.PI

    override fun add(a: Double, b: Double): Double {
        return a + b
    }

    override fun subtract(a: Double, b: Double): Double {
        return a - b
    }
}
