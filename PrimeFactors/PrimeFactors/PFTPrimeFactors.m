
#import "PFTPrimeFactors.h"

@implementation PFTPrimeFactors

+ (NSArray*)primesOf:(int)n
{
    NSMutableArray* primes = [NSMutableArray array];
    int candidate = 2;
    while(n > 1)
    {
        while (n % candidate == 0)
        {
            [primes addObject:[NSNumber numberWithInt:candidate]];
            n /= candidate;
        }
        candidate++;
    }
    if (n > 1)
    {
        [primes addObject:[NSNumber numberWithInt:n]];
    }
    return primes;
}

@end
