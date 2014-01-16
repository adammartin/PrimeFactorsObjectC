
#import "PFTPrimeFactors.h"

@implementation PFTPrimeFactors

+ (NSArray*)primesOf:(int)n
{
    NSMutableArray* primes = [NSMutableArray array];
    for(int candidate = 2; n > 1; candidate++)
    {
        while (n % candidate == 0)
        {
            [primes addObject:[NSNumber numberWithInt:candidate]];
            n /= candidate;
        }
    }
    return primes;
}

@end
