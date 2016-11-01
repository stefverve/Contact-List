//
//  InputCollector.m
//  Contact List
//
//  Created by Stefan Verveniotis on 2016-11-01.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

- (NSString *)getString:(NSString *)promptString {
    NSLog(@"%@", promptString);
    char cInput[255];
    fgets(cInput, 255, stdin);
    return [[NSString stringWithCString:cInput
                               encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

@end
