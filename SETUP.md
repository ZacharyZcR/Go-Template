# GitHub 仓库配置指南

本文档指导如何在 GitHub 上完成必要的配置。

## 1. 设置默认分支为 main

1. 进入仓库页面：https://github.com/ZacharyZcR/Go-Template
2. 点击 **Settings**（设置）
3. 左侧菜单点击 **Branches**（分支）
4. 在 "Default branch" 部分，点击切换按钮
5. 选择 **main** 作为默认分支
6. 点击 **Update** 确认
7. 在弹出的确认对话框中点击 **I understand, update the default branch**

完成后，可以删除旧的 master 分支：
- 回到 **Branches** 页面
- 找到 master 分支，点击删除图标

## 2. 合并 Dependabot PRs

1. 进入仓库的 **Pull requests** 页面
2. 你会看到 Dependabot 创建的 3 个 PRs（依赖更新）
3. 逐个检查并合并：
   - 点击 PR 查看详情
   - 检查 CI 是否通过（绿色勾）
   - 点击 **Merge pull request**
   - 点击 **Confirm merge**
   - 点击 **Delete branch**（删除 PR 分支）

## 3. 设置分支保护规则

1. 回到 **Settings** → **Branches**
2. 在 "Branch protection rules" 部分，点击 **Add rule**
3. 配置如下：

   **Branch name pattern:**
   ```
   main
   ```

   **勾选以下选项：**
   - ✅ Require a pull request before merging
     - ✅ Require approvals（如果是团队项目）
   - ✅ Require status checks to pass before merging
     - 搜索并添加：
       - ✅ `Lint`
       - ✅ `Test`
       - ✅ `Build`
   - ✅ Do not allow bypassing the above settings

4. 滚动到底部，点击 **Create** 保存

## 4. 设置为模板仓库

1. 回到 **Settings** 主页
2. 在 "General" 部分找到 **Template repository**
3. 勾选 ✅ **Template repository**
4. 保存

完成后，仓库页面顶部会出现绿色的 "Use this template" 按钮。

## 5. 验证配置

所有配置完成后，检查：

- [ ] 默认分支是 main
- [ ] master 分支已删除
- [ ] Dependabot PRs 已合并
- [ ] main 分支有保护规则
- [ ] 仓库顶部有 "Use this template" 按钮

---

**完成！** 现在这是一个完全配置好的 Go 项目模板仓库。
