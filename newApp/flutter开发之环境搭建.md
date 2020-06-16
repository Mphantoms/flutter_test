### Windows10 下配置 Flutter 开发环境
#### 环境介绍

- window10 专业版
- jdk1.8
- flutter 1.7.8
- vscode 1.37.1
- android studio 3.5

#### 安装 JDK 1.8

- 下载地址

https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html

- 选择 windows x64

![图片](https://ducafecat.tech/2019/08/11/flutter/flutter-06-setup-windows10/2019-08-26-09-31-32.png)

注：或者直接去腾讯管家里下载

####  安装 Flutter SDK

- 下载地址

https://flutter.dev/docs/development/tools/sdk/releases?tab=windows#windows

- 解压
我放在了 c:\sdk\flutter

- 配置环境变量

```
    # Path
    C:\sdk\flutter\bin

    # FLUTTER_STORAGE_BASE_URL
    https://storage.flutter-io.cn

    # PUB_HOSTED_URL
    https://pub.flutter-io.cn
```

- 执行检查

> Flutter doctor

#### 安装 Android Studio
- 下载

https://developer.android.com/studio/

![图片](https://ducafecat.tech/2019/08/11/flutter/flutter-06-setup-windows10/2019-08-26-10-03-40.png)

- 配置 SDK 包

![tu](https://ducafecat.tech/2019/08/11/flutter/flutter-06-setup-windows10/2019-08-26-09-50-23.png)

- 配置 SDK Tools

![tu](https://ducafecat.tech/2019/08/11/flutter/flutter-06-setup-windows10/2019-08-26-09-51-19.png)

- 配置环境变量

```

# Path
C:\Users\Phantom\AppData\Local\Android\Sdk\tools

C:\Users\Phantom\AppData\Local\Android\Sdk\platform-tools

# ANDROID_HOME
C:\Users\Phantom\AppData\Local\Android\Sdk

```

- 安装 Android 证书

>flutter doctor --android-licenses  
一路按 Y

####  安装 VSCode

- 下载地址

https://code.visualstudio.com/


#### 配置 VSCode 插件

- Flutter 必装

![1](https://ducafecat.tech/2019/08/11/flutter/flutter-06-setup-windows10/2019-08-26-09-55-56.png)

- Awesome Flutter Snippets

![2](https://ducafecat.tech/2019/08/11/flutter/flutter-06-setup-windows10/2019-08-26-09-56-41.png)

- Paste JSON as Code

![3](https://ducafecat.tech/2019/08/11/flutter/flutter-06-setup-windows10/2019-08-26-09-57-36.png)

- bloc

![4](https://ducafecat.tech/2019/08/11/flutter/flutter-06-setup-windows10/2019-08-26-09-58-58.png)

#### 配置 Android 插件

- flutter

![5](https://ducafecat.tech/2019/08/11/flutter/flutter-06-setup-windows10/2019-08-26-10-00-53.png)

#### 配置 Android 模拟器

- AVD Manager打开即可