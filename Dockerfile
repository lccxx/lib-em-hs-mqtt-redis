FROM registry.cn-shanghai.aliyuncs.com/lcc/lib-em:latest

RUN set -ex && \
    apk add --no-cache --virtual .builddeps git make g++ && \
    gem install --no-rdoc em-mqtt em-hiredis && \
    gem install --no-rdoc specific_install && \
    gem specific_install https://github.com/liu-chong/evma_httpserver.git && \
    gem uninstall specific_install && \
    apk del .builddeps
