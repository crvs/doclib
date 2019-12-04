function _doclib(){
	local curcontext="$curcontext" state line
	typeset -A opt_args
	_arguments '1: :->cmd' '2: :->name_filt'

	case $state in
	cmd)
		local -a subcmds
		subcmds=("add:<filename> add the file to the library" \
			"list: <filter> list the stored articles" \
			"view:<filter> view the pdf of the article" \
			"edit:<filter> edit the comments file of a given file and open the corresponding pdf" \
			"note:<filter> read/edit the comments file of a given file" \
			"get:<filter> copy the pdf file to the local folder with the title as name" \
			"remove:<filter> remove a file from the library" \
			"dmenu:start the dmenu interface to select a pdf file" \
			"help:display usage in less")
		_describe 'doclib' subcmds
		;;
	name_filt)
		if [ "$words[2]" = "add" ]; then
			compadd  $(ls *.pdf)
		else
			_message -r "insert filter string to narrow matches"
		fi
		;;
	esac
}
compdef _doclib doclib
