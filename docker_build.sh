docker buildx rm reproducible-builder || true
docker buildx create --use --name reproducible-builder
docker buildx build \
--no-cache \
--platform=linux/amd64 \
--build-arg BUILDKIT_CONTEXT_KEEP_GIT_DIR=0 \
--build-arg BUILDKIT_MULTI_PLATFORM=0 \
--build-arg SOURCE_DATE_EPOCH=1 \
--tag main_image:1.0 \
--output "type=docker,dest=main_image.tar,rewrite-timestamp=true" \
-f Dockerfile .