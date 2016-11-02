//
//  main.m
//  Contact List
//
//  Created by Stefan Verveniotis on 2016-11-01.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *input = @"0";
        ContactList *list = [ContactList new];
        while ([input isNotEqualTo:@"quit"]) {
            input = [[[InputCollector alloc]init] getString:(NSString *)@"\nWhat would you like to do next?\n  new    - Create a new contact list\n  list   - List all contacts in list\n  show # - Show contact matching #\n  find x - Find all contacts with names containing x\n  quit   - Quit"];
            if ([input isEqualToString:@"new"]) {
                Contact *newContact = [[Contact alloc] init];
                BOOL uniqueEmail = YES;
                newContact.name = [[[InputCollector alloc] init] getString:(NSString *)@"\nName of contact:"];
                newContact.email = [[[InputCollector alloc] init] getString:(NSString *)@"\nEmail of contact:"];
                for (Contact *item in list.contacts) {
                    if ([item.email isEqual:newContact.email]) {
                        uniqueEmail = NO;
                        NSLog(@"\nEmail is not unique, contact was not saved.");
                    }
                }
                if (uniqueEmail) {
                        [list.contacts addObject:newContact];
                }
            } else if ([input isEqualToString:@"list"]) {
                [list print];
            } else if ([input isEqualToString:@"quit"]) {
                NSLog(@"\n\nGood riddance!\n");
            } else if ([input hasPrefix:@"show"]) {
                [list show:[[input substringFromIndex:5] intValue]];
            } else if ([input hasPrefix:@"find"]) {
                [list find:[input substringFromIndex:5]];
            } else {
                NSLog(@"\nInvalid input");
            }
        }
    }
    return 0;
}
