# Key bindings

The following key bindings are what you would press after first sending the prefix.

For example, to enter copy mode press: <kbd>Ctrl</kbd> + <kbd>a</kbd> <kbd>[</kbd>

Key bindings can be displayed in Tmux with: <kbd>Ctrl</kbd> + <kbd>a</kbd> <kbd>?</kbd>

## Prefix

|                                |             |
| ------------------------------ | ----------- |
| <kbd>Ctrl</kbd> + <kbd>a</kbd> | send prefix |

## Main

|                                |                       |
| ------------------------------ | --------------------- |
| <kbd>Ctrl</kbd> + <kbd>z</kbd> | suspend client        |
| <kbd>!</kbd>                   | break pane            |
| <kbd>\$</kbd>                  | rename session        |
| <kbd>:</kbd>                   | command prompt        |
| <kbd>?</kbd>                   | list keys             |
| <kbd>D</kbd>                   | choose client         |
| <kbd>L</kbd>                   | switch client         |
| <kbd>[</kbd>                   | copy mode             |
| <kbd>d</kbd>                   | detach client         |
| <kbd>i</kbd>                   | display message       |
| <kbd>r</kbd>                   | refresh client        |
| <kbd>s</kbd>                   | choose tree (session) |
| <kbd>t</kbd>                   | clock mode            |
| <kbd>w</kbd>                   | choose tree (window)  |
| <kbd>~</kbd>                   | show messages         |
| <kbd>PPage</kbd>               | copy mode             |

## Layout

|                                |                               |
| ------------------------------ | ----------------------------- |
| <kbd>Space</kbd>               | next layout                   |
| <kbd>E</kbd>                   | select layout                 |
| <kbd>Meta</kbd> + <kbd>1</kbd> | select layout even horizontal |
| <kbd>Meta</kbd> + <kbd>2</kbd> | select layout even vertical   |
| <kbd>Meta</kbd> + <kbd>3</kbd> | select layout main horizontal |
| <kbd>Meta</kbd> + <kbd>4</kbd> | select layout main vertical   |
| <kbd>Meta</kbd> + <kbd>5</kbd> | select layout tiled           |

## Window

|                                |                         |
| ------------------------------ | ----------------------- |
| <kbd>&</kbd>                   | kill window             |
| <kbd>'</kbd>                   | index select window     |
| <kbd>%</kbd>                   | split window horizontal |
| <kbd>Ctrl</kbd> + <kbd>o</kbd> | rotate window           |
| <kbd>,</kbd>                   | rename window           |
| <kbd>.</kbd>                   | move window             |
| <kbd>f</kbd>                   | find window             |
| <kbd>Ctrl</kbd>                | new window              |
| <kbd>l </kbd>                  | last window             |
| <kbd>n</kbd>                   | next window             |
| <kbd>Meta</kbd> + <kbd>n</kbd> | next window             |
| <kbd>Meta</kbd> + <kbd>o</kbd> | rotate window           |
| <kbd>Meta</kbd> + <kbd>p</kbd> | previous window         |
| <kbd>p</kbd>                   | previous window         |
| <kbd>0</kbd>                   | select window 0         |
| <kbd>1</kbd>                   | select window 1         |
| <kbd>2</kbd>                   | select window 2         |
| <kbd>3</kbd>                   | select window 3         |
| <kbd>4</kbd>                   | select window 4         |
| <kbd>5</kbd>                   | select window 5         |
| <kbd>6</kbd>                   | select window 6         |
| <kbd>7</kbd>                   | select window 7         |
| <kbd>8</kbd>                   | select window 8         |
| <kbd>9</kbd>                   | select window 9         |

## Buffer

|              |               |
| ------------ | ------------- |
| <kbd>-</kbd> | delete buffer |
| <kbd>#</kbd> | list buffers  |
| <kbd>=</kbd> | choose buffer |
| <kbd>]</kbd> | paste buffer  |

## Plugins

|                                |                 |
| ------------------------------ | --------------- |
| <kbd>I</kbd>                   | install plugins |
| <kbd>U</kbd>                   | update plugins  |
| <kbd>Meta</kbd> + <kbd>u</kbd> | clean plugins   |

## Pane

|                                    |                   |
| ---------------------------------- | ----------------- |
| <kbd>;</kbd>                       | last pane         |
| <kbd>o</kbd>                       | next pane         |
| <kbd>M</kbd>                    | select pane       |
| <kbd>m </kbd>                      | mark pane         |
| <kbd>q</kbd>                       | display panes     |
| <kbd>x</kbd>                       | kill pane         |
| <kbd>z</kbd>                       | resize pane       |
| <kbd>{</kbd>                       | swap pane         |
| <kbd>}</kbd>                       | swap pane         |
| <kbd>Up</kbd>                      | select pane up    |
| <kbd>Down </kbd>                   | select pane down  |
| <kbd>Left</kbd>                    | select pane left  |
| <kbd>Right</kbd>                   | select pane right |
| <kbd>Meta</kbd> + <kbd>Up</kbd>    | resize pane up    |
| <kbd>Meta</kbd> + <kbd>Down</kbd>  | resize pane down  |
| <kbd>Meta</kbd> + <kbd>Left</kbd>  | resize pane left  |
| <kbd>Meta</kbd> + <kbd>Right</kbd> | resize pane right |
| <kbd>Ctrl</kbd> + <kbd>Up</kbd>    | resize pane up    |
| <kbd>Ctrl</kbd> + <kbd>Down</kbd>  | resize pane down  |
| <kbd>Ctrl</kbd> + <kbd>Left</kbd>  | resize pane left  |
| <kbd>Ctrl</kbd> + <kbd>Right</kbd> | resize pane right |

## Copy-mode

|                                    |                           |
| ---------------------------------- | ------------------------- |
| <kbd>Ctrl</kbd> + <kbd>Space</kbd> | begin selection           |
| <kbd>Ctrl</kbd> + <kbd>a</kbd>     | start of line             |
| <kbd>Ctrl</kbd> + <kbd>b</kbd>     | cursor left               |
| <kbd>Ctrl</kbd> + <kbd>c</kbd>     | cancel                    |
| <kbd>Ctrl</kbd> + <kbd>e</kbd>     | end of line               |
| <kbd>Ctrl</kbd> + <kbd>f</kbd>     | cursor right              |
| <kbd>Ctrl</kbd> + <kbd>g </kbd>    | clear selection           |
| <kbd>Ctrl</kbd> + <kbd>k</kbd>     | copy end of line          |
| <kbd>Ctrl</kbd> + <kbd>n</kbd>     | cursor down               |
| <kbd>Ctrl</kbd> + <kbd>p</kbd>     | cursor up                 |
| <kbd>Ctrl</kbd> + <kbd>r</kbd>     | search backward           |
| <kbd>Ctrl</kbd> + <kbd>s </kbd>    | search forward            |
| <kbd>Ctrl</kbd> + <kbd>v </kbd>    | page down                 |
| <kbd>Ctrl</kbd> + <kbd>w </kbd>    | copy selection and cancel |
| <kbd>Escape </kbd>                 | cancel                    |
| <kbd>Space</kbd>                   | page down                 |
| <kbd>,</kbd>                       | jump reverse              |
| <kbd>;</kbd>                       | jump again                |
| <kbd>F</kbd>                       | jump backward             |
| <kbd>N</kbd>                       | search reverse            |
| <kbd>R</kbd>                       | rectangle toggle          |
| <kbd>T</kbd>                       | jump to backward          |
| <kbd>f</kbd>                       | jump forward              |
| <kbd>g</kbd>                       | goto line                 |
| <kbd>n</kbd>                       | search again              |
| <kbd>q</kbd>                       | cancel                    |
| <kbd>t</kbd>                       | jump to forward           |
| <kbd>Home</kbd>                    | start of line             |
| <kbd>End</kbd>                     | end of line               |
| <kbd>NPage</kbd>                   | page down                 |
| <kbd>PPage</kbd>                   | page up                   |
| <kbd>Up</kbd>                      | cursor up                 |
| <kbd>Down</kbd>                    | cursor down               |
| <kbd>Left</kbd>                    | cursor left               |
| <kbd>Right</kbd>                   | cursor right              |
| <kbd>Meta</kbd> + <kbd>< </kbd>    | history top               |
| <kbd>Meta</kbd> + <kbd>></kbd>     | history bottom            |
| <kbd>Meta</kbd> + <kbd>R</kbd>     | top line                  |
| <kbd>Meta</kbd> + <kbd>b</kbd>     | previous word             |
| <kbd>Meta</kbd> + <kbd>f</kbd>     | next word end             |
| <kbd>Meta</kbd> + <kbd>Meta</kbd>  | back to indentation       |
| <kbd>Meta</kbd> + <kbd>r</kbd>     | middle line               |
| <kbd>Meta</kbd> + <kbd>v</kbd>     | page up                   |
| <kbd>Meta</kbd> + <kbd>w</kbd>     | copy selection and cancel |
| <kbd>Meta</kbd> + <kbd>{</kbd>     | previous paragraph        |
| <kbd>Meta</kbd> + <kbd>}</kbd>     | next paragraph            |
| <kbd>Meta</kbd> + <kbd>Up</kbd>    | halfpage up               |
| <kbd>Meta</kbd> + <kbd>Down</kbd>  | halfpage down             |
| <kbd>Ctrl</kbd> + <kbd>Up</kbd>    | scroll up                 |
| <kbd>Ctrl</kbd> + <kbd>Down</kbd>  | scroll down               |

## Copy-mode Vi

|                                   |                             |
| --------------------------------- | --------------------------- |
| <kbd>Ctrl</kbd> + <kbd>b</kbd>    | page up                     |
| <kbd>Ctrl</kbd> + <kbd>c</kbd>    | cancel                      |
| <kbd>Ctrl</kbd> + <kbd>d</kbd>    | halfpage down               |
| <kbd>Ctrl</kbd> + <kbd>e</kbd>    | scroll down                 |
| <kbd>Ctrl</kbd> + <kbd>f</kbd>    | page down                   |
| <kbd>Ctrl</kbd> + <kbd>h</kbd>    | cursor left                 |
| <kbd>Ctrl</kbd> + <kbd>j</kbd>    | copy selection and cancel   |
| <kbd>Enter</kbd>                  | copy selection and cancel   |
| <kbd>Ctrl</kbd> + <kbd>u</kbd>    | halfpage up                 |
| <kbd>Ctrl</kbd> + <kbd>v</kbd>    | rectangle toggle            |
| <kbd>Ctrl</kbd> + <kbd>y</kbd>    | scroll up                   |
| <kbd>Escape</kbd>                 | clear selection             |
| <kbd>Space</kbd>                  | begin selection             |
| <kbd>/</kbd>                      | search down                 |
| <kbd>0</kbd>                      | start of line               |
| <kbd>:</kbd>                      | goto line                   |
| <kbd>;</kbd>                      | jump again                  |
| <kbd>?</kbd>                      | search up                   |
| <kbd>A</kbd>                      | append selection and cancel |
| <kbd>B</kbd>                      | previous space              |
| <kbd>D</kbd>                      | copy end of line            |
| <kbd>E</kbd>                      | next space end              |
| <kbd>F</kbd>                      | jump backward               |
| <kbd>G</kbd>                      | history bottom              |
| <kbd>H</kbd>                      | top line                    |
| <kbd>J</kbd>                      | scroll down                 |
| <kbd>K</kbd>                      | scroll up                   |
| <kbd>L</kbd>                      | bottom line                 |
| <kbd>Meta</kbd>                   | middle line                 |
| <kbd>N</kbd>                      | search reverse              |
| <kbd>T</kbd>                      | jump to backward            |
| <kbd>V</kbd>                      | select line                 |
| <kbd>W</kbd>                      | next space                  |
| <kbd>^</kbd>                      | back to indentation         |
| <kbd>b</kbd>                      | previous-word               |
| <kbd>e</kbd>                      | next word end               |
| <kbd>f</kbd>                      | jump forward                |
| <kbd>g</kbd>                      | history top                 |
| <kbd>h</kbd>                      | cursor left                 |
| <kbd>j</kbd>                      | cursor down                 |
| <kbd>k</kbd>                      | cursor up                   |
| <kbd>l</kbd>                      | cursor right                |
| <kbd>n</kbd>                      | search again                |
| <kbd>o</kbd>                      | other end                   |
| <kbd>q</kbd>                      | cancel                      |
| <kbd>t</kbd>                      | jump to forward             |
| <kbd>v</kbd>                      | rectangle toggle            |
| <kbd>w</kbd>                      | next word                   |
| <kbd>{</kbd>                      | previous paragraph          |
| <kbd>}</kbd>                      | next paragraph              |
| <kbd>BSpace</kbd>                 | cursor left                 |
| <kbd>NPage</kbd>                  | page down                   |
| <kbd>PPage</kbd>                  | page up                     |
| <kbd>Up</kbd>                     | cursor up                   |
| <kbd>Down</kbd>                   | cursor down                 |
| <kbd>Left</kbd>                   | cursor left                 |
| <kbd>Right</kbd>                  | cursor right                |
| <kbd>Ctrl</kbd> + <kbd>Up</kbd>   | scroll up                   |
| <kbd>Ctrl</kbd> + <kbd>Down</kbd> | scroll down                 |
