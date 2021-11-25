#include <metal_stdlib>
#include <simd/simd.h>

using namespace metal;

struct main0_out
{
    float4 m_4 [[user(locn0)]];
    float m_6 [[user(locn1)]];
    float2 m_8 [[user(locn2)]];
    float3 m_10 [[user(locn3)]];
    float4 m_12 [[user(locn4)]];
    float4 gl_Position [[position]];
};

struct main0_in
{
    float4 m_5 [[attribute(0)]];
    float m_7 [[attribute(1)]];
    float2 m_9 [[attribute(2)]];
    float3 m_11 [[attribute(3)]];
    float4 m_13 [[attribute(4)]];
    float4 gl_Position [[attribute(5)]];
};

struct main0_patchIn
{
    patch_control_point<main0_in> gl_in;
};

[[ patch(quad, 0) ]] vertex main0_out main0(main0_patchIn patchIn [[stage_in]], float3 gl_TessCoord [[position_in_patch]])
{
    main0_out out = {};
    float _67 = 1.0 - gl_TessCoord.x;
    float _69 = 1.0 - gl_TessCoord.y;
    float _70 = _67 * _69;
    float _77 = _67 * gl_TessCoord.y;
    float _85 = gl_TessCoord.x * _69;
    float _92 = gl_TessCoord.x * gl_TessCoord.y;
    out.m_4 = (((patchIn.gl_in[0].m_5 * _70) + (patchIn.gl_in[1].m_5 * _77)) + (patchIn.gl_in[2].m_5 * _85)) + (patchIn.gl_in[3].m_5 * _92);
    out.m_6 = (((_70 * patchIn.gl_in[0].m_7) + (_77 * patchIn.gl_in[1].m_7)) + (_85 * patchIn.gl_in[2].m_7)) + (_92 * patchIn.gl_in[3].m_7);
    out.m_8 = (((patchIn.gl_in[0].m_9 * _70) + (patchIn.gl_in[1].m_9 * _77)) + (patchIn.gl_in[2].m_9 * _85)) + (patchIn.gl_in[3].m_9 * _92);
    out.m_10 = (((patchIn.gl_in[0].m_11 * _70) + (patchIn.gl_in[1].m_11 * _77)) + (patchIn.gl_in[2].m_11 * _85)) + (patchIn.gl_in[3].m_11 * _92);
    out.m_12 = (((patchIn.gl_in[0].m_13 * _70) + (patchIn.gl_in[1].m_13 * _77)) + (patchIn.gl_in[2].m_13 * _85)) + (patchIn.gl_in[3].m_13 * _92);
    out.gl_Position = (((patchIn.gl_in[0].gl_Position * _70) + (patchIn.gl_in[1].gl_Position * _77)) + (patchIn.gl_in[2].gl_Position * _85)) + (patchIn.gl_in[3].gl_Position * _92);
    return out;
}

