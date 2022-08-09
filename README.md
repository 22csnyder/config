# config
This is to localize all config files in a single place that can be moved between computers


To use this, create symlinks between ~ and here.
For example:
~/.vimrc -> ~/Projects/config/vimrc

#~/.config/awesome -> ~/Projects/config/.config/awesome



ln example:


Try 1: (actually this method didn't work)
(from Projects/config)
ln -s -T $CONFIG/zshrc ~/.zshrc

(s) soft link
(T) links to these targets


Try 2: (easier) method
(navigate to ~)
(from ~ do:)
ln -s Projects/config/.zshrc
