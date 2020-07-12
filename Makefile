build:
	docker build -t rsas .

cwd = $(shell pwd)
rsas:
	docker run -p 8000:8000 -v "$(cwd):/data" rsas -c /data/default-config.xml

serve:
	docker run -v "$(cwd):/usr/share/nginx/html:ro" -p 9999:80 nginx:alpine
