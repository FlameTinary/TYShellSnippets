#!/bin/sh

# 获取需要验证的podspec文件名称
# 获取pod库地址

# cd 到相关文件夹
# 执行本地验证命令
pod lib lint --sources='ArtPodRepo,aliyun,cocoapods' --allow-warnings --verbose --use-libraries
# 执行远程验证命令
pod spec lint --sources='ArtPodRepo,aliyun,cocoapods' --verbose --use-libraries --allow-warnings
# push到远程
pod repo push ArtPodRepo ArtCommon.podspec --use-libraries --verbose --allow-warnings
