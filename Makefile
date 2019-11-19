
all :

install : doclib doclib.1
	cp doclib ${HOME}/.local/bin/
	chmod 755 ${HOME}/.local/bin/doclib
	
	cp doclib.1 ${HOME}/.local/man/man1/
	
	@printf "\n\
	# this installs doclib in ~/.local/bin please make sure that \n\
	# it that directory is in your PATH. The man page is installed \n\
	# at ~/.local/man please make sure that path is in your MANPATH \n\
	# \n\
	# to install autocompletions for zsh run \n\
		cp doclib.zsh > path_to_zsh_extensions_folder \n\
		echo source path_to_zsh_extensions_folder/doclib.zsh >> ~/.zshrc \n"




