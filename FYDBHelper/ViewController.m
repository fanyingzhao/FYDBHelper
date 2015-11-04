//
//  ViewController.m
//  FYDBHelper
//
//  Created by mac on 15/10/23.
//  Copyright (c) 2015年 mac. All rights reserved.
//

#import "ViewController.h"
#import "FYDBHelper.h"
#import "TempModel.h"
#import "NSObject+FYModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    FYDBHelper* helper = [FYDBHelper shareInstance];
    
    TestModel* test = [[TestModel alloc] init];
    test.testName = @"fasdfasdfasdfasdfasdfasdfasdfasdfasdfasdf";
    
    UserModle* tempUser = [[UserModle alloc] init];
    tempUser.userName = @"dadadad";
    tempUser.passWd = @"werqerqerq";
    tempUser.testModel = test;
    
    UserModle* tempUser2 = [[UserModle alloc] init];
    tempUser2.userName = @"fanfanfan";
    tempUser2.passWd = @"1111";
    
    PeopleModle* people1 = [[PeopleModle alloc] init];
    people1.width = @"范颖昭";
    people1.height = @"飞翔";
    people1.userModel = tempUser;
    
    UserModle* user = [[UserModle alloc] init];
    user.userName = @"fanfan";
    user.passWd = @"123456";
    
    PeopleModle* peo = [[PeopleModle alloc] init];
    peo.width = @"123";
    peo.height = @"321";
    peo.age = 20;
    peo.userModel = user;
    
    TempModel* temp = [[TempModel alloc] init];
    temp.name = @"好人";
    temp.address = @"地球";
    temp.phone = @"1231231";
    temp.price = 124.12;
    temp.people = peo;
    temp.array = @[people1,tempUser];
    
    [helper createTable:[TempModel class]];
    
    [helper deleteAllToDB:[TempModel class]];
    
    [helper insertToDB:temp];
    
//    temp.address = @"火星";
//    [helper updateToDB:temp];
    
//    [helper deleteToDB:temp];
    
    NSLog(@"res   ----    %d",[helper searchTableIsExitsData:[temp class]]);
    
    NSArray* array = [helper searchToDB:[temp class] where:nil orderby:nil asc:nil count:0];
    
    NSLog(@"%@",array);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
