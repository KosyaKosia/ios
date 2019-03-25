#import "Diagonal.h"

@implementation Diagonal

// Complete the diagonalDifference function below.
- (NSNumber *) diagonalDifference:(NSArray *)array {
    NSMutableArray* numbers = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < [array count]; i++) {
        NSString* currentElement = [array objectAtIndex:i];
        [numbers addObject:[currentElement componentsSeparatedByString:@" "]];
    }
    
    NSInteger diagonalDifference = 0;
    
    for (int i = 0; i < [numbers count]; i++) {
        NSArray* currentArray = [numbers objectAtIndex:i];
        
        NSInteger firstDiagonal = [[currentArray objectAtIndex:i] integerValue];
        NSInteger lastDiagonal = [[currentArray objectAtIndex:[currentArray count] - i - 1] integerValue];
        
        diagonalDifference += firstDiagonal - lastDiagonal;
    }
    
    return [NSNumber numberWithInteger:labs(diagonalDifference)];
}

@end
