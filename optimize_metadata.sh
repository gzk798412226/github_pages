#!/bin/bash

# 为技术博客文章添加更详细的标签脚本

echo "开始优化技术文章的元数据..."

# 修正helloworld.md - 常用命令类文章
sed -i 's/title: "搭站常用命令"/title: "搭站常用命令"/' /home/zikun/github/github_pages/blog/content/tech/helloworld.md
sed -i 's/tags: \["技术"\]/tags: ["技术", "命令", "搭站"]/' /home/zikun/github/github_pages/blog/content/tech/helloworld.md

# 修正cloudflare-blog.md
sed -i 's/tags: \["技术"\]/tags: ["技术", "Cloudflare", "静态网站", "部署"]/' /home/zikun/github/github_pages/blog/content/tech/cloudflare-blog.md

# 修正pytorch_note.md
sed -i 's/tags: \["技术"\]/tags: ["技术", "PyTorch", "深度学习", "代码"]/' /home/zikun/github/github_pages/blog/content/tech/pytorch_note.md

echo "技术文章元数据优化完成！"
