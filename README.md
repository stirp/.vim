#README

这是我自己的 vim 配置文件，主要针对的是写 Java 代码的配置。使用的是 pathogen 进行插件管理，其他工具的使用原理是类似的。插件的安装是通过 git 进行的，所有插件都是子项目，因此更新插件时执行 git submodule update 或者 git submodule foreach git pull 就足够了。

由于我的使用环境中没有 gvim，因此没有关于 gui 的配置。而且由于我的使用环境比较一致，vim 的功能项都支持，所以没有类似 autocmd 的判断，这可能在使用中并不适用所有人。

使用前需要安装 JDK(8肯定可以用，以下没有试过) 和 maven,否则 Java 的补全功能受影响。

使用了 autoComplPop、supertab、taghighlight-automirror、vim-javacomplete2 、vim-snippetsn、nerdtree、tagbar、ultisnips、vim-rooter 等插件。

安装方式：

	cd ~
	git clone
	git@github.com:stirp/.vim
	ln -s .vim/.vimrc .vimrc
