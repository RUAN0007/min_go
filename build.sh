export SOURCE_DATE_EPOCH=1
export OPENSSL_STATIC=true
export GOOS=linux
export GOARCH=amd64
export CGO_ENABLED=0
export GOSUMDB=off
export GOPROXY=off
export GOTOOLCHAIN=local
export TZ=UTC
export LC_ALL=C

rm -rf main
# Modify build flags to be more explicit about everything
go build \
    -mod=vendor \
    -a \
    -trimpath \
    -buildvcs=false \
    -ldflags="-extldflags '-static' -s -w -buildid= -X 'main.buildDate=1970-01-01'" \
    -tags netgo,osusergo \
    -gcflags="all=-trimpath=$PWD"  \
    -asmflags="all=-trimpath=$PWD" \
    -o main ./main.go && \
    touch -hcd "@${SOURCE_DATE_EPOCH}" main && \
    strip -s main 2>/dev/null || true

touch -hcd "@${SOURCE_DATE_EPOCH}" main