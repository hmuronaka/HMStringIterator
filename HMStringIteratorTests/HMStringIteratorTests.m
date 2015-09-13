//
//  HMStringIteratorTests.m
//  HMStringIterator
//
//  Created by Muronaka Hiroaki on 2015/09/06.
//  Copyright (c) 2015年 Muronaka Hiroaki. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "HMStringIterator.h"

@interface HMStringIteratorTests : XCTestCase

@end

@implementation HMStringIteratorTests

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
    HMStringIterator* iterator = [[HMStringIterator alloc] initWithString:@"abc"];
    
    XCTAssertEqual(iterator.isEnd, NO);
    [iterator nextCharacter];
    XCTAssertEqual(iterator.isEnd, NO);
    XCTAssertEqual(iterator.character, 'a');
    XCTAssertEqual(iterator.position, 0);
    
    [iterator nextCharacter];
    XCTAssertEqual(iterator.isEnd, NO);
    XCTAssertEqual(iterator.character, 'b');
    XCTAssertEqual(iterator.position, 1);
    
    [iterator nextCharacter];
    XCTAssertEqual(iterator.isEnd, YES);
    XCTAssertEqual(iterator.character, 'c');
    XCTAssertEqual(iterator.position, 2);
    
    [iterator nextCharacter];
    XCTAssertEqual(iterator.isEnd, YES);
}


-(void)testIteratorWithPosition {
    // This is an example of a functional test case.
    HMStringIterator* iterator = [[HMStringIterator alloc] initWithString:@"abc" position:1];
    
    XCTAssertEqual(iterator.isEnd, NO);
    [iterator nextCharacter];
    XCTAssertEqual(iterator.isEnd, NO);
    XCTAssertEqual(iterator.character, 'b');
    XCTAssertEqual(iterator.position, 1);
    
    [iterator nextCharacter];
    XCTAssertEqual(iterator.isEnd, YES);
    XCTAssertEqual(iterator.character, 'c');
    XCTAssertEqual(iterator.position, 2);
    
    [iterator nextCharacter];
    XCTAssertEqual(iterator.isEnd, YES);
}

-(void)testIteratorWithPrev {
    HMStringIterator* iterator = [[HMStringIterator alloc] initWithString:@"abc"];
    
    [iterator nextCharacter]; // a
    XCTAssertFalse(iterator.isFirst);
    [iterator nextCharacter]; // b
    XCTAssertFalse(iterator.isFirst);
    
    [iterator prevCharacter];
    XCTAssertEqual(iterator.character, 'a');
    XCTAssertTrue(iterator.isFirst);
    
    [iterator prevCharacter];
    XCTAssertEqual(iterator.character, 'a');
    XCTAssertTrue(iterator.isFirst);
}


- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
