nginx 1.15.x base image using [debian-base](quay.io/kubernetes-ingress-controller/debian-base-amd64)

nginx [engine x] is an HTTP and reverse proxy server, a mail proxy server, and a generic TCP proxy server.

This custom nginx image contains:

- [ngx_devel_kit](https://github.com/simpl/ngx_devel_kit)
- [set-misc-nginx-module](https://github.com/openresty/set-misc-nginx-module)
- [headers-more-nginx-module](https://github.com/openresty/headers-more-nginx-module)
- [nginx-http-auth-digest](https://github.com/atomx/nginx-http-auth-digest)
- [ngx_http_substitutions_filter_module](https://github.com/yaoweibin/ngx_http_substitutions_filter_module)
- [nginx-opentracing](https://github.com/opentracing-contrib/nginx-opentracing)
- [opentracing-cpp](https://github.com/opentracing/opentracing-cpp)
- [zipkin-cpp-opentracing](https://github.com/rnburn/zipkin-cpp-opentracing)
- [ModSecurity-nginx](https://github.com/SpiderLabs/ModSecurity-nginx) (only supported in x86_64)
- [brotli](https://github.com/google/brotli)
- [perimiterx-nginx-plugin](https://github.com/PerimeterX/perimeterx-nginx-plugin)
- [nginx-google-oauth](https://github.com/cloudflare/nginx-google-oauth)

**How to use this image:**
This image provides a default configuration file with no backend servers.