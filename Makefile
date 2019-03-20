
commit:
	@ bash a.sh

update:
	date | tee repos/now

clean:
	rm -rf repos

init: clean
	mkdir -p repos
	cd repos && git init && git commit --allow-empty -m "init"
