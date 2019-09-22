FROM nginx:stable-alpine
LABEL maintainer=calabash
EXPOSE 800
WORKDIR /app
COPY dist /app/dist
COPY api.conf /etc/nginx/conf.d
CMD nginx -g "daemon off;"