.PHONY : verify all

all : verify

verify :
	@ which dmenu 2> /dev/null || ( echo WARNING dmenu is not present without it the dmenu command cannot be invoked )
	@ which pdfinfo 2> /dev/null || ( echo ERROR pdfinfo is not present ; exit 1 )
	@ which xdg-open 2> /dev/null || ( echo ERROR xdg-open is not present ; exit 1 )
	@ echo SUCCESS all dependencies are present

install : doclib doclib.1 verify
	@ echo
	@ echo installing the script:
	cp doclib ${HOME}/.local/bin/
	chmod 755 ${HOME}/.local/bin/doclib
	
	@mkdir -p ${HOME}/.local/man/man1
	cp doclib.1 ${HOME}/.local/man/man1/
	
	@ printf "\n\
	# this installs doclib in ~/.local/bin please make sure that \n\
	# it that directory is in your PATH. The man page is installed \n\
	# at ~/.local/man please make sure that path is in your MANPATH \n\
	# \n\
	# to install autocompletions for zsh run \n\
		cp doclib.zsh > path_to_zsh_extensions_folder \n\
		echo source path_to_zsh_extensions_folder/doclib.zsh >> ~/.zshrc \n"




