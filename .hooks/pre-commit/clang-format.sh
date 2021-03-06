#!/bin/bash
# https://github.com/Xaymar/obs-stream-effects/
if ! hash clang-format 2>/dev/null; then
	echo "'clang-format' must be installed in a global environment."
	exit 1
fi

find ./io-obs -type f -name "*.h" -or -name "*.hpp" -or -name "*.c" -or -name "*.cpp" -exec clang-format -i '{}' \;
find ./io-client -type f -name "*.h" -or -name "*.hpp" -or -name "*.c" -or -name "*.cpp" -exec clang-format -i '{}' \;
find ./io-cct -type f -name "*.h" -or -name "*.hpp" -or -name "*.c" -or -name "*.cpp" -exec clang-format -i '{}' \;
