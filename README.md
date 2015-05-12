## 利用运行机制添加category的属性
* runtime
* category
* block的一些内存泄漏

## 具体用法
```
// 给属性写入
-(void)setTestTest:(double)testTest
{
    objc_setAssociatedObject(self, &TestTestKey, @(testTest), OBJC_ASSOCIATION_ASSIGN);
}

//get属性值
-(double)testTest
{
    double temp = [objc_getAssociatedObject(self, &TestTestKey) doubleValue];
    return temp;
}

// 用运行时遍历类的所有属性
unsigned int count = 0;

//获得people中所有的成员变量
Ivar * ivars = class_copyIvarList([people class], &count);

//遍历所有
for (int i=0; i<count; i++) {
Ivar ivar = ivars[i];

const char * name = ivar_getName(ivar);
const char * type = ivar_getTypeEncoding(ivar);

NSLog(@"%s %s",name,type);
}

## 期待
* 如果在使用过程中遇到BUG，希望你能Issues我，谢谢（或者尝试下载最新的框架代码看看BUG修复没有）
* 如果在使用过程中发现功能不够用，希望你能Issues我，我非常想为这个框架增加更多好用的功能
* 谢谢
