#!/bin/sh -ex
# for OS X 10.14+, ensure full SDK is available.
if [ "$(uname -r | cut -d. -f1)" -ge 18 ]; then
	SDK_PATH="$(xcrun --sdk macosx --show-sdk-path)"
fi

./bootstrap.sh \
	--without-libraries=python \
	--without-libraries=mpi \
	--without-libraries=fiber
