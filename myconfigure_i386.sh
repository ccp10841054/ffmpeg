SDKVERSION=8.4

echo "configuring ffmpeg i386..."

./configure \
    --cc=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang   \
    --as='gas-preprocessor.pl /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang'   \
    --sysroot=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator${SDKVERSION}.sdk \
	--extra-ldflags=-L/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator${SDKVERSION}.sdk/usr/lib/system \
	--target-os=darwin \
	--arch=i386 \
    --disable-yasm  \
    --disable-neon   \
    --extra-cflags='-arch i386 -miphoneos-version-min=6.0' \
    --extra-ldflags='-arch i386 -miphoneos-version-min=6.0' \
	--enable-pic \
	--enable-cross-compile \
    --enable-gpl --disable-iconv --disable-doc  \
	--disable-ffmpeg --disable-ffplay --disable-ffserver --disable-network --disable-encoders --disable-decoders --disable-muxers --disable-parsers --disable-bsfs --disable-protocols --disable-devices --disable-filters --disable-debug --enable-decoder=h264 --enable-decoder=mpeg4 --enable-decoder=mjpeg --enable-muxer=mov --enable-muxer=avi --enable-muxer=tgp --enable-protocol=file \
