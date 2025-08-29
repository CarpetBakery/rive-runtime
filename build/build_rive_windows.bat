@REM Temp script for testing
@REM TODO WINDOWS: remove this

@REM Open Developer Powershell for VS 2022 inside /renderer
@REM Add /bulid to path. In powershell this is:
@REM $Env:Path += ";[absolute path to]\build"

@REM Follow README instructions inside /renderer to build glfw:
@REM NOTE: You'll need a way to run .sh files on windows... I'm working on it
@REM pushd ../skia
@REM sh ./make_glfw.sh
@REM popd

@REM Now, run build_rive_windows.bat from inside /renderer

@REM Things should compile, but path_fiddle will fail due to not being able to copy a .html file

build_rive.bat release --toolset="msc" --with-rtti --no_rive_png --no_rive_jpeg --no_rive_webp