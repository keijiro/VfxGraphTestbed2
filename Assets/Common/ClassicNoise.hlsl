//
// Classic Perlin Noise custom functions for Shader Graph
//
// We use a little bit tricky macros to avoid name conflicts between
// ClassicNoise2D.hlsl and ClassicNoise3D.hlsl
//

#define mod(x,y) mod_cnoise2d(x,y)
#define mod289(x) mod289_cnoise2d(x)
#define permute(x) permute_cnoise2d(x)
#define taylorInvSqrt(x) taylorInvSqrt_cnoise2d(x)
#define fade(x) fade_cnoise2d(x)
#define cnoise(x) cnoise2d(x)
#define pnoise(x,y) pnoise2d(x,y)

#include "Packages/jp.keijiro.noiseshader/Shader/ClassicNoise2D.hlsl"

void ClassicNoise2D_float(float2 pos, out float value)
{
    value = cnoise2d(pos);
}

void PeriodicNoise2D_float(float2 pos, float2 rep, out float value)
{
    value = pnoise2d(pos, rep);
}

#undef mod
#undef mod289
#undef permute
#undef taylorInvSqrt
#undef fade
#undef cnoise
#undef pnoise

#define mod(x,y) mod_cnoise3d(x,y)
#define mod289(x) mod289_cnoise3d(x)
#define permute(x) permute_cnoise3d(x)
#define taylorInvSqrt(x) taylorInvSqrt_cnoise3d(x)
#define fade(x) fade_cnoise3d(x)
#define cnoise(x) cnoise3d(x)
#define pnoise(x,y) pnoise3d(x,y)

#include "Packages/jp.keijiro.noiseshader/Shader/ClassicNoise3D.hlsl"

void ClassicNoise3D_float(float3 pos, out float value)
{
    value = cnoise3d(pos);
}

void PeriodicNoise3D_float(float3 pos, float3 rep, out float value)
{
    value = pnoise3d(pos, rep);
}

#undef mod
#undef mod289
#undef permute
#undef taylorInvSqrt
#undef fade
#undef cnoise
#undef pnoise
