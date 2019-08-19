

all :

install : doclib doclib.zsh
	cp doclib ${HOME}/.local/bin/
	chmod 755 ${HOME}/.local/bin/doclib
	@printf "\n# to install autocompletions for zsh run \n \
	 cp doclib.zsh > path_to_zsh_extensions_folder \n \
	 echo source path_to_zsh_extensions_folder/doclib.zsh >> ~/.zshrc\n"



