#!/bin/sh

if { ! [ -d deps/lz4 ]; } || [ -z "$(ls -A deps/lz4)" ]; then
	git clone https://github.com/lz4/lz4.git deps/lz4
	( cd deps/lz4 && git reset --hard 3d67671559be723b0912bbee2fcd2eb14783a721 )
fi

node-gyp rebuild
