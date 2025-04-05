docker run --rm  -it \
  --platform linux/amd64 \
  -v .:/app \
  -w /app \
  --entrypoint /bin/sh \
  golang@sha256:991aa6a6e4431f2f01e869a812934bd60fbc87fb939e4a1ea54b8494ab9d2fc6 \
  build.sh