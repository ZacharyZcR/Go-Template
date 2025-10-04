# Makefile - 简单、有效、无废话

.PHONY: help test lint build clean fmt install-tools install-hooks

# 默认目标
help:
	@echo "可用命令："
	@echo "  make test          - 运行测试（带竞态检测）"
	@echo "  make lint          - 运行代码检查"
	@echo "  make build         - 编译项目"
	@echo "  make fmt           - 格式化代码"
	@echo "  make clean         - 清理构建产物"
	@echo "  make install-tools - 安装开发工具"
	@echo "  make install-hooks - 安装 Git Hooks"

# 运行测试（带竞态检测和覆盖率）
test:
	go test -v -race -coverprofile=coverage.out ./...
	go tool cover -func=coverage.out

# 运行代码检查
lint:
	golangci-lint run ./...

# 编译所有包
build:
	go build -v ./...

# 格式化代码
fmt:
	gofmt -s -w .
	goimports -w .

# 清理构建产物
clean:
	go clean ./...
	rm -f coverage.out

# 安装开发工具
install-tools:
	go install golang.org/x/tools/cmd/goimports@latest
	curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin

# 安装 Git Hooks
install-hooks:
	bash scripts/install-hooks.sh
