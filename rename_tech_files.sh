#!/bin/bash

cd /home/zikun/github/github_pages/blog/content/tech

echo "=== 开始批量重命名Tech文件 ==="

# 重命名文件以匹配标题
mv "build_mincraft_server.md" "搭建一个minecraft服务器.md"
mv "build_minecraft_client.md" "如何连接到minecraft服务器.md"
mv "cloudflare-blog.md" "使用Cloudflare搭建个人静态网站.md"
mv "conda镜像配置.md" "Conda镜像配置.md"
mv "extern_expmodel.md" "外部exp模型以及平均值的梯度积分算法.md"
mv "how_load_datasets.md" "SQUAD加载方式以及一键训练.md"
mv "howtowritepaperspsenstation.md" "A Universal model improvement method for Self-verification through interpretation.md"
mv "IDS.md" "IDS-Extract:Downsizing Deep Learning Model For Question and Answering.md"
mv "install_java_17.md" "如何安装java 17.md"
mv "letswriteaandroid.md" "QT ---> Android.md"
mv "linux_common_cmd.md" "Linux常用命令记录.md"
mv "meeting.md" "cascading vs sliding windows.md"
mv "Model_compression_and_acceleration_technology.md" "Model compression and acceleration technology based on attention extraction mechanism.md"
mv "NLIsanitycheck.md" "NLI Data Sanity Check: Assessing the Effect of Data Corruption on Model Performance.md"
mv "pytorch_note.md" "pytorch常用代码.md"
mv "terminal窗口快捷键.md" "Terminal窗口快捷键.md"
mv "use_hugo_build_static_website.md" "使用Hugo在VPS上部署静态网站.md"
mv "v2ray_vps.md" "在vps上搭建v2ray.md"
mv "x-folio.md" "X Folio.md"
mv "笔记和doc.md" "我的XAI发表以及笔记.md"

echo "=== 重命名完成 ==="

# 显示最终文件列表
echo ""
echo "=== 最终文件列表 ==="
ls -la *.md | grep -v "_index"
