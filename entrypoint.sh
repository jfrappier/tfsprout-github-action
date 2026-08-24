#!/bin/sh
set -eu

VERSION="${INPUT_VERSION:-latest}"

go install "github.com/jfrappier/tfsprout/cmd/tfsprout@${VERSION}"

exec tfsprout ${INPUT_ARGS:-./...}
