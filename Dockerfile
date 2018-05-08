FROM golang:1.9-alpine

# build geth

RUN go get -v github.com/ethereumproject/go-ethereum/...
RUN go install github.com/ethereumproject/go-ethereum/cmd/...


EXPOSE 8545 30303 30303/udp

ENTRYPOINT ["geth"]