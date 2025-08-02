@pushd ..\..
@cd framework\external\KTX-Software
@git fetch origin 'refs/tags/*:refs/tags/*'
@popd
@mkdir solution
@pushd solution

REM use VS17
cmake.exe -A x64 --fresh -G "Visual Studio 15 2017" ..
cmake.exe --build . --config Debug

REM remove release cmake.exe --build . --config Release
@popd
