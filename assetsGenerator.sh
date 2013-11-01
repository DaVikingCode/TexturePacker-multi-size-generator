#!/bin/sh

TP="/usr/local/bin/TexturePacker"

#ensure the file exists
if [ -f "${TP}" ]; then
    echo "building..."

    ${TP} --sheet ../bin/assets/1x/assets.png  --data ../bin/assets/1x/assets.xml  --scale 0.25 --format sparrow assets.tps
    ${TP} --sheet ../bin/assets/2x/assets.png  --data ../bin/assets/2x/assets.xml  --scale 0.5  --format sparrow assets.tps
	${TP} --sheet ../bin/assets/4x/assets.png  --data ../bin/assets/4x/assets.xml  --scale 1.0  --format sparrow assets.tps

    exit 0
else
    #if here the TexturePacker command line file could not be found
    echo "TexturePacker tool not installed in ${TP}"
    echo "skipping requested operation."
    exit 1
fi

exit 0