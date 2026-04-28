FROM ubuntu:24.04@sha256:c4a8d5503dfb2a3eb8ab5f807da5bc69a85730fb49b5cfca2330194ebcc41c7b

RUN apt-get update && apt-get install --no-install-recommends -y curl ca-certificates && \
curl -sSfl https://get.anchore.io/syft | sh -s -- -b /usr/local/bin && \
curl -sSfL https://get.anchore.io/grype | sh -s -- -b /usr/local/bin

WORKDIR /app

#COPY requirements.txt .

COPY entrypoint.sh .

RUN chmod +x entrypoint.sh

#ENTRYPOINT ["bash", "entrypoint.sh"]
ENTRYPOINT ["/app/entrypoint.sh"]
