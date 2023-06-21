#!/bin/bash  

# 启动新的 tmux 会话  
tmux new-session -d

# 将当前窗口分割为两个垂直窗格  
tmux split-window -h

# 附加到新创建的 tmux 会话  
tmux attach-session

# 鼠标滚动屏幕开启
 tmux set mouse on
