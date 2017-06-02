local index = {
	shell = {
		{"/.bashrc", "/dots/shell/bashrc"},
		{"/.bash_profile", "/dots/shell/bash_profile"},
		{"/.aliases", "/dots/shell/aliases"},
		{"/.zshrc", "/dots/shell/zshrc"}
	},
	i3 = {
		{"/.config/i3/config", "/dots/i3/config"}
	},
	vim = {
		{"/.config/vim/vimrc", "/dots/vim/vimrc"}
	},
	tmux = {
		{"/.config/tmux/config", "/dots/tmux/config"}
	},
	x = {
		{"/.Xresources", "/dots/x/resources"}
	},
	redshift = {
		{"/.config/redshift.conf", "/dots/redshift/config"}
	}
}
return index
