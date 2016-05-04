LIBDIR=./lib/armv7
echo "building ffmpeg armv7..."

make clean
make

# copy out the armv7 libs
mkdir -p ${LIBDIR}
cp -f ./libavcodec/libavcodec.a ${LIBDIR}/libavcodec.a
cp -f ./libavdevice/libavdevice.a ${LIBDIR}/libavdevice.a
cp -f ./libavfilter/libavfilter.a ${LIBDIR}/libavfilter.a
cp -f ./libavformat/libavformat.a ${LIBDIR}/libavformat.a
cp -f ./libavresample/libavresample.a ${LIBDIR}/libavresample.a
cp -f ./libavutil/libavutil.a ${LIBDIR}/libavutil.a
cp -f ./libpostproc/libpostproc.a ${LIBDIR}/libpostproc.a
cp -f ./libswscale/libswscale.a ${LIBDIR}/libswscale.a
cp -f ./libswresample/libswresample.a ${LIBDIR}/libswresample.a
