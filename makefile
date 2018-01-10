server:
	docker run --rm --name=hexo -p 4000:4000 -v `pwd`:/blog fireyang/hexo hexo server

