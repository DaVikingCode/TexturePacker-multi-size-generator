#!/bin/sh
#!/usr/bin/env bash

DIR="$( cd "$( dirname "$0" )" && pwd )"

resolutions=(1 1.5 2 4)

for i in "${resolutions[@]}"
do
	
	if [ $i = 1.5 ]
	then
		maxSize=$(echo "2*1024" | bc)
	else
		maxSize=$(echo "$i*1024" | bc)
	fi
	
	TexturePacker --sheet "$DIR"/../bin/assets/"$i"x/assets{n}.png  --data "$DIR"/../bin/assets/"$i"x/assets{n}.xml  --scale $(echo "scale=3; $i/4" | bc) --max-size "$maxSize" --multipack --format sparrow "$DIR"/assets.tps
	echo "pngquant image(s)" "$i"x
	pngquant -f --ext .png "$DIR"/../bin/assets/"$i"x/*.png
	
done

echo "TexturePacker and pngquant tasks done."

exit 0