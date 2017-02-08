local index = {
	bash = {
		{"/.bashrc", "/dots/bash/rc"},
		{"/.bash_profile", "/dots/bash/profile"},
		{"/.bash_aliases", "/dots/bash/aliases"},
	},
	zsh = {
		{"/.zshrc", "/dots/zsh/rc"}
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
