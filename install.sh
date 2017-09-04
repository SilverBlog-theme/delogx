#!/usr/bin/env bash
if [ $(basename `pwd`) != "templates" ]; then
    echo "[Error] Please do this in the templates directory!"
    exit
fi
if [ ! -d "delogx" ]; then
    git clone https://github.com/SilverBlogTeam/delogx.git
    cd delogx
fi
ln -s $(pwd)/static ../static/delogx
if [ -f "config.json" ]; then
    cp config.example.json config.json
    vim config.json
fi
