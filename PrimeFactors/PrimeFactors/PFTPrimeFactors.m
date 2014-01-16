
#import "PFTPrimeFactors.h"

@implementation PFTPrimeFactors

+ (NSArray*)primesOf:(int)n
{
    NSMutableArray* primes = [NSMutableArray array];
    if(n > 1)
    {
        if (n % 2 == 0)
        {
            [primes addObject:[NSNumber numberWithInt:2]];
            n /= 2;
        }
        if (n > 1)
        {
            [primes addObject:[NSNumber numberWithInt:n]];
        }
    }
    return primes;
}

@end
