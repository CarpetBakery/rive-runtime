@echo off

@REM Temporary solution until I can fix the makefile
@REM TODO WINDOWS: This script will only work if we're building in release mode...
set OUT_DIR=..\..\out\release\include\generated\shaders
set SHADER_DIR=./

@REM NOTE: mkdir requires back slashes
mkdir ..\..\out\release\include\generated\shaders\d3d

fxc /I %OUT_DIR% /T rootsig_1_1 /E ROOT_SIG /Fh %OUT_DIR%/d3d/root.sig.h %SHADER_DIR%/d3d/root.sig
fxc /D VERTEX /I %OUT_DIR% /T vs_5_0 /Fh %OUT_DIR%/d3d/render_atlas.vert.h %SHADER_DIR%/d3d/render_atlas.hlsl
fxc /D VERTEX /I %OUT_DIR% /T vs_5_0 /Fh %OUT_DIR%/d3d/tessellate.vert.h %SHADER_DIR%/d3d/tessellate.hlsl
fxc /D VERTEX /I %OUT_DIR% /T vs_5_0 /Fh %OUT_DIR%/d3d/color_ramp.vert.h %SHADER_DIR%/d3d/color_ramp.hlsl
fxc /D FRAGMENT /I %OUT_DIR% /T ps_5_0 /Fh %OUT_DIR%/d3d/color_ramp.frag.h %SHADER_DIR%/d3d/color_ramp.hlsl
fxc /D FRAGMENT /I %OUT_DIR% /T ps_5_0 /Fh %OUT_DIR%/d3d/tessellate.frag.h %SHADER_DIR%/d3d/tessellate.hlsl
fxc /D FRAGMENT /D ATLAS_FEATHERED_STROKE /I %OUT_DIR% /T ps_5_0 /Fh %OUT_DIR%/d3d/render_atlas_stroke.frag.h %SHADER_DIR%/d3d/render_atlas.hlsl
fxc /D FRAGMENT /D ATLAS_FEATHERED_FILL /I %OUT_DIR% /T ps_5_0 /Fh %OUT_DIR%/d3d/render_atlas_fill.frag.h %SHADER_DIR%/d3d/render_atlas.hlsl