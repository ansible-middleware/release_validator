#!/bin/bash
readonly STREAM=${1:-'upstream'}

ansible-galaxy collection install -r ${STREAM}_requirements.yml

molecule test --all
