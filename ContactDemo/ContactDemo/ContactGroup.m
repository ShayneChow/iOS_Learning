//
//  ContactGroup.m
//  ContactDemo
//
//  Created by choushayne on 15/1/12.
//  Copyright (c) 2015年 ShayneChow. All rights reserved.
//

#import "ContactGroup.h"

@implementation ContactGroup

-(ContactGroup *)initWithName:(NSString *)name andDetail:(NSString *)detail andContacts:(NSMutableArray *)contacts{
    if (self=[super init]) {
        self.name=name;
        self.detail=detail;
        self.contacts=contacts;
    }
    return self;
}

+(ContactGroup *)initWithName:(NSString *)name andDetail:(NSString *)detail andContacts:(NSMutableArray *)contacts{
    ContactGroup *group1=[[ContactGroup alloc]initWithName:name andDetail:detail andContacts:contacts];
    return group1;
}

@end
