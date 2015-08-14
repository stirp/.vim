#README

这是我自己的vim配置文件，主要针对的是写Java代码的配置。使用的是pathogen进行插件管理，其他工具的使用原理是类似的。插件的安装是通过git进行的，所有插件都是子项目，因此更新插件时执行git submodule update或者git submodule foreach git pull 就足够了。

由于我的使用环境中没有gvim，因此没有关于gui的配置。而且由于我的使用环境比较一致，vim的功能项都支持，所以没有类似autocmd的判断，这可能在使用中并不适用所有人。

使用前需要安装JDK8,否则java的补全功能受影响。

使用了autoComplPop、supertab、taghighlight-automirror、vim-javacomplete2 、vim-snippetsn、nerdtree、tagbar、ultisnips、vim-rooter等插件。

安装方式：

	cd ~
	git clone
	git@github.com:stirp/.vim
	ln -s .vim/.vimrc .vimrc
