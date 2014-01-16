
#import "PFTPrimeFactors.h"

@implementation PFTPrimeFactors

+ (NSArray*)primesOf:(int)n
{
    NSMutableArray* primes = [NSMutableArray array];
    if(n > 1)
    {
        [primes addObject:[NSNumber numberWithInt:n]];
    }
    return primes;
}

@end
