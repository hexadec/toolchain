#include <math.h>

float expm1f(float x)
{
    /**
     * 0x1.0p-8f: At least 16.0bits of precision
     */
    if (fabsf(x) < 3.90625e-3f /* 0x1.0p-8f */) {
        return x + 0.5f * (x * x);
    }
    return expf(x) - 1.0f;
}

double expm1(double) __attribute__((alias("expm1f")));
