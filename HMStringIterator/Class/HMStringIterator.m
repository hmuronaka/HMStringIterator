//
//  HMStringIterator.m
//  HMStringIterator
//
//  Created by Muronaka Hiroaki on 2015/09/06.
//  Copyright (c) 2015年 Muronaka Hiroaki. All rights reserved.
//

#import "HMStringIterator.h"
#import "HMStringReverseIterator.h"

@interface HMStringIterator()

@property(nonatomic, assign) NSUInteger nextPosition;
@property(nonatomic, assign) unichar character;
@property(nonatomic, assign) NSUInteger position;

@end

@implementation HMStringIterator


-(instancetype)initWithString:(NSString*)string {
    self = [self initWithString:string position:0];
    return self;
}

-(instancetype)initWithString:(NSString*)string position:(NSUInteger)position {
    self = [super init];
    
    if( self ) {
        _string = string;
        self.nextPosition = position;
        self.position = 0;
        self.character = 0;
    }
    
    return self;
}

/////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark -
#pragma mark implements HMStringIterable

-(void)nextCharacter {
    if( self.isEnd ) {
        return;
    }
    self.character = [self.string characterAtIndex:self.nextPosition];
    self.position = self.nextPosition;
    ++self.nextPosition;
}

-(void)prevCharacter {
    
    if( [self hm_isFirst:self.position - 1] ) {
        return;
    }
    self.nextPosition = self.position - 1;
    self.character = [self.string characterAtIndex:self.nextPosition];
    self.position = self.nextPosition;
    --self.nextPosition;
}

-(BOOL)isEnd {
    return (self.nextPosition >= self.string.length);
}

-(BOOL)isFirst {
    return [self hm_isFirst:self.nextPosition];
}

-(BOOL)hm_isFirst:(NSUInteger)index {
    return (index == (NSUInteger)-1);
}

-(id<HMStringIterable>)reverseIterator {
    return [[HMStringReverseIterator alloc] initWithString:self.string position:self.position];
}

@end
