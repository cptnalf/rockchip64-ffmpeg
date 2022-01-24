from blakeblackshear/frigate:0.9.4-aarch64

RUN \
  useradd --uid 911 --user-group --create-home abc

COPY rootfs/ /

ENTRYPOINT [ "/init" ]
