//
//  WGPriorityQueue.m
//  WGStructure
//
//  Created by Gerry Wang on 2019/6/28.
//  Copyright © 2019 Gerry Wang. All rights reserved.
//

#import "WGPriorityQueue.h"

@interface WGPriorityQueue ()

@property (strong, nonatomic) NSMutableArray *array;

@property (copy, nonatomic) WGCompareBlock cmp;

@end

@implementation WGPriorityQueue

- (instancetype)init {
    if (self = [super init]) {
        _array = [NSMutableArray array];
    }
    
    return self;
}

- (instancetype)initWithCompareBlock:(WGCompareBlock)cmp {
    
    if (self = [super init]) {
        _array = [NSMutableArray array];
        _cmp = cmp;
    }
    
    return self;
}

- (void)push: (id)elem {
    [self.array addObject:elem];
    [self.array sortUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        
        return self.cmp(obj1, obj2);

    }];
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

- (NSInteger)length {
    
    return self.array.count;
}

@end
