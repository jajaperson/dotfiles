# Defaults for iterm2.app
#

# Specify the preferences directory
defaults write com.googlecode.iterm2 PrefsCustomFolder -string "$DOTFILES/iterm2"

# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true
