//
//  ContactList.m
//  Contact List
//
//  Created by Stefan Verveniotis on 2016-11-01.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import "ContactList.h"
#import "Contact.h"

@implementation ContactList

- (instancetype)init {
    self = [super init];
    if (self) {
        _contacts = [NSMutableArray new];
    }
    return self;
}

- (void)print {
    int i = 0;
    for (Contact *item in self.contacts) {
        NSLog(@"\n%d: %@ (%@)", i, item.name, item.email);
        i++;
    }
}

@end
