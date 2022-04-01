#!/bin/bash

func -SPA -R -o ./build/lottery-compiled.fif ~/ton/crypto/smartcont/stdlib.fc ./src/lottery-code.fc
cp ./build/lottery-compiled.fif ./build/lottery-compiled-for-test.fif
sed '$d' ./build/lottery-compiled-for-test.fif > ./build/test.fif
rm ./build/lottery-compiled-for-test.fif
mv ./build/test.fif ./build/lottery-compiled-for-test.fif
echo -n "}END>s constant code" >> ./build/lottery-compiled-for-test.fif