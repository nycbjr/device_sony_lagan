for i in `cat proprietary-files.txt`
do
`cp ../localfiles/system/$i ../../../vendor/sony/sgp3xx-common/proprietary/$i`
done
