docker run --rm \
  --platform linux/amd64 \
  -v $(pwd):/workspace \
  gcr.io/kaniko-project/executor@sha256:9e69fd4330ec887829c780f5126dd80edc663df6def362cd22e79bcdf00ac53f \
  --dockerfile=Dockerfile \
  --context=dir:///workspace \
  --destination=kaniko_enclave:latest \
  --no-push \
  --tarPath=/workspace/enclave_kaniko.tar \
  --reproducible \
  --single-snapshot