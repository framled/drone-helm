from dtzar/helm-kubectl:3.1.2

COPY init-kubectl helm /opt/framled/helm/bin/

USER root

ENV PATH="/opt/framled/helm/bin:$PATH"

ENTRYPOINT ["helm"]

CMD ["--help"]
