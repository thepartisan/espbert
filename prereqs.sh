#!/bin/bash
export WORKSPACE=$(pwd)
sudo pip install future cryptography
#git submodule add https://github.com/espressif/esp-idf.git esp-idf
cd esp-idf
git submodule update --init
cd ${WORKSPACE}
export IDF_PATH=${WORKSPACE}/esp-idf
curl -o xtensa-esp32-elf-linux64.tar.gz https://dl.espressif.com/dl/xtensa-esp32-elf-linux64-1.22.0-80-g6c4433a-5.2.0.tar.gz
tar xf xtensa-esp32-elf-linux64.tar.gz

export PATH=${WORKSPACE}/xtensa-esp32-elf/bin:$PATH

#git submodule add https://github.com/MrBuddyCasino/ESP32_MP3_Decoder.git ESP32_MP3_Decoder
cd ESP32_MP3_Decoder/
git submodule update --init
cd ${WORKSPACE}
