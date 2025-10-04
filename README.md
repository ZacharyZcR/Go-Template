# Go 项目模板

生产级 Go 项目模板，内置工程化最佳实践。

## 特性

- ✅ Go 1.23
- ✅ CI/CD 自动化（lint + test + build）
- ✅ 代码质量检查（风格、复杂度、坏味道）
- ✅ Pre-commit Hooks（本地拦截）
- ✅ Dependabot 自动依赖更新
- ✅ GoReleaser 多平台发布

## 快速开始

### 1. 使用模板

```bash
# 克隆仓库
git clone https://github.com/ZacharyZcR/Go-Template.git my-project
cd my-project

# 重新初始化 Git
rm -rf .git
git init
```

### 2. 初始化项目

```bash
# 修改模块名
go mod edit -module github.com/your-username/my-project

# 安装开发工具
make install-tools

# 安装 Git Hooks（推荐）
make install-hooks
```

### 3. 替换示例代码

删除 `cmd/example/`，添加你的代码。

## 开发命令

```bash
make test          # 运行测试
make lint          # 代码检查
make build         # 编译
make fmt           # 格式化
make install-hooks # 安装 Git Hooks
```

## 质量标准

- 圈复杂度 ≤15
- 认知复杂度 ≤20
- 导出函数必须有注释
- 无重复代码

超过限制？重构它。

## CI/CD

每次 Push/PR 自动运行：lint → test → build

## 发布

打标签自动发布多平台二进制文件：

```bash
git tag v1.0.0
git push origin v1.0.0
```

支持：Linux/macOS/Windows，amd64/arm64

## 项目结构

```
.
├── cmd/                    # 应用程序入口
├── .github/workflows/      # CI/CD 配置
├── .golangci.yml          # 代码检查配置
└── Makefile               # 开发命令
```

---

**这是起点，不是终点。按需修改，保持简单。**
