for i in `cat proprietary-files.txt`
do
`cp ../localfiles/system/$i ../../../vendor/sony/pollux-common/proprietary/$i`
done
