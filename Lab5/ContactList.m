//
//  ContactList.m
//  Lab5
//
//  Created by Kaiya Takahashi on 2022-09-03.
//

#import "ContactList.h"
#import "Contact.h"

@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setContacsList:[NSMutableArray new]];
    }
    return self;
}

- (void)addContact:(Contact*) newContact{
    [[self contacsList] addObject:newContact];
}

- (void)printContactList {
    for (int i = 0; i < [[self contacsList] count]; i++) {
        NSLog(@"#%d:<%@>(%@)", i, [[self contacsList][i] name], [[self contacsList][i] email]);
    }
}

@end
