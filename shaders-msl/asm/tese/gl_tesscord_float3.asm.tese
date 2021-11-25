; SPIR-V
; Version: 1.0
; Generator: Khronos SPIR-V Tools Assembler; 0
; Bound: 253
; Schema: 0
               OpCapability Tessellation
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint TessellationEvaluation %4 "main" %gl_TessCoord %27 %37 %71 %79 %108 %116 %145 %153 %180 %186 %216 %225
               OpExecutionMode %4 Quads
               OpExecutionMode %4 SpacingEqual
               OpExecutionMode %4 VertexOrderCcw
               OpDecorate %gl_TessCoord BuiltIn TessCoord
               OpDecorate %27 Location 0
               OpDecorate %37 Location 0
               OpDecorate %71 Location 1
               OpDecorate %79 Location 1
               OpDecorate %108 Location 2
               OpDecorate %116 Location 2
               OpDecorate %145 Location 3
               OpDecorate %153 Location 3
               OpDecorate %180 Location 4
               OpDecorate %186 Location 4
               OpMemberDecorate %_struct_214 0 BuiltIn Position
               OpMemberDecorate %_struct_214 1 BuiltIn PointSize
               OpMemberDecorate %_struct_214 2 BuiltIn ClipDistance
               OpMemberDecorate %_struct_214 3 BuiltIn CullDistance
               OpDecorate %_struct_214 Block
               OpMemberDecorate %_struct_222 0 BuiltIn Position
               OpMemberDecorate %_struct_222 1 BuiltIn PointSize
               OpMemberDecorate %_struct_222 2 BuiltIn ClipDistance
               OpMemberDecorate %_struct_222 3 BuiltIn CullDistance
               OpDecorate %_struct_222 Block
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
%_ptr_Function_float = OpTypePointer Function %float
    %v3float = OpTypeVector %float 3
%_ptr_Input_v3float = OpTypePointer Input %v3float
%gl_TessCoord = OpVariable %_ptr_Input_v3float Input
       %uint = OpTypeInt 32 0
     %uint_0 = OpConstant %uint 0
%_ptr_Input_float = OpTypePointer Input %float
     %uint_1 = OpConstant %uint 1
     %uint_2 = OpConstant %uint 2
    %v4float = OpTypeVector %float 4
%_ptr_Output_v4float = OpTypePointer Output %v4float
         %27 = OpVariable %_ptr_Output_v4float Output
    %float_1 = OpConstant %float 1
    %uint_32 = OpConstant %uint 32
%_arr_v4float_uint_32 = OpTypeArray %v4float %uint_32
%_ptr_Input__arr_v4float_uint_32 = OpTypePointer Input %_arr_v4float_uint_32
         %37 = OpVariable %_ptr_Input__arr_v4float_uint_32 Input
        %int = OpTypeInt 32 1
      %int_0 = OpConstant %int 0
%_ptr_Input_v4float = OpTypePointer Input %v4float
      %int_1 = OpConstant %int 1
      %int_2 = OpConstant %int 2
      %int_3 = OpConstant %int 3
%_ptr_Output_float = OpTypePointer Output %float
         %71 = OpVariable %_ptr_Output_float Output
%_arr_float_uint_32 = OpTypeArray %float %uint_32
%_ptr_Input__arr_float_uint_32 = OpTypePointer Input %_arr_float_uint_32
         %79 = OpVariable %_ptr_Input__arr_float_uint_32 Input
    %v2float = OpTypeVector %float 2
%_ptr_Output_v2float = OpTypePointer Output %v2float
        %108 = OpVariable %_ptr_Output_v2float Output
%_arr_v2float_uint_32 = OpTypeArray %v2float %uint_32
%_ptr_Input__arr_v2float_uint_32 = OpTypePointer Input %_arr_v2float_uint_32
        %116 = OpVariable %_ptr_Input__arr_v2float_uint_32 Input
%_ptr_Input_v2float = OpTypePointer Input %v2float
%_ptr_Output_v3float = OpTypePointer Output %v3float
        %145 = OpVariable %_ptr_Output_v3float Output
%_arr_v3float_uint_32 = OpTypeArray %v3float %uint_32
%_ptr_Input__arr_v3float_uint_32 = OpTypePointer Input %_arr_v3float_uint_32
        %153 = OpVariable %_ptr_Input__arr_v3float_uint_32 Input
        %180 = OpVariable %_ptr_Output_v4float Output
        %186 = OpVariable %_ptr_Input__arr_v4float_uint_32 Input
%_arr_float_uint_1 = OpTypeArray %float %uint_1
%_struct_214 = OpTypeStruct %v4float %float %_arr_float_uint_1 %_arr_float_uint_1
%_ptr_Output__struct_214 = OpTypePointer Output %_struct_214
        %216 = OpVariable %_ptr_Output__struct_214 Output
%_struct_222 = OpTypeStruct %v4float %float %_arr_float_uint_1 %_arr_float_uint_1
%_arr__struct_222_uint_32 = OpTypeArray %_struct_222 %uint_32
%_ptr_Input__arr__struct_222_uint_32 = OpTypePointer Input %_arr__struct_222_uint_32
        %225 = OpVariable %_ptr_Input__arr__struct_222_uint_32 Input
          %4 = OpFunction %void None %3
          %5 = OpLabel
          %8 = OpVariable %_ptr_Function_float Function
         %17 = OpVariable %_ptr_Function_float Function
         %21 = OpVariable %_ptr_Function_float Function
         %15 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_0
         %16 = OpLoad %float %15
               OpStore %8 %16
         %19 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_1
         %20 = OpLoad %float %19
               OpStore %17 %20
         %23 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_2
         %24 = OpLoad %float %23
               OpStore %21 %24
         %29 = OpLoad %float %8
         %30 = OpFSub %float %float_1 %29
         %31 = OpLoad %float %17
         %32 = OpFSub %float %float_1 %31
         %33 = OpFMul %float %30 %32
         %41 = OpAccessChain %_ptr_Input_v4float %37 %int_0
         %42 = OpLoad %v4float %41
         %43 = OpVectorTimesScalar %v4float %42 %33
         %44 = OpLoad %float %8
         %45 = OpFSub %float %float_1 %44
         %46 = OpLoad %float %17
         %47 = OpFMul %float %45 %46
         %49 = OpAccessChain %_ptr_Input_v4float %37 %int_1
         %50 = OpLoad %v4float %49
         %51 = OpVectorTimesScalar %v4float %50 %47
         %52 = OpFAdd %v4float %43 %51
         %53 = OpLoad %float %8
         %54 = OpLoad %float %17
         %55 = OpFSub %float %float_1 %54
         %56 = OpFMul %float %53 %55
         %58 = OpAccessChain %_ptr_Input_v4float %37 %int_2
         %59 = OpLoad %v4float %58
         %60 = OpVectorTimesScalar %v4float %59 %56
         %61 = OpFAdd %v4float %52 %60
         %62 = OpLoad %float %8
         %63 = OpLoad %float %17
         %64 = OpFMul %float %62 %63
         %66 = OpAccessChain %_ptr_Input_v4float %37 %int_3
         %67 = OpLoad %v4float %66
         %68 = OpVectorTimesScalar %v4float %67 %64
         %69 = OpFAdd %v4float %61 %68
               OpStore %27 %69
         %72 = OpLoad %float %8
         %73 = OpFSub %float %float_1 %72
         %74 = OpLoad %float %17
         %75 = OpFSub %float %float_1 %74
         %76 = OpFMul %float %73 %75
         %80 = OpAccessChain %_ptr_Input_float %79 %int_0
         %81 = OpLoad %float %80
         %82 = OpFMul %float %76 %81
         %83 = OpLoad %float %8
         %84 = OpFSub %float %float_1 %83
         %85 = OpLoad %float %17
         %86 = OpFMul %float %84 %85
         %87 = OpAccessChain %_ptr_Input_float %79 %int_1
         %88 = OpLoad %float %87
         %89 = OpFMul %float %86 %88
         %90 = OpFAdd %float %82 %89
         %91 = OpLoad %float %8
         %92 = OpLoad %float %17
         %93 = OpFSub %float %float_1 %92
         %94 = OpFMul %float %91 %93
         %95 = OpAccessChain %_ptr_Input_float %79 %int_2
         %96 = OpLoad %float %95
         %97 = OpFMul %float %94 %96
         %98 = OpFAdd %float %90 %97
         %99 = OpLoad %float %8
        %100 = OpLoad %float %17
        %101 = OpFMul %float %99 %100
        %102 = OpAccessChain %_ptr_Input_float %79 %int_3
        %103 = OpLoad %float %102
        %104 = OpFMul %float %101 %103
        %105 = OpFAdd %float %98 %104
               OpStore %71 %105
        %109 = OpLoad %float %8
        %110 = OpFSub %float %float_1 %109
        %111 = OpLoad %float %17
        %112 = OpFSub %float %float_1 %111
        %113 = OpFMul %float %110 %112
        %118 = OpAccessChain %_ptr_Input_v2float %116 %int_0
        %119 = OpLoad %v2float %118
        %120 = OpVectorTimesScalar %v2float %119 %113
        %121 = OpLoad %float %8
        %122 = OpFSub %float %float_1 %121
        %123 = OpLoad %float %17
        %124 = OpFMul %float %122 %123
        %125 = OpAccessChain %_ptr_Input_v2float %116 %int_1
        %126 = OpLoad %v2float %125
        %127 = OpVectorTimesScalar %v2float %126 %124
        %128 = OpFAdd %v2float %120 %127
        %129 = OpLoad %float %8
        %130 = OpLoad %float %17
        %131 = OpFSub %float %float_1 %130
        %132 = OpFMul %float %129 %131
        %133 = OpAccessChain %_ptr_Input_v2float %116 %int_2
        %134 = OpLoad %v2float %133
        %135 = OpVectorTimesScalar %v2float %134 %132
        %136 = OpFAdd %v2float %128 %135
        %137 = OpLoad %float %8
        %138 = OpLoad %float %17
        %139 = OpFMul %float %137 %138
        %140 = OpAccessChain %_ptr_Input_v2float %116 %int_3
        %141 = OpLoad %v2float %140
        %142 = OpVectorTimesScalar %v2float %141 %139
        %143 = OpFAdd %v2float %136 %142
               OpStore %108 %143
        %146 = OpLoad %float %8
        %147 = OpFSub %float %float_1 %146
        %148 = OpLoad %float %17
        %149 = OpFSub %float %float_1 %148
        %150 = OpFMul %float %147 %149
        %154 = OpAccessChain %_ptr_Input_v3float %153 %int_0
        %155 = OpLoad %v3float %154
        %156 = OpVectorTimesScalar %v3float %155 %150
        %157 = OpLoad %float %8
        %158 = OpFSub %float %float_1 %157
        %159 = OpLoad %float %17
        %160 = OpFMul %float %158 %159
        %161 = OpAccessChain %_ptr_Input_v3float %153 %int_1
        %162 = OpLoad %v3float %161
        %163 = OpVectorTimesScalar %v3float %162 %160
        %164 = OpFAdd %v3float %156 %163
        %165 = OpLoad %float %8
        %166 = OpLoad %float %17
        %167 = OpFSub %float %float_1 %166
        %168 = OpFMul %float %165 %167
        %169 = OpAccessChain %_ptr_Input_v3float %153 %int_2
        %170 = OpLoad %v3float %169
        %171 = OpVectorTimesScalar %v3float %170 %168
        %172 = OpFAdd %v3float %164 %171
        %173 = OpLoad %float %8
        %174 = OpLoad %float %17
        %175 = OpFMul %float %173 %174
        %176 = OpAccessChain %_ptr_Input_v3float %153 %int_3
        %177 = OpLoad %v3float %176
        %178 = OpVectorTimesScalar %v3float %177 %175
        %179 = OpFAdd %v3float %172 %178
               OpStore %145 %179
        %181 = OpLoad %float %8
        %182 = OpFSub %float %float_1 %181
        %183 = OpLoad %float %17
        %184 = OpFSub %float %float_1 %183
        %185 = OpFMul %float %182 %184
        %187 = OpAccessChain %_ptr_Input_v4float %186 %int_0
        %188 = OpLoad %v4float %187
        %189 = OpVectorTimesScalar %v4float %188 %185
        %190 = OpLoad %float %8
        %191 = OpFSub %float %float_1 %190
        %192 = OpLoad %float %17
        %193 = OpFMul %float %191 %192
        %194 = OpAccessChain %_ptr_Input_v4float %186 %int_1
        %195 = OpLoad %v4float %194
        %196 = OpVectorTimesScalar %v4float %195 %193
        %197 = OpFAdd %v4float %189 %196
        %198 = OpLoad %float %8
        %199 = OpLoad %float %17
        %200 = OpFSub %float %float_1 %199
        %201 = OpFMul %float %198 %200
        %202 = OpAccessChain %_ptr_Input_v4float %186 %int_2
        %203 = OpLoad %v4float %202
        %204 = OpVectorTimesScalar %v4float %203 %201
        %205 = OpFAdd %v4float %197 %204
        %206 = OpLoad %float %8
        %207 = OpLoad %float %17
        %208 = OpFMul %float %206 %207
        %209 = OpAccessChain %_ptr_Input_v4float %186 %int_3
        %210 = OpLoad %v4float %209
        %211 = OpVectorTimesScalar %v4float %210 %208
        %212 = OpFAdd %v4float %205 %211
               OpStore %180 %212
        %217 = OpLoad %float %8
        %218 = OpFSub %float %float_1 %217
        %219 = OpLoad %float %17
        %220 = OpFSub %float %float_1 %219
        %221 = OpFMul %float %218 %220
        %226 = OpAccessChain %_ptr_Input_v4float %225 %int_0 %int_0
        %227 = OpLoad %v4float %226
        %228 = OpVectorTimesScalar %v4float %227 %221
        %229 = OpLoad %float %8
        %230 = OpFSub %float %float_1 %229
        %231 = OpLoad %float %17
        %232 = OpFMul %float %230 %231
        %233 = OpAccessChain %_ptr_Input_v4float %225 %int_1 %int_0
        %234 = OpLoad %v4float %233
        %235 = OpVectorTimesScalar %v4float %234 %232
        %236 = OpFAdd %v4float %228 %235
        %237 = OpLoad %float %8
        %238 = OpLoad %float %17
        %239 = OpFSub %float %float_1 %238
        %240 = OpFMul %float %237 %239
        %241 = OpAccessChain %_ptr_Input_v4float %225 %int_2 %int_0
        %242 = OpLoad %v4float %241
        %243 = OpVectorTimesScalar %v4float %242 %240
        %244 = OpFAdd %v4float %236 %243
        %245 = OpLoad %float %8
        %246 = OpLoad %float %17
        %247 = OpFMul %float %245 %246
        %248 = OpAccessChain %_ptr_Input_v4float %225 %int_3 %int_0
        %249 = OpLoad %v4float %248
        %250 = OpVectorTimesScalar %v4float %249 %247
        %251 = OpFAdd %v4float %244 %250
        %252 = OpAccessChain %_ptr_Output_v4float %216 %int_0
               OpStore %252 %251
               OpReturn
               OpFunctionEnd
