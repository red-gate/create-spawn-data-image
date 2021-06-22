#!/bin/bash

set -e

dataImageYamlFile=$1
lifetime=$2
tags=$3
teams=$4

shift 4

if [ ! -f $dataImageYamlFile ]; then
    echo "Data image definition file not found at path '$dataImageYamlFile'"
    exit 1
fi

if [[ -z "$SPAWNCTL_ACCESS_TOKEN" ]]; then
    echo "SPAWNCTL_ACCESS_TOKEN is not set"
    exit 1
fi

tagsFlag=""
if [ "$tags" != "" ]; then
  tagsFlag="$tags"
fi

teamsFlag=""
if [ "$teams" != "" ]; then
  teamsFlag="$teams"
fi

newDiName=$(spawnctl create data-image -f "$dataImageYamlFile" --lifetime $lifetime $tagsFlag $teamsFlag $@ -q)

echo ::set-output name=dataImageName::"$newDiName"