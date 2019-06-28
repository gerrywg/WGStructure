//
//  WGQueue.h
//  WGStructure
//
//  Created by Gerry Wang on 2019/6/28.
//  Copyright © 2019 Gerry Wang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WGQueue : NSObject

@property (assign, nonatomic, readonly) NSInteger length;

// 为了性能，以下函数设计为线程不安全的，调用者需用 GCD 自行管理
- (void)push:(id)elem;      // 入队
- (void)pop;                // 出队
- (nullable id)front;                // 返回队头元素，没有返回 nil
//- (id)rear;                 // 返回队尾元素
- (BOOL)isEmpty;            // 判空
- (NSArray *)allObjects;    // 返回队列中所有元素，顺序是队头到队尾
- (void)clear;              // 清空队列

- (void)remove:(id)elem;

@end

NS_ASSUME_NONNULL_END
