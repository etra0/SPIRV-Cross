#version 460

struct myType
{
    float data;
};

const myType _21[5] = myType[](myType(0.0), myType(1.0), myType(0.0), myType(1.0), myType(0.0));

layout(location = 0) out vec4 o_color;

void main()
{
    int _44 = int(mod(gl_FragCoord.x, 4.0));
    if (_21[_44].data > 0.0)
    {
        o_color = vec4(0.0, 1.0, 0.0, 1.0);
    }
    else
    {
        o_color = vec4(1.0, 0.0, 0.0, 1.0);
    }
}

