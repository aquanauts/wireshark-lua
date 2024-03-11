#!/bin/bash

set -euo pipefail

WIRESHARK_PLUGIN_DIR=~/.local/lib/wireshark/plugins

mkdir -p ${WIRESHARK_PLUGIN_DIR}

ln -sf $(pwd)/Nasdaq/Nasdaq.U{q,t}* $(pwd)/Nasdaq/*Total*.lua $(pwd)/Siac/Siac.C{q,t}* $(pwd)/Nasdaq/*.Itch.*.lua $(pwd)/Nyse/*Integ*.lua ${WIRESHARK_PLUGIN_DIR}
ln -sf $(pwd)/Iex/* ${WIRESHARK_PLUGIN_DIR}
