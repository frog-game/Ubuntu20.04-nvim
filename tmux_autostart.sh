#!/bin/sh  
  
# 检查名为train的会话是否存在  
tmux has-session -t train 2>/dev/null  
  
# 如果上一条命令的退出状态码不为0，那么不存在名为train的会话，所以创建一个  
if [ $? != 0 ]; then  
   tmux new-session -d -s train  
fi  
  
# 连接到名为train的会话  
tmux attach-session -t train  
