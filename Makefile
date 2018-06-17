.PHONY: build
build:
	go get -u github.com/golang/dep/cmd/dep
	dep ensure
	mkdir -p build
	gox -os="darwin linux windows" -arch="amd64"
	mkdir -p build
	mv waiter_darwin_amd64 build/waiter_osx
	mv waiter_linux_amd64 build/waiter
	mv waiter_windows_amd64.exe build/waiter.exe