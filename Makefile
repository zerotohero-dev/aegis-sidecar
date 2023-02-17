#
# .-'_.---._'-.
# ||####|(__)||   Protect your secrets, protect your business.
#   \\()|##//       Secure your sensitive data with Aegis.
#    \\ |#//                  <aegis.z2h.dev>
#     .\_/.
#

VERSION=0.12.60
PACKAGE=aegis-sidecar
REPO=z2hdev/aegis-sidecar
REPO_LOCAL="localhost:5000/aegis-sidecar"

all: build bundle push

all-local: build bundle push-local

build:
	go mod vendor
	go build -o ${PACKAGE} ./cmd/main.go

run:
	go run ./cmd/main.go

bundle:
	go mod vendor
	docker build . -t ${PACKAGE}:${VERSION}

push:
	docker build . -t ${PACKAGE}:${VERSION}
	docker tag ${PACKAGE}:${VERSION} ${REPO}:${VERSION}
	docker push ${REPO}:${VERSION}

push-local:
	docker build . -t ${PACKAGE}:${VERSION}
	docker tag ${PACKAGE}:${VERSION} ${REPO_LOCAL}:${VERSION}
	docker push ${REPO_LOCAL}:${VERSION}

run-in-container:
	docker run ${PACKAGE}:${VERSION}
