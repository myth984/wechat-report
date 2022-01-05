# 看看样子

  没有对各个屏幕做适配 && 请用手机看(可以用浏览器-开发者工具 模拟)

  https://myth.icu/wechat-report/

# 教程

## 导出微信聊天记录
参考如下教程
https://github.com/BlueMatthew/WechatExporter

将聊天记录生成txt
## 入库

需要自己有一个MySQL库

修改txt文件位置及两个人的昵称 执行入库代码 `python 入库.py`

默认具备一定vue/python/mysql知识

## 分词

推荐使用其他分词工具 如阿里云腾讯云 可以白嫖的分词工具

如果不行可以用 `/bin/analysis.py` 这个分词 不过需要二次人工过滤

## 生成词云

将分词结果传入这个网站

https://wordart.com/create

上传宋体

打开控制台执行
`canvas = document.querySelector("#root > div > div.app-body > div.app-body-pane.app-body-right-pane > div.app-canvas-wrapper > a > canvas");canvas.toDataURL("image/png")`

将生成的base64转为图片
http://tool.chinaz.com/tools/imgtobase

放入`/src/asset/images/cy.png`

## 写入结果

将结果手动写入`/src/data.json`

## 根据男/女朋友的手机尺寸进行微调

因为我技术不行不会适配各种移动端 如果有样式问题请根据女朋友的手机来微调css
## 生成html

`npm run build`

## 如果上面说的你都不会

你可以用你的法子, 总之把`/src/data.json` 填入就行

## 视频教程

感谢热心网友[shaneee](https://www.v2ex.com/member/shaneee) 的视频教程

https://www.bilibili.com/video/BV1QR4y1u7U8/
