# config
This is to localize all config files in a single place that can be moved between computers


To use this, create symlinks between ~ and here.
For example:
~/.vimrc -> ~/Projects/config/.vimrc

~/.config/awesome -> ~/Projects/config/.config/awesome


ln example:
(from Projects/config)
ln -st ~ .zshrc

(s) soft link
(t) in this directory create links to these targets

