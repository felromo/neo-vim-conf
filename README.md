# My neovim config file, with a bunch of plugins managed by vim-plug

## Using the config:
1. Clone the repo into your $HOME/.config/nvim/ folder
2. When you clone the repo it will clone the vim-plug plugin inside of the autoload folder (leave it there) as well as add the required lines on init.vim (former vim.rc)
3. Open up a neovim instance and do :PlugInstall
4. Thats it you're all set, edit any specifics you'd like on vim_config and add plugins to init.vim
+ *optional* You can run :PlugUpdate to update plugins every once in a while

Extras that should have been taken care of withe vim-plug, but in case they werent:
* YCM requires python2 as your /usr/bin/env python or it wont work (you can edit that manually in the file or set your variables accordingly)
+ tern-for-vim requires you to npm install inside its directory

Enjoy!

