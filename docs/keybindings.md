# Key bindings

## Main

|                                    |                                                                                                            |
| ---------------------------------- | ---------------------------------------------------------------------------------------------------------- |
| <kbd>Ctrl</kbd> + <kbd>a</kbd>     | send-prefix                                                                                                |
| <kbd>Ctrl</kbd> + <kbd>b</kbd>     | send-prefix                                                                                                |
| <kbd>Ctrl</kbd> + <kbd>o</kbd>     | rotate-window                                                                                              |
| <kbd>Ctrl</kbd> + <kbd>z</kbd>     | suspend-client                                                                                             |
| <kbd>Space</kbd>                   | next-layout                                                                                                |
| <kbd>!</kbd>                       | break-pane                                                                                                 |
| <kbd>#</kbd>                       | list-buffers                                                                                               |
| <kbd>\ </kbd> + <kbd>$</kbd>       | command-prompt -I #S rename-session -- '%%'                                                                |
| <kbd>%</kbd>                       | split-window -h                                                                                            |
| <kbd>&</kbd>                       | confirm-before -p kill-window #W? y/n kill-window                                                          |
| <kbd>'</kbd>                       | index select-window -t ':%%'                                                                               |
| <kbd>,</kbd>                       | command-prompt -I #W rename-window -- '%%'                                                                 |
| <kbd>-</kbd>                       | delete-buffer                                                                                              |
| <kbd>.</kbd>                       | command-prompt move-window -t '%%'                                                                         |
| <kbd>0</kbd>                       | select-window -t :=0                                                                                       |
| <kbd>1</kbd>                       | select-window -t :=1                                                                                       |
| <kbd>2</kbd>                       | select-window -t :=2                                                                                       |
| <kbd>3</kbd>                       | select-window -t :=3                                                                                       |
| <kbd>4</kbd>                       | select-window -t :=4                                                                                       |
| <kbd>5</kbd>                       | select-window -t :=5                                                                                       |
| <kbd>6</kbd>                       | select-window -t :=6                                                                                       |
| <kbd>7</kbd>                       | select-window -t :=7                                                                                       |
| <kbd>8</kbd>                       | select-window -t :=8                                                                                       |
| <kbd>9</kbd>                       | select-window -t :=9                                                                                       |
| <kbd>:</kbd>                       | command-prompt                                                                                             |
| <kbd>;</kbd>                       | last-pane                                                                                                  |
| <kbd>=</kbd>                       | choose-buffer -Z                                                                                           |
| <kbd>?</kbd>                       | list-keys                                                                                                  |
| <kbd>D</kbd>                       | choose-client -Z                                                                                           |
| <kbd>E</kbd>                       | select-layout -E                                                                                           |
| <kbd>I</kbd>                       | run-shell /Users/akj/.tmux/plugins/tpm/bindings/install_plugins                                            |
| <kbd>L</kbd>                       | switch-client -l                                                                                           |
| <kbd>M</kbd>                       | select-pane -M                                                                                             |
| <kbd>U</kbd>                       | run-shell /Users/akj/.tmux/plugins/tpm/bindings/update_plugins                                             |
| <kbd>[</kbd>                       | copy-mode                                                                                                  |
| <kbd>]</kbd>                       | paste-buffer                                                                                               |
| <kbd>Ctrl</kbd>                    | new-window                                                                                                 |
| <kbd>d</kbd>                       | detach-client                                                                                              |
| <kbd>f</kbd>                       | command-prompt find-window -- '%%'                                                                         |
| <kbd>i</kbd>                       | display-message                                                                                            |
| <kbd>l </kbd>                      | last-window                                                                                                |
| <kbd>m </kbd>                      | select-pane -m                                                                                             |
| <kbd>n</kbd>                       | next-window                                                                                                |
| <kbd>o</kbd>                       | select-pane -t :.+                                                                                         |
| <kbd>p</kbd>                       | previous-window                                                                                            |
| <kbd>q</kbd>                       | display-panes                                                                                              |
| <kbd>r</kbd>                       | refresh-client                                                                                             |
| <kbd>s</kbd>                       | choose-tree -Zs                                                                                            |
| <kbd>t</kbd>                       | clock-mode                                                                                                 |
| <kbd>w</kbd>                       | choose-tree -Zw                                                                                            |
| <kbd>x</kbd>                       | confirm-before -p kill-pane #P? y/n kill-pane                                                              |
| <kbd>z</kbd>                       | resize-pane -Z                                                                                             |
| <kbd>{</kbd>                       | swap-pane -U                                                                                               |
| <kbd>}</kbd>                       | swap-pane -D                                                                                               |
| <kbd>~</kbd>                       | show-messages                                                                                              |
| <kbd>PPage</kbd>                   | copy-mode -u                                                                                               |
| <kbd>Up</kbd>                      | select-pane -U                                                                                             |
| <kbd>Down </kbd>                   | select-pane -D                                                                                             |
| <kbd>Left</kbd>                    | select-pane -L                                                                                             |
| <kbd>Right</kbd>                   | select-pane -R                                                                                             |
| <kbd>M</kbd> + <kbd>1</kbd>        | select-layout even-horizontal                                                                              |
| <kbd>M</kbd> + <kbd>2</kbd>        | select-layout even-vertical                                                                                |
| <kbd>M</kbd> + <kbd>3</kbd>        | select-layout main-horizontal                                                                              |
| <kbd>M</kbd> + <kbd>4</kbd>        | select-layout main-vertical                                                                                |
| <kbd>M</kbd> + <kbd>5</kbd>        | select-layout tiled                                                                                        |
| <kbd>M</kbd> + <kbd>n</kbd>        | next-window -a                                                                                             |
| <kbd>M</kbd> + <kbd>o</kbd>        | rotate-window -D                                                                                           |
| <kbd>M</kbd> + <kbd>p</kbd>        | previous-window -a                                                                                         |
| <kbd>M</kbd> + <kbd>u</kbd>        | run-shell /Users/akj/.tmux/plugins/tpm/bindings/clean_plugins                                              |
| <kbd>M</kbd> + <kbd>Up</kbd>       | resize-pane -U 5                                                                                           |
| <kbd>M</kbd> + <kbd>Down</kbd>     | resize-pane -D 5                                                                                           |
| <kbd>M</kbd> + <kbd>Left</kbd>     | resize-pane -L 5                                                                                           |
| <kbd>M</kbd> + <kbd>Right</kbd>    | resize-pane -R 5                                                                                           |
| <kbd>Ctrl</kbd> + <kbd>Up</kbd>    | resize-pane -U                                                                                             |
| <kbd>Ctrl</kbd> + <kbd>Down</kbd>  | resize-pane -D                                                                                             |
| <kbd>Ctrl</kbd> + <kbd>Left</kbd>  | resize-pane -L                                                                                             |
| <kbd>Ctrl</kbd> + <kbd>Right</kbd> | resize-pane -R                                                                                             |
| MouseDown1Pane                     | select-pane -t = ; send-keys -M                                                                            |
| MouseDown1Status                   | select-window -t =                                                                                         |
| MouseDown3Pane                     | if-shell -F -t = #{mouse_any_flag} select-pane -t=; send-keys -M select-pane -mt=                          |
| MouseDrag1Pane                     | if-shell -F -t = #{mouse_any_flag} if -Ft= \#{pane_in_mode}\ \copy-mode -M\ \send-keys -M\ copy-mode -M    |
| MouseDrag1Border                   | resize-pane -M                                                                                             |
| WheelUpPane                        | if-shell -F -t = #{mouse_any_flag} send-keys -M if -Ft= \#{pane_in_mode}\ \send-keys -M\ \copy-mode -et=\| |
| WheelUpStatus                      | previous-window                                                                                            |
| WheelDownStatus                    | next-window                                                                                                |

## Copy-mode

|                                    |                                                                        |
| ---------------------------------- | ---------------------------------------------------------------------- |
| <kbd>Ctrl</kbd> + <kbd>Space</kbd> | begin-selection                                                        |
| <kbd>Ctrl</kbd> + <kbd>a</kbd>     | start-of-line                                                          |
| <kbd>Ctrl</kbd> + <kbd>b</kbd>     | cursor-left                                                            |
| <kbd>Ctrl</kbd> + <kbd>c</kbd>     | cancel                                                                 |
| <kbd>Ctrl</kbd> + <kbd>e</kbd>     | end-of-line                                                            |
| <kbd>Ctrl</kbd> + <kbd>f</kbd>     | cursor-right                                                           |
| <kbd>Ctrl</kbd> + <kbd>g </kbd>    | clear-selection                                                        |
| <kbd>Ctrl</kbd> + <kbd>k</kbd>     | copy-end-of-line                                                       |
| <kbd>Ctrl</kbd> + <kbd>n</kbd>     | cursor-down                                                            |
| <kbd>Ctrl</kbd> + <kbd>p</kbd>     | cursor-up                                                              |
| <kbd>Ctrl</kbd> + <kbd>r</kbd>     | #{pane_search_string} -p search up search-backward-incremental \%%%\|  |
| <kbd>Ctrl</kbd> + <kbd>s </kbd>    | #{pane_search_string} -p search down search-forward-incremental \%%%\| |
| <kbd>Ctrl</kbd> + <kbd>v </kbd>    | page-down                                                              |
| <kbd>Ctrl</kbd> + <kbd>w </kbd>    | copy-selection-and-cancel                                              |
| <kbd>Escape </kbd>                 | cancel                                                                 |
| <kbd>Space</kbd>                   | page-down                                                              |
| <kbd>,</kbd>                       | jump-reverse                                                           |
| <kbd>;</kbd>                       | jump-again                                                             |
| <kbd>F</kbd>                       | jump backward jump-backward \%%%\|                                     |
| <kbd>N</kbd>                       | search-reverse                                                         |
| <kbd>R</kbd>                       | rectangle-toggle                                                       |
| <kbd>T</kbd>                       | jump to backward jump-to-backward \%%%\|                               |
| <kbd>f</kbd>                       | jump forward jump-forward \%%%\|                                       |
| <kbd>g</kbd>                       | goto line goto-line \%%%\|                                             |
| <kbd>n</kbd>                       | search-again                                                           |
| <kbd>q</kbd>                       | cancel                                                                 |
| <kbd>t</kbd>                       | jump to forward jump-to-forward \%%%\|                                 |
| MouseDown1Pane                     | select-pane                                                            |
| MouseDrag1Pane                     | select-pane ; begin-selection                                          |
| MouseDragEnd1Pane                  | copy-selection-and-cancel                                              |
| WheelUpPane                        | select-pane ; -N 5 scroll-up                                           |
| WheelDownPane                      | select-pane ; -N 5 scroll-down                                         |
| DoubleClick1Pane                   | select-pane ; select-word                                              |
| TripleClick1Pane                   | select-pane ; select-line                                              |
| <kbd>Home</kbd>                    | start-of-line                                                          |
| <kbd>End</kbd>                     | end-of-line                                                            |
| <kbd>NPage</kbd>                   | page-down                                                              |
| <kbd>PPage</kbd>                   | page-up                                                                |
| <kbd>Up</kbd>                      | cursor-up                                                              |
| <kbd>Down</kbd>                    | cursor-down                                                            |
| <kbd>Left</kbd>                    | cursor-left                                                            |
| <kbd>Right</kbd>                   | cursor-right                                                           |
| <kbd>M</kbd> + <kbd>< </kbd>       | history-top                                                            |
| <kbd>M</kbd> + <kbd>></kbd>        | history-bottom                                                         |
| <kbd>M</kbd> + <kbd>R</kbd>        | top-line                                                               |
| <kbd>M</kbd> + <kbd>b</kbd>        | previous-word                                                          |
| <kbd>M</kbd> + <kbd>f</kbd>        | next-word-end                                                          |
| <kbd>M</kbd> + <kbd>m</kbd>        | back-to-indentation                                                    |
| <kbd>M</kbd> + <kbd>r</kbd>        | middle-line                                                            |
| <kbd>M</kbd> + <kbd>v</kbd>        | page-up                                                                |
| <kbd>M</kbd> + <kbd>w</kbd>        | copy-selection-and-cancel                                              |
| <kbd>M</kbd> + <kbd>{</kbd>        | previous-paragraph                                                     |
| <kbd>M</kbd> + <kbd>}</kbd>        | next-paragraph                                                         |
| <kbd>M</kbd> + <kbd>Up</kbd>       | halfpage-up                                                            |
| <kbd>M</kbd> + <kbd>Down</kbd>     | halfpage-down                                                          |
| <kbd>Ctrl</kbd> + <kbd>Up</kbd>    | scroll-up                                                              |
| <kbd>Ctrl</kbd> + <kbd>Down</kbd>  | scroll-down                                                            |

## Copy-mode Vi

|                                   |                                          |
| --------------------------------- | ---------------------------------------- |
| <kbd>Ctrl</kbd> + <kbd>b</kbd>    | page-up                                  |
| <kbd>Ctrl</kbd> + <kbd>c</kbd>    | cancel                                   |
| <kbd>Ctrl</kbd> + <kbd>d</kbd>    | halfpage-down                            |
| <kbd>Ctrl</kbd> + <kbd>e</kbd>    | scroll-down                              |
| <kbd>Ctrl</kbd> + <kbd>f</kbd>    | page-down                                |
| <kbd>Ctrl</kbd> + <kbd>h</kbd>    | cursor-left                              |
| <kbd>Ctrl</kbd> + <kbd>j</kbd>    | copy-selection-and-cancel                |
| <kbd>Enter</kbd>                  | copy-selection-and-cancel                |
| <kbd>Ctrl</kbd> + <kbd>u</kbd>    | halfpage-up                              |
| <kbd>Ctrl</kbd> + <kbd>v</kbd>    | rectangle-toggle                         |
| <kbd>Ctrl</kbd> + <kbd>y</kbd>    | scroll-up                                |
| <kbd>Escape</kbd>                 | clear-selection                          |
| <kbd>Space</kbd>                  | begin-selection                          |
| <kbd>/</kbd>                      | search down search-forward \%%%\|        |
| <kbd>0</kbd>                      | start-of-line                            |
| <kbd>:</kbd>                      | goto line goto-line \%%%\|               |
| <kbd>;</kbd>                      | jump-again                               |
| <kbd>?</kbd>                      | search up search-backward \%%%\|         |
| <kbd>A</kbd>                      | append-selection-and-cancel              |
| <kbd>B</kbd>                      | previous-space                           |
| <kbd>D</kbd>                      | copy-end-of-line                         |
| <kbd>E</kbd>                      | next-space-end                           |
| <kbd>F</kbd>                      | jump backward jump-backward \%%%\|       |
| <kbd>G</kbd>                      | history-bottom                           |
| <kbd>H</kbd>                      | top-line                                 |
| <kbd>J</kbd>                      | scroll-down                              |
| <kbd>K</kbd>                      | scroll-up                                |
| <kbd>L</kbd>                      | bottom-line                              |
| <kbd>M</kbd>                      | middle-line                              |
| <kbd>N</kbd>                      | search-reverse                           |
| <kbd>T</kbd>                      | jump to backward jump-to-backward \%%%\| |
| <kbd>V</kbd>                      | select-line                              |
| <kbd>W</kbd>                      | next-space                               |
| <kbd>^</kbd>                      | back-to-indentation                      |
| <kbd>b</kbd>                      | previous-word                            |
| <kbd>e</kbd>                      | next-word-end                            |
| <kbd>f</kbd>                      | jump forward jump-forward \%%%\|         |
| <kbd>g</kbd>                      | history-top                              |
| <kbd>h</kbd>                      | cursor-left                              |
| <kbd>j</kbd>                      | cursor-down                              |
| <kbd>k</kbd>                      | cursor-up                                |
| <kbd>l</kbd>                      | cursor-right                             |
| <kbd>n</kbd>                      | search-again                             |
| <kbd>o</kbd>                      | other-end                                |
| <kbd>q</kbd>                      | cancel                                   |
| <kbd>t</kbd>                      | jump to forward jump-to-forward \%%%\|   |
| <kbd>v</kbd>                      | rectangle-toggle                         |
| <kbd>w</kbd>                      | next-word                                |
| <kbd>{</kbd>                      | previous-paragraph                       |
| <kbd>}</kbd>                      | next-paragraph                           |
| MouseDown1Pane                    | select-pane                              |
| MouseDrag1Pane                    | select-pane ; begin-selection            |
| MouseDragEnd1Pane                 | copy-selection-and-cancel                |
| WheelUpPane                       | select-pane ; -N 5 scroll-up             |
| WheelDownPane                     | select-pane ; -N 5 scroll-down           |
| DoubleClick1Pane                  | select-pane ; select-word                |
| TripleClick1Pane                  | select-pane ; select-line                |
| <kbd>BSpace</kbd>                 | cursor-left                              |
| <kbd>NPage</kbd>                  | page-down                                |
| <kbd>PPage</kbd>                  | page-up                                  |
| <kbd>Up</kbd>                     | cursor-up                                |
| <kbd>Down</kbd>                   | cursor-down                              |
| <kbd>Left</kbd>                   | cursor-left                              |
| <kbd>Right</kbd>                  | cursor-right                             |
| <kbd>Ctrl</kbd> + <kbd>Up</kbd>   | scroll-up                                |
| <kbd>Ctrl</kbd> + <kbd>Down</kbd> | scroll-down                              |
