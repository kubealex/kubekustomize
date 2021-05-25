FROM alpine as source
MAINTAINER kubealex<al.rossi87@gmail.com>
RUN apk update && apk upgrade && apk add curl bash 
RUN curl -s "https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh"  | bash
RUN install kustomize /usr/local/bin/
RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
RUN install kubectl /usr/local/bin/
CMD ["bash"]