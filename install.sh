echo "ZFile-On-Replit一键搭建脚本"
echo "脚本作者：豆豆"
echo "GitHub开源地址：https://github.com/ddys001/zfile-on-replit"
nix-env -iA nixpkgs.wget
mkdir build
cd build
wget -O .replit https://github.com/ddys001/zfile-on-replit/raw/main/.replit
wget -O replit.nix https://github.com/ddys001/zfile-on-replit/raw/main/replit.nix
cd ..
wget -O main.sh https://github.com/sxbai/zfile-on-replit/raw/master/main.sh
cp -r build/.replit . && cp -r build/replit.nix .
echo "搭建完成，使用愉快！！！"
echo "点击Run按钮启动项目！！！"
rm -rf build/ && rm -rf README.md
