## 常用命令行

### 编译
export PATH=/Applications/flutter3.24.0/bin:$PATH  改变当前命令行flutter版本路径
flutter clean
flutter pub get
cd ios
pod install
flutter pub run build_runner build  更新接口

### 编译失败
Flutter运行真机提示idevicesyslog无法打开，无法验证开发者
sudo xattr -d com.apple.quarantine /Applications/flutter3.7.0/bin/cache/artifacts/libimobiledevice/idevicesyslog
无法打开“iproxy”，因为无法验证开发者。
sudo xattr -d com.apple.quarantine /Applications/flutter3.22.0/bin/cache/artifacts/usbmuxd/iproxy

### 自动打包
make cert  
flutter build ios --release --flavor dev --target lib/dev_main.dart
fastlane dev  
flutter build apk -t lib/dev_main.dart --flavor dev
sudo gem install fastlane 安装fastlane
which flutter dart  查看当前flutter路径版本

### 添加修改配置文件
打开.bash_profile文件命令：open -e .bash_profile
创建.bash_profile文件命令：touch .bash_profile
文件中追加：export PATH=${PATH}:/Applications/flutter3.24.0
重新加载配置文件 source ~/.bash_profile
或使用 source ~/.zshrc 

### 安装 CocoaPods
1. 安装 Homebrew
Homebrew 是 macOS 的包管理工具，可以更方便地管理 Ruby 和 CocoaPods：
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
安装完成后，运行 brew --version 检查是否安装成功。

2. 检查并更新 Ruby
查看当前 Ruby 版本
ruby -v
使用 Homebrew 安装最新 Ruby
brew install ruby
更新 RubyGems
sudo gem update --system

3. 替换 RubyGems 镜像（国内用户）
默认源可能较慢，建议更换为国内镜像：
移除默认源
gem sources --remove https://rubygems.org/
添加国内镜像（如 Ruby China）
gem sources --add https://gems.ruby-china.com/
验证是否替换成功
gem sources -l
应仅显示 https://gems.ruby-china.com/36。

4. 安装 CocoaPods
方法 1：通过 Homebrew
brew install cocoapods
方法 2：通过 RubyGems
sudo gem install -n /usr/local/bin cocoapods
安装完成后，运行 pod --version 检查是否成功。

5. 初始化 CocoaPods 本地仓库
pod setup
此过程较慢（需下载 Specs 仓库），若卡住可尝试：
手动克隆 Specs 仓库
git clone https://github.com/CocoaPods/Specs.git ~/.cocoapods/repos/master
完成后更新本地库
pod repo update --verbose
若网络问题导致失败，可复制他人的 ~/.cocoapods/repos/master。

6. 验证安装
搜索一个库（如 AFNetworking）
pod search AFNetworking
若搜索失败，删除索引缓存后重试：
rm ~/Library/Caches/CocoaPods/search_index.json
pod search AFNetworking
按 q 退出搜索。
