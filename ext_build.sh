docker run --rm  -it \
  --platform linux/amd64 \
  -v .:/app \
  -w /app \
  --entrypoint /bin/sh \
  stagex/pallet-go@sha256:913ec43c2c2de2414ba4358cc07725d0acebf9f214905853d3dbcc3ce240ba64 \
  build.sh