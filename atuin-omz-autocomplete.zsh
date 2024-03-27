: ${ATUIN_AUTOCOMPLETE_FILTER_MODE='global'}

_zsh_autosuggest_strategy_atuin() {
  suggestion=( $(
    atuin search --filter-mode $ATUIN_AUTOCOMPLETE_FILTER_MODE --search-mode prefix --limit 1 --format "{command}" "$1"
  ) )
}

# use it as e.g., but import it before zsh-autosuggestions
# ZSH_AUTOSUGGEST_STRATEGY=(atuin)
