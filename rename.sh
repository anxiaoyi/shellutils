#! /bin/bash
#FileName: rename.sh
#Description: Rename files extension in bulk [批量修改文件后缀], 
# Usage: [rename.sh jpeg jpg], 把当前目录下面的所有以文件名*.jpeg结尾文件命名为*.jpg,注意仅在当前目录下,不会搜索子目录

files=`find . -maxdepth 1 -name "*.$1"`
for file in $files;
do
newFileName=${file%.*}.$2
mv $file $newFileName
done
