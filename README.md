## 利用运行机制添加category的属性
* runtime
* category
* block的一些内存泄漏

## 具体用法
```
// 用运行时遍历类的所有属性
Ivar * ivars = class_copyIvarList([people class], &count);

## 提醒
* 本框架纯ARC，兼容的系统>=iOS6.0、iPhone\iPad横竖屏

## 期待
* 如果在使用过程中遇到BUG，希望你能Issues我，谢谢（或者尝试下载最新的框架代码看看BUG修复没有）
* 如果在使用过程中发现功能不够用，希望你能Issues我，我非常想为这个框架增加更多好用的功能，谢谢
