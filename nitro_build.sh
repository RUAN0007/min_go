docker run \
    --rm \
    --platform linux/amd64 \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v ./enclave_kaniko.tar:/kaniko.tar \
    amazonlinxwithnitrocli:latest \
    -c 'docker load -i kaniko.tar && nitro-cli build-enclave --docker-uri kaniko_enclave:latest --output-file enclave.eif'