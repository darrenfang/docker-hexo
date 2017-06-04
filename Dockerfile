FROM node:4.8.0

MAINTAINER Darren Fang , <idarrenfang@gmail.com>

WORKDIR /root/hexo

RUN apt-get update && \
    apt-get upgrade -y && \
    yarn global add npm && \
    yarn global add cnpm && \
    yarn global add hexo-cli && \
    mkdir -p /root/hexo && \
    hexo init . && \
    yarn install && \
    yarn add hexo-generator-archive --save && \
    yarn add hexo-generator-category --save && \
    yarn add hexo-generator-index --save && \
    yarn add hexo-generator-sitemap --save && \
    yarn add hexo-generator-tag --save && \
    yarn add hexo-renderer-ejs --save && \
    yarn add hexo-renderer-marked --save && \
    yarn add hexo-renderer-stylus --save && \
    yarn add hexo-server --save && \
    yarn add hexo-deployer-git --save && \
    yarn add hexo-generator-feed --save && \
    yarn add hexo-all-minifier@0.0.14 --save && \
    rm -rf /root/hexo

CMD [ "node" ]