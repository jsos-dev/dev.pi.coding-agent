# PI Agent
> for JSOS: https://jsos.dev

## 介绍
在浏览器中运行PI-Agent

PI仓库: https://github.com/earendil-works/pi

## 说明
pi基于ts编写，所以可以通过[JSOS](https://jsos.dev)平台，运行在浏览器端，但官方的源码有一些写法并不适配JSOS所使用的NodeJS版本（v22.22.3），所以`cli.sh`里有一个修复代码的操作。

`.pi/`配置目录存储在`$DATA_DIR/.pi/`中，你的登录信息/配置/插件等数据推荐都存储在这个目录，这样JSOS网页刷新了之后还能继续使用。

PI官方原版更新频繁，为了避免更新后导致现有的“补丁”失效，所以我们在`package.json`中固定了pi的版本
