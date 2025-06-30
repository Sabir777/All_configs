# Основные настройки Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

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
[ -f "$HOME/.cargo/env" ] && source "$HOME/.cargo/env"
