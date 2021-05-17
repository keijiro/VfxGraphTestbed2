void SpiralCoordinates_float(float3 pos, float freq, out float2 coord)
{
    const float omega = 6.28318530718;
    float phi = atan2(pos.y, pos.x) / omega + 0.5;
    coord = float2(phi, pos.z - phi * freq);
}
