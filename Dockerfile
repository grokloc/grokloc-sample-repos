FROM bitnami/git:latest
WORKDIR /repos
CMD ["tail", "-f", "/dev/null"]
