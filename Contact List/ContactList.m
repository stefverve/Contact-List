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

- (void)show:(int)index {
    if (self.contacts.count > index) {
        NSLog(@"\nName: %@\nEmail: %@", [self.contacts[index] name], [self.contacts[index] email]);
    } else {
        NSLog(@"\nNot a valid index");
    }
}

- (void)find:(NSString *)searchString {
    int i = 0;
    for (Contact *item in self.contacts) {
        if ([item.name containsString:searchString] || [item.email containsString:searchString]){
            [self show:i];
        }
        i++;
    }
}

@end
