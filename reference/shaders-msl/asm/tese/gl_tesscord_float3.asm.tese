#include <metal_stdlib>
#include <simd/simd.h>

using namespace metal;

struct main0_out
{
    float4 m_27 [[user(locn0)]];
    float m_71 [[user(locn1)]];
    float2 m_108 [[user(locn2)]];
    float3 m_145 [[user(locn3)]];
    float4 m_180 [[user(locn4)]];
    float4 gl_Position [[position]];
};

struct main0_in
{
    float4 m_37 [[attribute(0)]];
    float m_79 [[attribute(1)]];
    float2 m_116 [[attribute(2)]];
    float3 m_153 [[attribute(3)]];
    float4 m_186 [[attribute(4)]];
    float4 gl_Position [[attribute(5)]];
};

struct main0_patchIn
{
    patch_control_point<main0_in> gl_in;
};

[[ patch(quad, 0) ]] vertex main0_out main0(main0_patchIn patchIn [[stage_in]], float3 gl_TessCoord [[position_in_patch]])
{
    main0_out out = {};
    float _8 = gl_TessCoord.x;
    float _17 = gl_TessCoord.y;
    float _21 = gl_TessCoord.z;
    out.m_27 = (((patchIn.gl_in[0].m_37 * ((1.0 - _8) * (1.0 - _17))) + (patchIn.gl_in[1].m_37 * ((1.0 - _8) * _17))) + (patchIn.gl_in[2].m_37 * (_8 * (1.0 - _17)))) + (patchIn.gl_in[3].m_37 * (_8 * _17));
    out.m_71 = (((((1.0 - _8) * (1.0 - _17)) * patchIn.gl_in[0].m_79) + (((1.0 - _8) * _17) * patchIn.gl_in[1].m_79)) + ((_8 * (1.0 - _17)) * patchIn.gl_in[2].m_79)) + ((_8 * _17) * patchIn.gl_in[3].m_79);
    out.m_108 = (((patchIn.gl_in[0].m_116 * ((1.0 - _8) * (1.0 - _17))) + (patchIn.gl_in[1].m_116 * ((1.0 - _8) * _17))) + (patchIn.gl_in[2].m_116 * (_8 * (1.0 - _17)))) + (patchIn.gl_in[3].m_116 * (_8 * _17));
    out.m_145 = (((patchIn.gl_in[0].m_153 * ((1.0 - _8) * (1.0 - _17))) + (patchIn.gl_in[1].m_153 * ((1.0 - _8) * _17))) + (patchIn.gl_in[2].m_153 * (_8 * (1.0 - _17)))) + (patchIn.gl_in[3].m_153 * (_8 * _17));
    out.m_180 = (((patchIn.gl_in[0].m_186 * ((1.0 - _8) * (1.0 - _17))) + (patchIn.gl_in[1].m_186 * ((1.0 - _8) * _17))) + (patchIn.gl_in[2].m_186 * (_8 * (1.0 - _17)))) + (patchIn.gl_in[3].m_186 * (_8 * _17));
    out.gl_Position = (((patchIn.gl_in[0].gl_Position * ((1.0 - _8) * (1.0 - _17))) + (patchIn.gl_in[1].gl_Position * ((1.0 - _8) * _17))) + (patchIn.gl_in[2].gl_Position * (_8 * (1.0 - _17)))) + (patchIn.gl_in[3].gl_Position * (_8 * _17));
    return out;
}

