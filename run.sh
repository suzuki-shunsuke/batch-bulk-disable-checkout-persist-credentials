#!/usr/bin/env bash

set -eu

org=$1

body="https://github.com/suzuki-shunsuke/batch-bulk-disable-checkout-persist-credentials/issues/1"

export GITHUB_TOKEN=$(gh auth token)

if [ "$org" = suzuki-shunsuke ]; then
	multi-gitter run ./set.sh \
		--config config.yaml \
		-U "$org" \
		-t "ci: disable actions/checkout's persist-credentials using disable-checkout-persist-credentials" \
		-b "$body" \
		--skip-forks \
		-B ci-disable-checkout-persist-credentials-1
	exit 0
fi

multi-gitter run ./set.sh \
	--config config.yaml \
	-O "$org" \
	-t "ci: disable actions/checkout's persist-credentials using disable-checkout-persist-credentials" \
	-b "$body" \
	-B ci-disable-checkout-persist-credentials-1
