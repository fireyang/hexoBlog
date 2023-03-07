ARGS=

server2:
	docker run --rm --name=hexo -p 4000:4000 -v `pwd`:/blog fireyang/hexo hexo server
server:
	pnpm hexo server
bash:
	docker run -it --rm -v `pwd`:/blog fireyang/hexo /bin/bash

deps:
	docker run -it --rm -v `pwd`:/blog fireyang/hexo npm

static:
	docker run --rm -v `pwd`:/blog fireyang/hexo hexo g

deploy:
	docker run --rm -v `pwd`:/blog  \
		-e GIT_EMAIL="shenhuan007@gmail.com" \
		-e GIT_NAME="fireyang" \
		-v ~/.ssh:/root/.ssh \
		fireyang/hexo deploy

hexo:
	docker run --rm -v `pwd`:/blog fireyang/hexo hexo $(ARGS)

