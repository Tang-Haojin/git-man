# Git 安装

本节将主要介绍 Debian/Ubuntu 和 Windows 下的安装方法,
其余 Linux/Unix 版本的安装方法参见[Git](https://git-scm.com/download/linux).

> [!TIP]
> 较新版本的 macOS 应该自带了 Git, 你可以尝试在终端中键入 `git --version`.
> 如果命令输出类似于 `git version 2.xx.x`, 则说明 Git 已经安装在你的计算机上.

## Debian/Ubuntu

在基于 Debian 的 Linux 发行版中, 例如 Debian, Ubuntu, 或是 KDE Neon, 可以使用 `apt`:

```bash
$ sudo apt install git
```

### 从源代码安装

或者, 也许你会更倾向于使用最新的 Git 版本. 在这种情况下, 你需要先安装依赖:

```bash
$ sudo apt install dh-autoreconf libcurl4-gnutls-dev libexpat1-dev gettext
$ sudo apt install libz-dev libssl-dev install-info
$ sudo apt install asciidoc xmlto docbook2x
```

然后, 从[GitHub 网站](https://github.com/git/git/releases)上获取最新的源代码压缩包,
并进行解压、编译和安装:

```bash
$ tar -zxf git-2.xx.x.tar.gz
$ cd git-2.xx.x
$ make configure
$ ./configure --prefix=/usr
$ make all doc info
$ sudo make install install-doc install-html install-info
```

## Windows

在 Windows 上, 你可以在 [https://git-scm.com/download/win](https://git-scm.com/download/win) 上直接下载官方版本进行安装.

> [!TIP]
> 如果你的 Windows 上安装有 `winget` 软件包管理器, 你也可以通过 `winget install git`
> 命令来安装.
