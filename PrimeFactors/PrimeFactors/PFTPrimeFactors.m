
#import "PFTPrimeFactors.h"

@implementation PFTPrimeFactors

+ (NSArray*)primesOf:(int)n
{
    NSMutableArray* primes = [NSMutableArray array];
    for (int candidate = 2; n > 1; candidate++)
        for (;n % candidate == 0; n /= candidate)
            [primes addObject:[NSNumber numberWithInt:candidate]];
    return primes;
}

@end
