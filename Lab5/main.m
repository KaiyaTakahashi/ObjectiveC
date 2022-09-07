//
//  main.m
//  Lab5
//
//  Created by Kaiya Takahashi on 2022-09-03.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputCollector *ic = [[InputCollector alloc] init];
        ContactList *cl = [[ContactList alloc] init];
        bool quit = false;
        while (!quit) {
            NSString *input = [ic inputForPromt:@"\nnew - Create a new contact\nlist - List all contacts\nquit - Exit Application"];
            if ([input isEqual:@"new"]) {
                Contact *contact = [[Contact alloc] init];
                [contact setName:[ic inputForPromt:@"\nEnter name here:"]];
                [contact setEmail:[ic inputForPromt:@"\nEnter email here:"]];
                [cl addContact:contact];
            } else if ([input isEqual:@"list"]) {
                [cl printContactList];
            } else if ([input isEqual:@"quit"]) {
                quit = true;
            } else if ([input length] > 4 && [[input substringWithRange:NSMakeRange(0, 4)] isEqual:@"show"]) {
                int index = [[input substringWithRange:NSMakeRange(4, [input length]-4)] intValue];
                if (index >= [[cl contacsList] count] || index < 0) {
                    NSLog(@"not found");
                } else {
                    NSLog(@"#%d: <%@>(%@)", index, [[cl contacsList][index] name], [[cl contacsList][index] email]);
                }
            }
        }
    }
    return 0;
}
