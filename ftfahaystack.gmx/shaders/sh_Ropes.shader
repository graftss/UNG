//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.	
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float iTime;

// v1.2

#define tt iTime*2.
#define SIZE 30.

#define col1 vec3(196.,145.,97.)/255.
#define col2 vec3(255.,234.,196.)/255.

vec2 ran(vec2 uv) {
    uv *= vec2(dot(uv,vec2(127.1,311.7)),dot(uv,vec2(227.1,521.7)) );
    return 1.0-fract(tan(cos(uv)*123.6)*3533.3)*fract(tan(cos(uv)*123.6)*3533.3);
}
vec2 pt(vec2 id) {
    return sin(tt*(ran(id+.5)-0.5)+ran(id-20.1)*8.0)*0.5;
}


void main()// out vec4 fragColor, in vec2 fragCoord 
{
    vec2 uv = vec2(v_vTexcoord.x,1.-v_vTexcoord.y)-vec2(.5);
    vec2 off = iTime/vec2(50.,30.);
    uv += off;
    uv *= SIZE;
    
    vec2 gv = fract(uv)-.5;
    vec2 id = floor(uv);
    
    float mindist = 1e9;
    vec2 vorv;
    for(float i=-1.;i<=1.;i++) {
        for(float j=-1.;j<=1.;j++) { 
            vec2 offv = vec2(i,j);
            float dist = length(gv+pt(id+offv)-offv);
            if(dist<mindist){
                mindist = dist;
                vorv = (id+pt(id+offv)+offv)/SIZE-off;
            }
        }
    }
    
    vec3 col = mix(col1,col2,clamp(vorv.x*2.2+vorv.y,-1.,1.)*0.5+0.5);
    
    gl_FragColor = vec4(col,1.0);
    
    /*
    fragColor += vec4(vec3(smoothstep(0.08,0.05,gv.x+pt(id).x)),0.0);
    fragColor -= vec4(vec3(smoothstep(0.05,0.03,gv.x+pt(id).x)),0.0);
	*/
}
