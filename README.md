# Homebrew Tap (Private)

我的私有 Homebrew Tap，用于管理个人使用的 CLI 工具和 macOS 应用。

> 仅支持 Apple Silicon (M 系列芯片) Mac。

---

## 使用方式

### 添加 Tap

```bash
# 如果是公开仓库
brew tap zhaopengme/tap

# 如果是私有仓库（需要 SSH 认证）
brew tap zhaopengme/tap git@github.com:zhaopengme/homebrew-tap.git
```

### 安装软件

```bash
# 安装 Formula（CLI 工具）
brew install zhaopengme/tap/<formula-name>

# 安装 Cask（GUI 应用）
brew install --cask zhaopengme/tap/<cask-name>
```

### 更新

```bash
brew update
brew upgrade
```

---

## 目录结构

```text
.
├── Formula/          # CLI 工具（Homebrew Formula）
│   └── example.rb
├── Casks/            # GUI 应用（Homebrew Cask）
│   └── example.rb
└── README.md
```

---

## 包含的软件

### Formula（CLI 工具）

| 名称 | 描述 | 安装命令 |
|------|------|----------|
| cce | Claude Config Environment - 管理多个 Claude API 提供商 | `brew install zhaopengme/tap/cce` |

### Casks（GUI 应用）

| 名称 | 描述 | 安装命令 |
|------|------|----------|
| beyond-compare | 文件和文件夹比较工具 | `brew install --cask zhaopengme/tap/beyond-compare` |
| 360chrome | 360 安全浏览器 | `brew install --cask zhaopengme/tap/360chrome` |

---

## 添加新软件

### 添加 Formula（CLI 工具）

在 `Formula/` 下创建 `<name>.rb`：

```ruby
class ExampleTool < Formula
  desc "工具描述"
  homepage "https://example.com"
  version "1.0.0"
  
  url "https://example.com/releases/download/v1.0.0/example-tool-darwin-arm64.tar.gz"
  sha256 "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"

  def install
    bin.install "example-tool"
  end

  test do
    system "#{bin}/example-tool", "--version"
  end
end
```

### 添加 Cask（GUI 应用）

在 `Casks/` 下创建 `<name>.rb`：

```ruby
cask "example-app" do
  version "1.0.0"
  sha256 "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"

  url "https://example.com/releases/download/v1.0.0/ExampleApp.dmg"
  name "Example App"
  desc "应用描述"
  homepage "https://example.com"

  app "Example App.app"
end
```

### 计算 sha256

```bash
shasum -a 256 /path/to/file
```

---

## 注意事项

- 本 Tap 仅支持 Apple Silicon Mac（M1/M2/M3/M4）
- 私有仓库需要配置 SSH 或 GitHub Token 认证
- 建议为每个软件填写完整的 `sha256`，避免使用 `:no_check`


```bash
# 安装 CLI 工具
brew install zhaopengme/tap/cce
brew install zhaopengme/tap/sshpass

# 安装 GUI 应用
brew install --cask zhaopengme/tap/command-x
brew install --cask zhaopengme/tap/beyond-compare
brew install --cask zhaopengme/tap/360chrome
brew install --cask zhaopengme/tap/nosqlbooster-for-mongodb
```
