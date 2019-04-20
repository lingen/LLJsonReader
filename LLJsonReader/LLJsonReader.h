//
//  JsonReader.h
//  AutoBuild_iOS
//
//  Created by lingen on 2019/4/20.
//  Copyright © 2019 lingen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
 读取并解析 JSON 文件的帮助类
 */
@interface LLJsonReader : NSObject


/**
 @return 返回一个默认实例，读取的文件名中app_config.json
 */
+(instancetype)sharedInstance;


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

@end

NS_ASSUME_NONNULL_END
