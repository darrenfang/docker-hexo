FROM node:4.8.0

MAINTAINER darrenfang , <darrenfang@qq.com>

WORKDIR /root/hexo

RUN apt-get update \
    && npm install cnpm -g \
    && npm install hexo-cli -g \
    && mkdir -p /root/hexo \
    && hexo init . \
    && npm install \
    && npm install hexo-generator-archive --save \
    && npm install hexo-generator-category --save \
    && npm install hexo-generator-index --save \
    && npm install hexo-generator-sitemap --save \
    && npm install hexo-generator-tag --save \
    && npm install hexo-renderer-ejs --save \
    && npm install hexo-renderer-marked --save \
    && npm install hexo-renderer-stylus --save \
    && npm install hexo-server --save \
    && npm install hexo-deployer-git --save \
    && npm install hexo-generator-feed --save \
    && npm install hexo-all-minifier --save
