if ! command -v ranger &> /dev/null
then
  # apt install ranger and related pkgs
  apt install -y ranger     # ranger 的主程序
  apt install -y caca-utils # img2txt 图片
  apt install -y highlight  # 代码高亮
  apt install -y atool　    # 存档预览
  apt install -y w3m        # html页面预览
  apt install -y libpoppler-dev   # pdf预览
  apt install -y mediainfo  # 多媒体文件预览
  apt install -y catdoc     # doc预览
  apt install -y docx2txt   # docx预览
  apt install -y xlsx2csv   # xlsx预览
  wget -P "${HOME}/.config/ranger/scope.sh" https://raw.githubusercontent.com/ranger/ranger/master/ranger/data/scope.sh
fi  
