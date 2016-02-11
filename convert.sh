#!/bin/bash

if [[ -f cpe-aliases ]]; then
	rm -f cpe-aliases.dat cpe-aliases.dat.gz
	go run cpealt2hs.go cpe-aliases cpe-aliases.dat
	gzip -9 cpe-aliases.dat
fi

if [[ -f nmap-payloads ]]; then
	:
fi

if [[ -f nmap-service-probes ]]; then
	:
fi

if [[ -f cpe-dict.xml ]]; then
	rm -f cpe-list.dat cpe-list.dat.gz
	go run cpe2hs.go cpe-dict.xml cpe-list.dat
	gzip -9 cpe-list.dat
fi

if [[ -f cve-items.xml ]]; then
	rm -f cve-list.dat cve-list.dat.gz
	go run cve2hs.go cve-items.xml cve-list.dat
	gzip -9 cve-list.dat
fi