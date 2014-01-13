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
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

- (void)testPrimesOfOneIsOne
{
    assertThat([PFTPrimeFactors primesOf:@1], isEmpty());
}

@end
