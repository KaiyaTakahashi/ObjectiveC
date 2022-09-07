//
//  ContactList.h
//  Lab5
//
//  Created by Kaiya Takahashi on 2022-09-03.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

NS_ASSUME_NONNULL_BEGIN

@interface ContactList : NSObject

@property (nonatomic) NSMutableArray *contacsList;
- (void)addContact:(Contact*) newContact;
- (void)printContactList;

@end

NS_ASSUME_NONNULL_END
