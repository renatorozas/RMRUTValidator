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

/*
 * specific cases
 */

- (void)testValidateRutWithDigit0
{
    XCTAssertTrue([RMRUTValidator validateRut:@"14.400.400-0"], @"The rut is invalid");
}

- (void)testValidateRutWithDigit1
{
    XCTAssertTrue([RMRUTValidator validateRut:@"14.400.405-1"], @"The rut is invalid");
}

- (void)testValidateRutWithDigit2
{
    XCTAssertTrue([RMRUTValidator validateRut:@"14.400.413-2"], @"The rut is invalid");
}

- (void)testValidateRutWithDigit3
{
    XCTAssertTrue([RMRUTValidator validateRut:@"14.400.404-3"], @"The rut is invalid");
}

- (void)testValidateRutWithDigit4
{
    XCTAssertTrue([RMRUTValidator validateRut:@"14.400.409-4"], @"The rut is invalid");
}

- (void)testValidateRutWithDigit5
{
    XCTAssertTrue([RMRUTValidator validateRut:@"14.400.403-5"], @"The rut is invalid");
}

- (void)testValidateRutWithDigit6
{
    XCTAssertTrue([RMRUTValidator validateRut:@"14.400.408-6"], @"The rut is invalid");
}

- (void)testValidateRutWithDigit7
{
    XCTAssertTrue([RMRUTValidator validateRut:@"14.400.402-7"], @"The rut is invalid");
}

- (void)testValidateRutWithDigit8
{
    XCTAssertTrue([RMRUTValidator validateRut:@"14.400.407-8"], @"The rut is invalid");
}

- (void)testValidateRutWithDigit9
{
    XCTAssertTrue([RMRUTValidator validateRut:@"14.400.401-9"], @"The rut is invalid");
}

- (void)testValidateRutWithDigit10
{
    XCTAssertTrue([RMRUTValidator validateRut:@"145.400.401-7"], @"The rut is invalid");
}

- (void)testValidateRutWithDigit11
{
    XCTAssertTrue([RMRUTValidator validateRut:@"1.514.400.401-7"], @"The rut is invalid");
}

- (void)testValidateRutWithDigit12
{
    XCTAssertTrue([RMRUTValidator validateRut:@"12.214.400.401-6"], @"The rut is invalid");
}

- (void)testValidateRutWithDigit13
{
    XCTAssertTrue([RMRUTValidator validateRut:@"122.214.400.401-8"], @"The rut is invalid");
}

@end
