FROM dtzar/helm-kubectl:3.1.2

COPY init-kubectl helm /opt/helm-kubectl/bin/

USER root

ENV PATH="/opt/helm-kubectl/bin:$PATH"
ENV KUBECONFIG="/root/.kube/config"

RUN find /opt/helm-kubectl/bin/ -type f -not -name "*.*" -exec chmod +x \{\} \;

ENTRYPOINT ["helm"]
CMD ["--help"]
