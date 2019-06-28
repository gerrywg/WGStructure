//
//  WGQueue.m
//  WGStructure
//
//  Created by Gerry Wang on 2019/6/28.
//  Copyright © 2019 Gerry Wang. All rights reserved.
//

#import "WGQueue.h"

@interface WGQueue ()

@property (strong, nonatomic) NSMutableArray *array;

@end

@implementation WGQueue

- (instancetype)init {
    if (self = [super init]) {
        _array = [NSMutableArray array];
    }
    
    return self;
}

- (void)push: (id)elem {
    [self.array addObject:elem];
}

- (void)pop{
    if (self.array.count > 0) {
        [self.array removeObjectAtIndex:0];
    }
}

- (id)front {
    if (self.array.count > 0) {
        return [self.array firstObject];
    }
    
    return nil;
}

- (BOOL) isEmpty {
    if (self.array.count == 0) {
        return YES;
    }else {
        return NO;
    }
}

- (NSArray *)allObjects {
    return [self.array copy];
}

- (void)clear {
    
    [self.array removeAllObjects];
}

- (void)remove:(id)elem {
    [self.array removeObject:elem];
}

- (NSInteger)length {
    
    return self.array.count;
}

@end
