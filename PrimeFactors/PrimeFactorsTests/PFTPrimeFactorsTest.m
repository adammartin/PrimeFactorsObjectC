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
	[NSThread sleepForTimeInterval:1.0];
    // Put teardown cvode here; it will be run once, after the last test case.
    [super tearDown];
}

- (void)testPrimesOfOneIsOne
{
    assertThat([PFTPrimeFactors primesOf:1], isEmpty());
}

@end
