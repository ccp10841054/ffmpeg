SDKVERSION=8.1

echo "configuring ffmpeg arm64..."

./configure \
    --cc=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang   \
    --as='gas-preprocessor.pl /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang'   \
    --sysroot=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS${SDKVERSION}.sdk \
	--extra-ldflags=-L/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS${SDKVERSION}.sdk/usr/lib/system \
	--target-os=darwin \
	--arch=arm64 \
    --enable-neon   \
    --extra-cflags='-arch arm64' \
    --extra-ldflags='-arch arm64' \
	--enable-pic \
	--enable-cross-compile \
    --enable-gpl --disable-iconv --disable-doc  \
	--disable-ffmpeg --disable-ffplay --disable-ffserver --disable-network --disable-encoders --disable-decoders --disable-muxers --disable-demuxers --disable-parsers --disable-bsfs --disable-protocols --disable-devices --disable-filters --disable-debug --enable-decoder=h264 --enable-decoder=mpeg4 --enable-decoder=mjpeg --enable-muxer=mov --enable-muxer=avi --enable-muxer=tgp --enable-protocol=file \
