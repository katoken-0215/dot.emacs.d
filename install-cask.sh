#!/bin/bash

wget -qO- https://raw.github.com/cask/cask/master/go | python

echo 'export PATH="$HOME/.cask/bin:$PATH"' >> ~/.bashrc
