# Основные настройки Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

# Установка редактора по умолчанию
export EDITOR=vim

# Все плагины объявлены единым списком
plugins=(
  git
  zsh-vim-mode
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# Инициализация Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Дополнительные настройки для плагинов (если нужны)
ZVM_TERM="" # Для zsh-vi-mode

# Добавление rust в переменную окружения при запуске оболочки
# [ -f "$HOME/.cargo/env" ] && source "$HOME/.cargo/env"

# Для установки Node.js
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Для debugpy
export PATH="$HOME/.local/bin:$PATH"

