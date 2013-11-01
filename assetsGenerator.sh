#!/bin/sh
#!/usr/bin/env bash
DIR="$( cd "$( dirname "$0" )" && pwd )"

TexturePacker --sheet "$DIR"/../bin/assets/1x/assets.png  --data "$DIR"/../bin/assets/1x/assets.xml  --scale 0.25 --format sparrow "$DIR"/assets.tps
TexturePacker --sheet "$DIR"/../bin/assets/2x/assets.png  --data "$DIR"/../bin/assets/2x/assets.xml  --scale 0.5  --format sparrow "$DIR"/assets.tps
TexturePacker --sheet "$DIR"/../bin/assets/4x/assets.png  --data "$DIR"/../bin/assets/4x/assets.xml  --scale 1.0  --format sparrow "$DIR"/assets.tps

exit 0