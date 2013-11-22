#!/bin/sh
#!/usr/bin/env bash

DIR="$( cd "$( dirname "$0" )" && pwd )"

for i in 1 1.5 2 4
do
	TexturePacker --sheet "$DIR"/../bin/assets/"$i"x/assets.png  --data "$DIR"/../bin/assets/"$i"x/assets.xml  --scale $(echo "scale=3; $i/4" | bc) --format sparrow "$DIR"/assets.tps
	echo "pngquant image" "$i"x
	pngquant -f --ext .png "$DIR"/../bin/assets/"$i"x/assets.png
done

echo "TexturePacker and pngquant tasks done."

exit 0
