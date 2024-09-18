###############################################################################

# copy headers
pushd triton/python
python setup.py
popd

###############################################################################

ln -s $PWD/CMakePresets.json $PWD/triton/CMakePresets.json
ln -sf $PWD/CMakeUserPresets.json $PWD/triton/CMakeUserPresets.json

###############################################################################

# cmake --preset osx_shared
cmake --preset osx_shared_allen -S triton

cmake --build $PWD/build --target all

###############################################################################
