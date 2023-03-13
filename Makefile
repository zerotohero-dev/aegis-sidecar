#
# .-'_.---._'-.
# ||####|(__)||   Protect your secrets, protect your business.
#   \\()|##//       Secure your sensitive data with Aegis.
#    \\ |#//                    <aegis.ist>
#     .\_/.
#

VERSION=0.13.5
PACKAGE=aegis-sidecar
REPO=z2hdev/aegis-sidecar
REPO_LOCAL="localhost:5000/aegis-sidecar"

all: build bundle push

all-local: build bundle push-local

build:
	./hack/build.sh $(PACKAGE)

run:
	./hack/run.sh

bundle:
	./hack/bundle.sh $(PACKAGE) $(VERSION)

push:
	./hack/push.sh $(PACKAGE) $(VERSION) $(REPO)

push-local:
	./hack/push-local.sh $(PACKAGE) $(VERSION) $(REPO_LOCAL)

run-in-container:
	./hack/run-in-container.sh $(PACKAGE) $(VERSION)
