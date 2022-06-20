#!/usr/bin/env bash

set -e

FM_MESSAGE=`cat <<EOF
Bumped Helm Chart Version From "${{ FIRST_MATE_OLD_VERSION }}" to "${{ FIRST_MATE_NEW_VERSION }}"

Changes committed by "${{ github.actor }}" in commit: "${{ github.event.after }}" altered the Helm Chart.
I updated the Chart.yaml file using the "$BUMP_STRATEGY" strategy.

Signed-off-by: first-mate-bot[bot] <bot@firstmate.dev>
EOF
`

export $FM_MESSAGE