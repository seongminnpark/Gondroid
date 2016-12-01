$NDK/build/tools/make-standalone-toolchain.sh --arch=arm --platform=android-24 --install-dir=/tmp/my-android-toolchain

export PATH=/tmp/my-android-toolchain/bin:$PATH
export CC=arm-linux-androideabi-gcc
export CXX=arm-linux-androideabi-g++

export GOOS=android
export GOARCH=arm
export GOARM=7
export CGO_ENABLED=0

go build -x gondroid.go