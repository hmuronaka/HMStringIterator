//
//  HMStringReverseIteratorTests.m
//  HMStringIteratorLib
//
//  Created by Muronaka Hiroaki on 2015/09/06.
//  Copyright (c) 2015年 Muronaka Hiroaki. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "HMStringReverseIterator.h"

@interface HMStringReverseIteratorTests : XCTestCase

@end

@implementation HMStringReverseIteratorTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testIterator {
    // This is an example of a functional test case.
    HMStringReverseIterator* iterator = [[HMStringReverseIterator alloc] initWithString:@"abc"];
    
    XCTAssertEqual(iterator.isEnd, NO);
    [iterator nextCharacter];
    XCTAssertEqual(iterator.isEnd, NO);
    XCTAssertEqual(iterator.character, 'c');
    XCTAssertEqual(iterator.position, 2);
    
    [iterator nextCharacter];
    XCTAssertEqual(iterator.isEnd, NO);
    XCTAssertEqual(iterator.character, 'b');
    XCTAssertEqual(iterator.position, 1);
    
    [iterator nextCharacter];
    XCTAssertEqual(iterator.isEnd, YES);
    XCTAssertEqual(iterator.character, 'a');
    XCTAssertEqual(iterator.position, 0);
    
    [iterator nextCharacter];
    XCTAssertEqual(iterator.isEnd, YES);
}


-(void)testIteratorWithPosition {
    // This is an example of a functional test case.
    HMStringReverseIterator* iterator = [[HMStringReverseIterator alloc] initWithString:@"abc" position:1];
    
    XCTAssertEqual(iterator.isEnd, NO);
    [iterator nextCharacter];
    XCTAssertEqual(iterator.isEnd, NO);
    XCTAssertEqual(iterator.character, 'b');
    XCTAssertEqual(iterator.position, 1);
    
    [iterator nextCharacter];
    XCTAssertEqual(iterator.isEnd, YES);
    XCTAssertEqual(iterator.character, 'a');
    XCTAssertEqual(iterator.position, 0);
    
    [iterator nextCharacter];
    XCTAssertEqual(iterator.isEnd, YES);
}

-(void)testIteratorWithPrev {
    HMStringReverseIterator* iterator = [[HMStringReverseIterator alloc] initWithString:@"abc"];
    XCTAssertFalse(iterator.isFirst);
    
    [iterator nextCharacter]; // c
    XCTAssertFalse(iterator.isFirst);
    [iterator nextCharacter]; // b
    XCTAssertFalse(iterator.isFirst);
    
    [iterator prevCharacter]; // c
    XCTAssertEqual(iterator.character, 'c');
    XCTAssertTrue(iterator.isFirst);
    
    [iterator prevCharacter]; // c
    XCTAssertEqual(iterator.character, 'c');
    XCTAssertTrue(iterator.isFirst);
    
    
    
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
