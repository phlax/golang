#!/usr/bin/make -f

SHELL := /bin/bash


image:
	docker build -t phlax/golang context

hub-image:
	docker push phlax/golang
