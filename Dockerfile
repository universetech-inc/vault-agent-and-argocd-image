FROM debian:bullseye

RUN apt-get update && apt-get install curl unzip jq -y

RUN curl -LO https://releases.hashicorp.com/vault/1.13.0/vault_1.13.0_linux_amd64.zip
RUN unzip vault_1.13.0_linux_amd64.zip
RUN mv vault /usr/local/bin/

RUN curl -sSL -o argocd-darwin-amd64 https://github.com/argoproj/argo-cd/releases/download/v2.6.6/argocd-linux-amd64
RUN install -m 555 argocd-darwin-amd64 /usr/local/bin/argocd
RUN rm argocd-darwin-amd64
