# 说明
为了解决PI依赖的二进制文件无法在WebContainer中运行的问题，我们把它需要依赖的工具：
- https://github.com/BurntSushi/ripgrep
- https://github.com/sharkdp/fd
使用Nodejs进行了重写，虽然运行没有rust版本快，但能跑！也不赖！
