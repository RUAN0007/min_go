FROM amazonlinux@sha256:fc7c82b2ba834045bdf454ef0f9e73d6fdf01166e08671037c8ffdaa9de2cac4

RUN dnf install aws-nitro-enclaves-cli-devel-1.3.4-0.amzn2023 -y
RUN dnf install aws-nitro-enclaves-cli-1.3.4-0.amzn2023 -y

ENTRYPOINT [ "/bin/bash" ]