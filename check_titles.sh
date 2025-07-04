#!/bin/bash

echo "=== 检查文件名和标题的匹配情况 ==="

# 函数：检查文件名和标题是否匹配
check_file() {
    local file="$1"
    local dir="$2"
    
    # 提取文件名（不包含.md扩展名）
    filename=$(basename "$file" .md)
    
    # 提取标题（去掉引号）
    title=$(grep '^title:' "$dir/$file" | sed 's/title: "\(.*\)"/\1/')
    
    if [ "$filename" != "$title" ]; then
        echo "❌ 不匹配："
        echo "   文件名: $filename"
        echo "   标题: $title"
        echo "   路径: $dir/$file"
        echo ""
    else
        echo "✅ 匹配: $filename"
    fi
}

echo ""
echo "--- 检查 Tech 分类 ---"
for file in /home/zikun/github/github_pages/blog/content/tech/*.md; do
    if [ "$(basename "$file")" != "_index.md" ]; then
        check_file "$(basename "$file")" "/home/zikun/github/github_pages/blog/content/tech"
    fi
done

echo ""
echo "--- 检查 Life 分类 ---"
for file in /home/zikun/github/github_pages/blog/content/life/*.md; do
    if [ "$(basename "$file")" != "_index.md" ]; then
        check_file "$(basename "$file")" "/home/zikun/github/github_pages/blog/content/life"
    fi
done

echo ""
echo "=== 检查完成 ==="
