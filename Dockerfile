# syntax=docker/dockerfile:1

# --- Stage 1: build the static site ---
FROM python:3.12-slim AS build
WORKDIR /site
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
RUN mkdocs build --strict

# --- Stage 2: serve it with nginx ---
# The site is served under the /docs subpath (matching site_url), so it behaves the
# same whether it's proxied at easytrack.d-nn.is/docs or the container is hit directly.
FROM nginx:1.27-alpine
COPY --from=build /site/site /usr/share/nginx/html/docs
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
