#!/bin/bash

set -e

# dotfiles
dotfiles=".tmux.conf \
.zshrc \
.tmux \
.zsh \
.oh-my-zsh \
"

# package dependencies
dependencies="git \
curl \
wget \
zsh \
tmux \
neovim \
"

dotfiles_dir="$HOME/.dotfiles"            # dotfiles directory
nvim_config="$HOME/.config/nvim/init.vim" # neovim config location
platform="unknown"                        # default to unknown platform

# restore backups
restore_backups() {
	echo "Restoring old dotfiles..."
	for d in $dotfiles; do
		mv "$HOME/$d.backup" "$HOME/$d"
	done
	mv "$dotfiles_dir.backup" "$dotfiles_dir"
	mv "$HOME/.config/nvim/init.vim.backup" "$nvim_config"
	echo "Done"
}

# remove dotfiles
remove_dotfiles() {
	echo "Removing dotfiles..."
	for d in $dotfiles; do
		rm -rf "${HOME:?}"/"$d"
	done
	rm -rf "$dotfiles_dir"
	rm -f "$nvim_config"
	echo "Done"
}

# remove dotfiles
remove_backups() {
	echo "Removing dotfile backups..."
	for d in $dotfiles; do
		rm -rf "${HOME:?}"/"$d.backup"
	done
	rm -rf "$dotfiles_dir.backup"
	rm -f "$nvim_config.backup"
	echo "Done"
}

# find current platform and distribution
if [ "$(uname)" = 'Linux' ]; then
	platform='Linux'
	if type lsb_release >/dev/null 2>&1; then
		distro="$(lsb_release -si)"
		distro_ver="$(lsb_release -r -s)"
	elif [ -f "/etc/arch-release" ]; then
		distro='Arch'
	fi
elif [ "$(uname)" = 'Darwin' ]; then
	platform='Mac'
fi
echo

# remove dotfiles
echo "Delete installed dotfiles? [y]es [n]o "
read -r answer
if [ "$answer" != "${answer#[Yy]}" ]; then
	remove_dotfiles
elif [ "$answer" != "${answer#[Nn]}" ]; then
	echo "Keeping dotfiles $dotfiles"
else
	echo "Invalid input"
fi
echo

# restore backups
echo "Restore backups? [y]es [n]o [r]emove"
read -r answer
if [ "$answer" != "${answer#[Yy]}" ]; then
	restore_backups
elif [ "$answer" != "${answer#[Nn]}" ]; then
	echo "Leaving backups in place"
elif [ "$answer" != "${answer#[Rr]}" ]; then
	remove_backups
else
	echo "Invalid input"
fi
echo

# remove neovim repo
if [ "$distro" = 'Ubuntu' ]; then
	if [ "$distro_ver" = "16.04" ] || [ "$distro_ver" = "18.04" ]; then
		echo "Remove Neovim Repository? [y]es [n]o"
		read -r answer
		if [ "$answer" != "${answer#[Yy]}" ]; then
			/usr/bin/sudo apt-add-repository --remove ppa:neovim-ppa/stable -y 1>/dev/null
		elif [ "$answer" != "${answer#[Nn]}" ]; then
			echo "Keeping Neovim Repo"
		fi
	else
		echo "Remove Neovim Repository? [y]es [n]o"
		read -r answer
		if [ "$answer" != "${answer#[Yy]}" ]; then
			/usr/bin/sudo apt-add-repository --remove ppa:neovim-ppa/unstable -y 1>/dev/null
		elif [ "$answer" != "${answer#[Nn]}" ]; then
			echo "Keeping Neovim Repo"
		else
			echo "Invalid input"
		fi
	fi
fi
echo

# uninstall dependencies
# ubuntu
echo "Dependencies installed: $dependencies"
if [ "$platform" = 'Linux' ]; then
	if [ "$distro" = 'Ubuntu' ]; then
		for p in $dependencies; do
			echo "Remove package $p? [y]es [n]o [a]ll"
			read -r answer
			if [ "$answer" != "${answer#[Yy]}" ]; then
				/usr/bin/sudo apt-get -qq remove -y "$p"
			elif [ "$answer" != "${answer#[Nn]}" ]; then
				echo "Keeping $p"
			elif [ "$answer" != "${answer#[Aa]}" ]; then
				for d in $dependencies; do
					/usr/bin/sudo apt-get -qq remove -y "$d"
				done
			fi
		done
		# arch
	elif [ "$distro" = 'Arch' ]; then
		for p in $dependencies; do
			echo "Remove package $p? [y]es [n]o [A]ll"
			read -r answer
			if [ "$answer" != "${answer#[Yy]}" ]; then
				/usr/bin/sudo pacman -q -Rs --noconfirm "$p" 1>/dev/null
			elif [ "$answer" != "${answer#[Nn]}" ]; then
				echo "Keeping $p"
			elif [ "$answer" != "${answer#[Aa]}" ]; then
				for d in $dependencies; do
					/usr/bin/sudo pacman -q -Rs --noconfirm "$d" 1>/dev/null
				done
			fi
		done
	fi
	# mac
elif [ $platform = 'Mac' ]; then
	for p in $dependencies; do
		echo "Remove package? [y]es [n]o [A]ll"
		read -r answer
		if [ "$answer" != "${answer#[Yy]}" ]; then
			brew uninstall "$p" 1>/dev/null
		elif [ "$answer" != "${answer#[Nn]}" ]; then
			echo "Keeping $p"
		elif [ "$answer" != "${answer#[Aa]}" ]; then
			for d in $dependencies; do
				brew remove --force "$d"
			done
			break
		fi
	done
fi
echo

# reset shell
echo "Unset Zsh as default shell? [y]es [n]o"
read -r answer
if [ "$answer" != "${answer#[Yy]}" ]; then
	echo "Setting default shell to Bash"
	chsh -s "$(which bash)"
elif [ "$answer" != "${answer#[Nn]}" ]; then
	echo "Keeping Zsh as default shell"
else
	echo "Invalid input"
fi
echo

#  zsh plugins
echo "Remove Zsh plugins? [y]es [n]o"
read -r answer
if [ "$answer" != "${answer#[Yy]}" ]; then
	rm -rf "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"
	rm -rf "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"
	rm -rf "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-history-substring-search"
	rm -rf "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-completions"
elif [ "$answer" != "${answer#[Nn]}" ]; then
	echo "Keeping Zsh plugins"
else
	echo "Invalid input"
fi
echo

# tmux package manager
echo "Remove Tmux package manager? [y]es [n]o"
read -r answer
if [ "$answer" != "${answer#[Yy]}" ]; then
	rm -rf "$HOME/.tmux/plugins/tpm"
elif [ "$answer" != "${answer#[Nn]}" ]; then
	echo "Keeping Tmux package manager"
else
	echo "Invalid input"
fi
echo

# vim-plug plugin manager
echo "Remove Vim-plug plugin manager? [y]es [n]o"
read -r answer
if [ "$answer" != "${answer#[Yy]}" ]; then
	rm -f "$HOME/.local/share/nvim/site/autoload/plug.vim"
elif [ "$answer" != "${answer#[Nn]}" ]; then
	echo "Keeping Vim-plug plugin manager"
else
	echo "Invalid input"
fi
echo

if [ -x "$(command -v nvim)" ]; then
	# reload nvim plugins
	echo "Reloading Neovim plugins..."
	nvim +PlugInstall +qa || echo "Something went wrong reloading plugins or Neovim was removed. Check init.vim for errors and try again."
	echo "Done"
	echo
fi

# remove spaceship-prompt for zsh
echo "Remove Spaceship-prompt for Zsh? [y]es [n]o"
read -r answer
if [ "$answer" != "${answer#[Yy]}" ]; then
	rm -f "$HOME/.oh-my-zsh/themes/spaceship-prompt"
	rm -f "$HOME/.oh-my-zsh/themes/spaceship.zsh-theme"
elif [ "$answer" != "${answer#[Nn]}" ]; then
	echo "Keeping Spaceship-prompt theme"
fi
echo

echo "Uninstall complete"
