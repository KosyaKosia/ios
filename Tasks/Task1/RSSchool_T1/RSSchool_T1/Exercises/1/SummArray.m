#import "SummArray.h"

@implementation SummArray

// Complete the summArray function below.
- (NSNumber *)summArray:(NSArray *)array {
    
    double sum = 0.0;
    for (NSNumber* value in array) {
        sum += [value doubleValue];
    }
    return [NSNumber numberWithDouble:sum];
}

@end
