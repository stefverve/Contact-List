//
//  ContactList.h
//  Contact List
//
//  Created by Stefan Verveniotis on 2016-11-01.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ContactList : NSObject

@property NSMutableArray* contacts;

- (instancetype)init;
- (void)print;
- (void)show:(int)index;

@end
