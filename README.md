# nginx-versions

A simple container to trigger something more complicated.

Make changes to this repository, add/commit/push and the following happens:

1. A new container image is built from the updated code.
2. This repository triggers a "remote dispatch" which updates the Kubernetes deployment for this container.
3. The new container image is launched within K8S within 1-2 minutes.

See the running container here: [http://nginx-versions.pods.uvarc.io/](http://nginx-versions.pods.uvarc.io/)
