//
//  RMRUTValidatorTests.m
//  RMRUTValidator
//
//  Created by Renato Moya on 9/14/13.
//  Copyright (c) 2013 Renato Moya. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "RMRUTValidator.h"

@interface RMRUTValidatorTests : XCTestCase

@end

@implementation RMRUTValidatorTests

- (void)setUp
{
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
}

- (void)tearDown
{
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

- (void)testValidateRutWithDotsAndHyphen
{
    XCTAssertTrue([RMRUTValidator validateRut:@"19.200.923-5"], @"The rut is invalid");
}

- (void)testValidateRutWithoutDots
{
    XCTAssertTrue([RMRUTValidator validateRut:@"19200923-5"], @"The rut is invalid");
}

- (void)testValidateRutWithoutDotsAndHyphen
{
    XCTAssertTrue([RMRUTValidator validateRut:@"192009235"], @"The rut is invalid");
}

- (void)testValidateRutWithLowercaseDigitK
{
    XCTAssertTrue([RMRUTValidator validateRut:@"20961605-k"], @"The rut is invalid");
}

- (void)testValidateRutWithUppercaseDigitK
{
    XCTAssertTrue([RMRUTValidator validateRut:@"20961605-K"], @"The rut is invalid");
}

- (void)testValidateRutWithInvalidRut
{
    XCTAssertFalse([RMRUTValidator validateRut:@"0.000.000-0"], @"The rut is invalid");
}

- (void)testValidateRutWithNonNumericRut
{
    XCTAssertFalse([RMRUTValidator validateRut:@"INVALID"], @"The rut is invalid");
}

@end
