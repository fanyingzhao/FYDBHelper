//
//  TempModel.h
//  FYDBHelper
//
//  Created by mac on 15/10/23.
//  Copyright (c) 2015年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface TestModel : NSObject
@property (copy ,nonatomic) NSString* testName;
@end

@interface UserModle : NSObject

@property (copy ,nonatomic) NSString* userName;
@property (copy ,nonatomic) NSString* passWd;
@property (nonatomic, strong) TestModel* testModel;
@end

@interface PeopleModle : NSObject
@property (nonatomic, copy) NSString* width;
@property (nonatomic, copy) NSString* height;
@property (nonatomic, assign) NSInteger age;
@property (nonatomic, strong) UserModle* userModel;
@end

@interface TempModel : NSObject

@property (copy ,nonatomic) NSString* name;
@property (copy ,nonatomic) NSString* address;
@property (copy ,nonatomic) NSString* phone;
@property (nonatomic, assign) CGFloat price;
@property (nonatomic, assign) double age;
@property (nonatomic, assign) BOOL sex;
@property (nonatomic, strong) PeopleModle* people;

@property (nonatomic, strong) NSMutableArray* array;

@end
