//
//  Person.h
//  WGStructure_Example
//
//  Created by Gerry Wang on 2019/6/28.
//  Copyright © 2019 gerrywg. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
    @property (strong, nonatomic) NSString *name;
    @property (assign, nonatomic) int age;
    
@end

NS_ASSUME_NONNULL_END
