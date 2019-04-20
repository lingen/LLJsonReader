//
//  JsonReader.m
//  AutoBuild_iOS
//
//  Created by lingen on 2019/4/20.
//  Copyright © 2019 lingen. All rights reserved.
//

#import "LLJsonReader.h"
#import "NSString+JsonReader.h"

NSString* DEFAULT_READER_CONFIG = @"app_config";

NSString* CONFIG_SUFFIX = @"json";

@interface LLJsonReader()
    
@property (nonatomic,strong) NSDictionary* dics;
    
@property (nonatomic,strong) NSString* fileName;

@end

@implementation LLJsonReader
    
+(instancetype)sharedInstance{
    static LLJsonReader *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [LLJsonReader createInstance:DEFAULT_READER_CONFIG];
    });
    return instance;
}
    
+(instancetype)createInstance:(NSString*)fileName{
    LLJsonReader* reader = [[LLJsonReader alloc] init];
    reader.fileName = fileName;
    [reader p_readJsonData];
    return reader;
}

-(void)p_readJsonData{
    NSString *jsonPath = [[NSBundle mainBundle] pathForResource:_fileName ofType:CONFIG_SUFFIX];
    NSData *data = [NSData dataWithContentsOfFile:jsonPath];
    NSError *error = nil;
    _dics = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
}

-(id)valueForKey:(NSString *)key{
    return _dics[key];
}
    
-(NSString*)stringForKey:(NSString*)key{
    return [_dics[key] stringValue];
}

-(BOOL)boolForKey:(NSString*)key{
    return [_dics[key] boolValue];
}
    
-(int)intForKey:(NSString*)key{
    return [_dics[key] intValue];
}

-(NSInteger)integerForKey:(NSString*)key{
    return [_dics[key] integerValue];
}

-(long)longForKey:(NSString*)key{
    return [_dics[key] longValue];
}
    
-(long long)longLongForKey:(NSString*)key{
    return [_dics[key] longLongValue];
}
    
-(float)floatForKey:(NSString*)key{
    return [_dics[key] floatValue];
}
    
-(NSDictionary*)dictionaryForKey:(NSString*)key{
    id value = _dics[key];
    if ([value isKindOfClass:[NSDictionary class]]) {
        return value;
    }
    return nil;
}
    
-(id)valueForKeys:(NSString *)key, ... NS_REQUIRES_NIL_TERMINATION{
    id value = nil;
    
    if (key) {
        // 取出第一个参数
        value = _dics[key];
        // 定义一个指向个数可变的参数列表指针；
        va_list args;
        // 用于存放取出的参数
        NSString *arg;
        // 初始化变量刚定义的va_list变量，这个宏的第二个参数是第一个可变参数的前一个参数，是一个固定的参数
        va_start(args, key);
        // 遍历全部参数 va_arg返回可变的参数(a_arg的第二个参数是你要返回的参数的类型)
        while ((arg = va_arg(args, NSString *))) {
            if ([value isKindOfClass:[NSDictionary class]]){
                NSDictionary* subValue = (NSDictionary*)value;
                value = subValue[arg];
            }else{
                value = nil;
            }
        }
        // 清空参数列表，并置参数指针args无效
        va_end(args);
    }
    
    return value;
}
    
-(NSString*)stringForKeys:(NSString*)key, ... NS_REQUIRES_NIL_TERMINATION{
    id value = nil;
    
    if (key) {
        // 取出第一个参数
        value = _dics[key];
        // 定义一个指向个数可变的参数列表指针；
        va_list args;
        // 用于存放取出的参数
        NSString *arg;
        // 初始化变量刚定义的va_list变量，这个宏的第二个参数是第一个可变参数的前一个参数，是一个固定的参数
        va_start(args, key);
        // 遍历全部参数 va_arg返回可变的参数(a_arg的第二个参数是你要返回的参数的类型)
        while ((arg = va_arg(args, NSString *))) {
            if ([value isKindOfClass:[NSDictionary class]]){
                NSDictionary* subValue = (NSDictionary*)value;
                value = subValue[arg];
            }else{
                value = nil;
            }
        }
        // 清空参数列表，并置参数指针args无效
        va_end(args);
    }
    
    return [value stringValue];
}
    
-(BOOL)boolForKeys:(NSString*)key, ... NS_REQUIRES_NIL_TERMINATION{
    id value = nil;
    
    if (key) {
        // 取出第一个参数
        value = _dics[key];
        // 定义一个指向个数可变的参数列表指针；
        va_list args;
        // 用于存放取出的参数
        NSString *arg;
        // 初始化变量刚定义的va_list变量，这个宏的第二个参数是第一个可变参数的前一个参数，是一个固定的参数
        va_start(args, key);
        // 遍历全部参数 va_arg返回可变的参数(a_arg的第二个参数是你要返回的参数的类型)
        while ((arg = va_arg(args, NSString *))) {
            if ([value isKindOfClass:[NSDictionary class]]){
                NSDictionary* subValue = (NSDictionary*)value;
                value = subValue[arg];
            }else{
                value = nil;
            }
        }
        // 清空参数列表，并置参数指针args无效
        va_end(args);
    }
    
    return [value boolValue];
}
    
-(int)intForKeys:(NSString*)key, ... NS_REQUIRES_NIL_TERMINATION{
    id value = nil;
    
    if (key) {
        // 取出第一个参数
        value = _dics[key];
        // 定义一个指向个数可变的参数列表指针；
        va_list args;
        // 用于存放取出的参数
        NSString *arg;
        // 初始化变量刚定义的va_list变量，这个宏的第二个参数是第一个可变参数的前一个参数，是一个固定的参数
        va_start(args, key);
        // 遍历全部参数 va_arg返回可变的参数(a_arg的第二个参数是你要返回的参数的类型)
        while ((arg = va_arg(args, NSString *))) {
            if ([value isKindOfClass:[NSDictionary class]]){
                NSDictionary* subValue = (NSDictionary*)value;
                value = subValue[arg];
            }else{
                value = nil;
            }
        }
        // 清空参数列表，并置参数指针args无效
        va_end(args);
    }
    
    return [value intValue];
}
    
-(NSInteger)integerForKeys:(NSString*)key, ... NS_REQUIRES_NIL_TERMINATION{
    id value = nil;
    
    if (key) {
        // 取出第一个参数
        value = _dics[key];
        // 定义一个指向个数可变的参数列表指针；
        va_list args;
        // 用于存放取出的参数
        NSString *arg;
        // 初始化变量刚定义的va_list变量，这个宏的第二个参数是第一个可变参数的前一个参数，是一个固定的参数
        va_start(args, key);
        // 遍历全部参数 va_arg返回可变的参数(a_arg的第二个参数是你要返回的参数的类型)
        while ((arg = va_arg(args, NSString *))) {
            if ([value isKindOfClass:[NSDictionary class]]){
                NSDictionary* subValue = (NSDictionary*)value;
                value = subValue[arg];
            }else{
                value = nil;
            }
        }
        // 清空参数列表，并置参数指针args无效
        va_end(args);
    }
    
    return [value integerValue];
}
    
-(long)longForKeys:(NSString*)key, ... NS_REQUIRES_NIL_TERMINATION{
    id value = nil;
    
    if (key) {
        // 取出第一个参数
        value = _dics[key];
        // 定义一个指向个数可变的参数列表指针；
        va_list args;
        // 用于存放取出的参数
        NSString *arg;
        // 初始化变量刚定义的va_list变量，这个宏的第二个参数是第一个可变参数的前一个参数，是一个固定的参数
        va_start(args, key);
        // 遍历全部参数 va_arg返回可变的参数(a_arg的第二个参数是你要返回的参数的类型)
        while ((arg = va_arg(args, NSString *))) {
            if ([value isKindOfClass:[NSDictionary class]]){
                NSDictionary* subValue = (NSDictionary*)value;
                value = subValue[arg];
            }else{
                value = nil;
            }
        }
        // 清空参数列表，并置参数指针args无效
        va_end(args);
    }
    return [value longValue];
}
    
-(long long)longLongForKeys:(NSString*)key, ... NS_REQUIRES_NIL_TERMINATION{
    id value = nil;
    
    if (key) {
        // 取出第一个参数
        value = _dics[key];
        // 定义一个指向个数可变的参数列表指针；
        va_list args;
        // 用于存放取出的参数
        NSString *arg;
        // 初始化变量刚定义的va_list变量，这个宏的第二个参数是第一个可变参数的前一个参数，是一个固定的参数
        va_start(args, key);
        // 遍历全部参数 va_arg返回可变的参数(a_arg的第二个参数是你要返回的参数的类型)
        while ((arg = va_arg(args, NSString *))) {
            if ([value isKindOfClass:[NSDictionary class]]){
                NSDictionary* subValue = (NSDictionary*)value;
                value = subValue[arg];
            }else{
                value = nil;
            }
        }
        // 清空参数列表，并置参数指针args无效
        va_end(args);
    }
    return [value longLongValue];
}
    
-(float)floatForKeys:(NSString*)key, ... NS_REQUIRES_NIL_TERMINATION{
    id value = nil;
    
    if (key) {
        // 取出第一个参数
        value = _dics[key];
        // 定义一个指向个数可变的参数列表指针；
        va_list args;
        // 用于存放取出的参数
        NSString *arg;
        // 初始化变量刚定义的va_list变量，这个宏的第二个参数是第一个可变参数的前一个参数，是一个固定的参数
        va_start(args, key);
        // 遍历全部参数 va_arg返回可变的参数(a_arg的第二个参数是你要返回的参数的类型)
        while ((arg = va_arg(args, NSString *))) {
            if ([value isKindOfClass:[NSDictionary class]]){
                NSDictionary* subValue = (NSDictionary*)value;
                value = subValue[arg];
            }else{
                value = nil;
            }
        }
        // 清空参数列表，并置参数指针args无效
        va_end(args);
    }
    return [value floatValue];
}
    
-(NSDictionary*)dictionaryForKeys:(NSString*)key, ... NS_REQUIRES_NIL_TERMINATION{
    id value = nil;
    
    if (key) {
        // 取出第一个参数
        value = _dics[key];
        // 定义一个指向个数可变的参数列表指针；
        va_list args;
        // 用于存放取出的参数
        NSString *arg;
        // 初始化变量刚定义的va_list变量，这个宏的第二个参数是第一个可变参数的前一个参数，是一个固定的参数
        va_start(args, key);
        // 遍历全部参数 va_arg返回可变的参数(a_arg的第二个参数是你要返回的参数的类型)
        while ((arg = va_arg(args, NSString *))) {
            if ([value isKindOfClass:[NSDictionary class]]){
                NSDictionary* subValue = (NSDictionary*)value;
                value = subValue[arg];
            }else{
                value = nil;
            }
        }
        // 清空参数列表，并置参数指针args无效
        va_end(args);
    }
    if ([value isKindOfClass:[NSDictionary class]]) {
        return value;
    }
    return nil;
}

@end
