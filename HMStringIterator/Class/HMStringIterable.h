//
//  HMStringIterable.h
//  HMStringIterator
//
//  Created by Muronaka Hiroaki on 2015/09/06.
//  Copyright (c) 2015年 Muronaka Hiroaki. All rights reserved.
//
#import <Foundation/Foundation.h>

@protocol HMStringIterable

@property(nonatomic, readonly) BOOL         isEnd;
@property(nonatomic, readonly) unichar      character;
// end of string is NSNotFound
@property(nonatomic, readonly) NSUInteger   position;

-(void)nextCharacter;
-(id<HMStringIterable>)reverseIterator;

@end