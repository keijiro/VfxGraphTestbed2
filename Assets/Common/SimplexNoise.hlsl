//
// Simplex Noise custom functions for Shader Graph
//
// We use a little bit tricky macros to avoid name conflicts between
// SimplexNoise2D.hlsl and SimplexNoise3D.hlsl
//

#define mod289(x) mod289_snoise2d(x)
#define permute(x) permute_snoise2d(x)
#define taylorInvSqrt(x) taylorInvSqrt_snoise2d(x)
#define snoise(x) snoise2d(x)

#include "Packages/jp.keijiro.noiseshader/Shader/SimplexNoise2D.hlsl"

void SimplexNoise2D_float(float2 pos, out float value, out float2 grad)
{
    float3 n = snoise2d(pos);
    grad = n.xy;
    value = n.z;
}

#undef mod289
#undef permute
#undef taylorInvSqrt
#undef snoise

#define mod289(x) mod289_snoise3d(x)
#define permute(x) permute_snoise3d(x)
#define taylorInvSqrt(x) taylorInvSqrt_snoise3d(x)
#define snoise(x) snoise3d(x)

#include "Packages/jp.keijiro.noiseshader/Shader/SimplexNoise3D.hlsl"

void SimplexNoise3D_float(float3 pos, out float value, out float3 grad)
{
    float4 n = snoise3d(pos);
    grad = n.xyz;
    value = n.w;
}
