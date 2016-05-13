docker build -t grafana/fake-data-gen . \
  && docker run -t \
  --net="bridge" \
  -e "FD_DATASOURCE=opentsdb" \
  -e "FD_PORT=8086" \
  grafana/fake-data-gen
