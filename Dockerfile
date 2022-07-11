FROM golang

ADD . /go/src/spinnaker.io/demo/k8s-demo

RUN cd /go/src/spinnaker.io/demo/k8s-demo && go install

ADD ./content /content

ENTRYPOINT /go/bin/k8s-demo
