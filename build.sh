#!/usr/bin/env bash

set -ex

rm -rf build
mkdir build

echo "1" | python3 manual_build/build.py
cp manual_build/artifacts/charybdis-left/zephyr/zmk.uf2 build/left.uf2

echo "2" | python3 manual_build/build.py
cp manual_build/artifacts/charybdis-right-standalone/zephyr/zmk.uf2 build/right.uf2

echo "7" | python3 manual_build/build.py
cp manual_build/artifacts/settings-reset/zephyr/zmk.uf2 build/reset.uf2