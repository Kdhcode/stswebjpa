# 최신 nginx 이미지
FROM nginx:latest

# nginx 기본 문서 루트는 /usr/share/nginx/html
RUN rm -rf /usr/share/nginx/html/*

# 프로젝트 정적 파일 복사
COPY project/ /usr/share/nginx/html/

EXPOSE 80

