if ! command -v ranger &> /dev/null
then
  # apt install ranger and related pkgs
  sudo apt install -y ranger     # ranger 的主程序
  sudo apt install -y caca-utils # img2txt 图片
  sudo apt install -y highlight  # 代码高亮
  sudo apt install -y atool　    # 存档预览
  sudo apt install -y w3m        # html页面预览
  sudo apt install -y libpoppler-dev   # pdf预览
  sudo apt install -y mediainfo  # 多媒体文件预览
  sudo apt install -y catdoc     # doc预览
  sudo apt install -y docx2txt   # docx预览
  sudo apt install -y xlsx2csv   # xlsx预览
  wget -P "${HOME}/.config/ranger/scope.sh" https://raw.githubusercontent.com/ranger/ranger/master/ranger/data/scope.sh
fi  
