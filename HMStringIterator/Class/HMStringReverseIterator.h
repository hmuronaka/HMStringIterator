//
//  HMStringReverseIterator.h
//  HMStringIterator
//
//  Created by Muronaka Hiroaki on 2015/09/06.
//  Copyright (c) 2015年 Muronaka Hiroaki. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HMStringIterable.h"

@interface HMStringReverseIterator : NSObject <HMStringIterable>

@property(nonatomic, readonly) NSString* string;
@property(nonatomic, readonly) BOOL      isEnd;
@property(nonatomic, readonly) unichar   character;

-(instancetype)initWithString:(NSString*)string;
-(instancetype)initWithString:(NSString*)string position:(NSUInteger)position;

@end
