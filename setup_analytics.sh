#!/bin/bash

# Google Analytics 配置脚本
# 使用方法: ./setup_analytics.sh G-1234567890

if [ "$#" -ne 1 ]; then
    echo "使用方法: $0 <你的GA测量ID>"
    echo "例如: $0 G-1234567890"
    exit 1
fi

GA_ID="$1"

# 验证GA ID格式
if [[ ! $GA_ID =~ ^G-[A-Z0-9]+$ ]]; then
    echo "错误: 测量ID格式不正确。应该类似 G-1234567890"
    exit 1
fi

echo "设置Google Analytics测量ID为: $GA_ID"

# 备份配置文件
cp config.toml config.toml.backup.$(date +%Y%m%d_%H%M%S)

# 替换站点级别的GA ID
sed -i "s/googleAnalytics = \"G-XXXXXXXXXX\"/googleAnalytics = \"$GA_ID\"/" config.toml

# 替换MemE主题的tracking ID
sed -i "s/trackingID = \"G-XXXXXXXXXX\"/trackingID = \"$GA_ID\"/" config.toml

echo "✅ 配置完成！"
echo ""
echo "📝 已修改的配置："
echo "   - googleAnalytics = \"$GA_ID\""
echo "   - trackingID = \"$GA_ID\""
echo ""
echo "🚀 下一步："
echo "   1. 检查配置是否正确"
echo "   2. 提交并推送到GitHub"
echo "   3. 等待GitHub Pages部署完成"
echo "   4. 在Google Analytics中验证数据收集"
echo ""
echo "📊 Google Analytics仪表板: https://analytics.google.com/"
