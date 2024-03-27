Simple script for zsh which gives us a more native up/down arrow behavior for the [atuin magial shell history][1] plugin with behavior similar to e.g. [zsh-history-substring-search][2]. This is an improved reimplemtation of [@Nezteb's gist][3] for the same issue.

#### Behavior
> [!NOTE]
> This assumes default keybindings

First and foremost: The script is aware of multiline buffers. So when going up or down, the script will first try to step through the lines of a multiline buffer, before going to the next history entry. 

When pressing up the shell will iteratively go through the previous atuin history and have each result directly in the command buffer / command line. Any text in the initial buffer will be used as a search query.

The down works as expected when going through the results by showing the previous result. If pressed from the initial position, atuins search widget will open.

#### Configuration
One can configure the search scope by changing the `$ATUIN_HISTORY_SEARCH_FILTER_MODE` variable. By default it limits the atuin search to the current session, but all standard options for `--filter-mode` work too.

The script also exposes the `atuin-history-up` and `atuin-history-down` widgets, which can be used in keybindings. E.g.

```
bindkey -M vicmd 'k' atuin-history-up
bindkey -M vicmd 'j' atuin-history-down
```

Otherwise feel free to change the script. E.g. one can remove the popup of the default atuin interactive window, by removing the `zle _atuin_search_widget` line in `atuin-history-down`.

[1]: https://github.com/atuinsh/atuin
[2]: https://github.com/zsh-users/zsh-history-substring-search
[3]: https://gist.github.com/Nezteb/81e8f6b78036894a28a4a40772bdda54
[4]: https://gist.github.com/tyalie/7e13cfe2ec62d99fa341a07ed12ef7c0
