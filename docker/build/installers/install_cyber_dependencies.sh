#!/usr/bin/env bash

###############################################################################
# Copyright 2020 The Apollo Authors. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
###############################################################################

# Fail on first error.
set -e

cd "$(dirname "${BASH_SOURCE[0]}")"

apt-get -y update && \
    apt-get -y install \
    libpocofoundation50 \
    libpoco-dev \
    ncurses-dev \
    uuid-dev \
    libboost-all-dev \
    libxml2-dev

python3 -m pip install --no-cache-dir grpcio-tools
pip2 install --no-cache-dir grpcio-tools

# cyber_visualizer
# -lGL && #include <GL/gl.h>
apt-get -y update && \
    apt-get -y install \
    libconsole-bridge-dev \
    mesa-common-dev \
    libglvnd-dev

# clean up
apt-get clean && \
    rm -rf /var/lib/apt/lists/*
