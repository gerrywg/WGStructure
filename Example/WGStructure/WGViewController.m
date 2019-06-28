//
//  WGViewController.m
//  WGStructure
//
//  Created by gerrywg on 06/28/2019.
//  Copyright (c) 2019 gerrywg. All rights reserved.
//

#import "WGViewController.h"
#import <WGStructure/WGQueue.h>
#import <WGStructure/WGPriorityQueue.h>
#import "Person.h"

@interface WGViewController ()
    
@property (strong, nonatomic) NSArray *persons;
@property (strong, nonatomic) WGQueue *queue;
@property (strong, nonatomic) WGPriorityQueue *priorityQueue;
    
    
@end

@implementation WGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIButton *button1 = [[UIButton alloc]initWithFrame:CGRectMake(80, 80, 150, 30)];
    [button1 setTitle:@"QueueTest" forState:UIControlStateNormal];
    button1.titleLabel.font = [UIFont systemFontOfSize:15];
    button1.backgroundColor = [UIColor greenColor];
    
    [button1 addTarget:self action:@selector(queueTestAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button1];
    
    UIButton *button2 = [[UIButton alloc]initWithFrame:CGRectMake(80, 160, 150, 30)];
    [button2 setTitle:@"PriorityQueueTest" forState:UIControlStateNormal];
    button2.titleLabel.font = [UIFont systemFontOfSize:15];
    button2.backgroundColor = [UIColor orangeColor];
    
    [button2 addTarget:self action:@selector(priorityQueueTestAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button2];
    
    WGQueue *queue = [WGQueue new];
    
    for (int i = 0; i < self.persons.count; ++i) {
        
        Person *person = self.persons[i];
        
        [queue push:person];
        
    }
    
    self.queue = queue;
    
    
    WGPriorityQueue *priorityQueue = [[WGPriorityQueue alloc]initWithCompareBlock:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        Person *p1 = obj1;
        Person *p2 = obj2;
        
        if (p1.age < p2.age) {
            return NSOrderedAscending;
        }else if (p1.age == p2.age){
            return NSOrderedSame;
        }else {
            return NSOrderedDescending;
        }
    }];
    
    for (int i = 0; i < self.persons.count; ++i) {
        
        Person *person = self.persons[i];
        
        [priorityQueue push:person];
        
    }
    
    self.priorityQueue = priorityQueue;
    
}
    
- (NSArray *)persons {
    if (!_persons) {
        _persons = ({
            
            NSArray *names = @[@"Jack", @"Tom", @"Tim", @"Dora"];
            
            NSArray *ages = @[@12, @25, @30, @8];
            
            NSMutableArray *persons = [[NSMutableArray alloc]init];
            
            for (int i = 0; i < names.count; ++i) {
                
                Person *person = [[Person alloc]init];
                person.name = names[i];
                person.age = [ages[i] intValue];
                
                [persons addObject:person];
            }
            
            persons;
            
        });
    }
    
    return _persons;
}

- (void)queueTestAction:(id)sender {
    
    Person *frontPerson = [self.queue front];
                           
    [self printPerson:frontPerson];
    
    [self.queue pop];
    
    //frontPerson = [self.queue front];
    
    //[self printPerson:frontPerson];
    
}

- (void)printPerson:(Person *) person {
    NSLog(@"person: name: %@, age: %d", person.name, person.age);
}
    
- (void)priorityQueueTestAction:(id)sender {
    
    Person *frontPerson = [self.priorityQueue front];
    
    [self printPerson:frontPerson];
    
    [self.priorityQueue pop];
    
    //frontPerson = [self.priorityQueue front];
    
    //[self printPerson:frontPerson];
    
}
    
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
