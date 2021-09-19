#!/bin/sh

if [ -d "dist" ]; then
    rm -rf dist
fi

mkdir -p dist

go mod tidy

go build -ldflags="-s -w" -a -v -o TechChallenge .

cp TechChallenge dist/
cp -r assets dist/
cp conf.toml dist/

rm TechChallenge
