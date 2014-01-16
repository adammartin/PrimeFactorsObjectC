#define HC_SHORTHAND
#import <OCHamcrestIOS/OCHamcrestIOS.h>
#import <XCTest/XCTest.h>

#import "PFTPrimeFactors.h"

@interface PFTPrimeFactorsTest : XCTestCase

@end

@implementation PFTPrimeFactorsTest

- (void)setUp
{
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
}

- (void)tearDown
{
    // Adding a sleep per http://goo.gl/uBdDcl
    // It appears there is a slight issue where tests can complete prior to main application being loaded.
    // Problem doesn't exist for logic tests.
	[NSThread sleepForTimeInterval:1.0];
    // Put teardown cvode here; it will be run once, after the last test case.
    [super tearDown];
}

- (void)testPrimesOfOneIsOne
{
    assertThat([PFTPrimeFactors primesOf:1], isEmpty());
}

- (void)testPrimesOfTwoIsTwo
{
    assertThat([PFTPrimeFactors primesOf:2], contains(@2, nil));
}

- (void)testPrimesOfThreeIsThree
{
    assertThat([PFTPrimeFactors primesOf:3], contains(@3, nil));
}

@end
