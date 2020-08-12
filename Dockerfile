FROM golang:1.15.0 as builder
LABEL name="vCenter Appliance Simulator"
LABEL description="A VMware vCenter API mock server based on govmomi"
LABEL url="https://github.com/vmware/govmomi/tree/master/vcsim"
LABEL maintainer="https://github.com/OmegaGraf/"
RUN go get -u github.com/vmware/govmomi/vcsim
RUN go get -u github.com/vmware/govmomi/govc
FROM photon:3.0
COPY --from=builder /go/bin/govc .
COPY --from=builder /go/bin/vcsim .
COPY docker-entrypoint.sh .
RUN chmod +x docker-entrypoint.sh
EXPOSE 8989
ENTRYPOINT ["./docker-entrypoint.sh"]
