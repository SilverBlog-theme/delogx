#!/usr/bin/env bash
if [ $(basename `pwd`) != "templates" ]; then
    echo "[Error] Please do this in the templates directory!"
    exit
fi
if [ ! -d "delogx" ]; then
    git clone https://github.com/SilverBlogTheme/delogx.git --depth 1
fi
ln -sv ../delogx/static ./static/delogx
cd delogx
if [ -f "config.json" ]; then
    cp config.example.json config.json
    vim config.json
fi
