读取 Json配置的工具类



## 依赖引入

> 使用 Pod引入依赖

在 Pod中加入如下配置

~~~
pod 'LLJsonReader'
~~~



> 使用源码引入

引入所有的源码文件



## 使用规范

> 引入头文件

~~~objective-c
#import <LLJsonReader/LLJsonReader.h>
~~~

> 获取默认实例

~~~objective-c
//此实例将读取Resource目录下的app_config.json文件
LLJsonReader* reader = [LLJsonReader sharedInstance]
~~~

> 读取配置值

~~~objective-c
//读取单值
NSString* mode = [[LLJsonReader sharedInstance] stringForKey:@"mode"];

//读取多层级的值
NSString* type = [[LLJsonReader sharedInstance] stringForKeys:@"mode",@"type",nil];

~~~



## API一览

~~~objective-c
/**
 获取一个json中的 KEY 的值

 @param key  KEY
 @return  返回 VALUE
 */
-(id)valueForKey:(NSString *)key;
    
    
/**
  获取一个json中的 KEY 的值，指定返回值为string类型
 */
-(NSString*)stringForKey:(NSString*)key;


/**
获取一个json中的 KEY 的值，指定返回值为Bool类型
*/
-(BOOL)boolForKey:(NSString*)key;

/**
获取一个json中的 KEY 的值，指定返回值为int类型
*/
-(int)intForKey:(NSString*)key;

/**
获取一个json中的 KEY 的值，指定返回值为integer类型
*/
-(NSInteger)integerForKey:(NSString*)key;
    
/**
获取一个json中的 KEY 的值，指定返回值为long类型
*/
-(long)longForKey:(NSString*)key;
    
/**
 获取一个json中的 KEY 的值，指定返回值为long long类型
*/
-(long long)longLongForKey:(NSString*)key;

/**
获取一个json中的 KEY 的值，指定返回值为float类型
*/
-(float)floatForKey:(NSString*)key;
    
/**
获取一个json中的 KEY 的值，指定返回值为dicionary类型
*/
-(NSDictionary*)dictionaryForKey:(NSString*)key;

/**
获取一个json中的 多级 KEY 的值
*/
-(id)valueForKeys:(NSString *)key, ... NS_REQUIRES_NIL_TERMINATION;

/**
获取一个json中的 多级 KEY 的值，指定返回值为String类型
*/
-(NSString*)stringForKeys:(NSString*)key, ... NS_REQUIRES_NIL_TERMINATION;

/**
获取一个json中的 多级 KEY 的值，指定返回值为Bool类型
*/
-(BOOL)boolForKeys:(NSString*)key, ... NS_REQUIRES_NIL_TERMINATION;
    
/**
获取一个json中的 多级 KEY 的值，指定返回值为int类型
*/
-(int)intForKeys:(NSString*)key, ... NS_REQUIRES_NIL_TERMINATION;
    
/**
获取一个json中的 多级 KEY 的值，指定返回值为integer类型
*/
-(NSInteger)integerForKeys:(NSString*)key, ... NS_REQUIRES_NIL_TERMINATION;

/**
获取一个json中的 多级 KEY 的值，指定返回值为long类型
*/
-(long)longForKeys:(NSString*)key, ... NS_REQUIRES_NIL_TERMINATION;
    
/**
获取一个json中的 多级 KEY 的值，指定返回值为long long类型
*/
-(long long)longLongForKeys:(NSString*)key, ... NS_REQUIRES_NIL_TERMINATION;
    
/**
获取一个json中的 多级 KEY 的值，指定返回值为float类型
*/
-(float)floatForKeys:(NSString*)key, ... NS_REQUIRES_NIL_TERMINATION;
    
/**
获取一个json中的 多级 KEY 的值，指定返回值为dicionary类型
*/
-(NSDictionary*)dictionaryForKeys:(NSString*)key, ... NS_REQUIRES_NIL_TERMINATION;
~~~

