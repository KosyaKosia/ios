#import "Pangrams.h"

@implementation Pangrams

// Complete the pangrams function below.
- (BOOL)pangrams:(NSString *)string {
    
    NSSet* alphabetLetters = [[NSSet alloc] initWithObjects:
                              @"a", @"b", @"c", @"d", @"e", @"f", @"g", @"h", @"i", @"j", @"k", @"l", @"m",
                              @"n", @"o", @"p", @"q", @"r", @"s", @"t", @"u", @"v", @"w", @"x", @"y", @"z", nil];
    
    NSString* lowercaseString = [self stringToLowercase:string];
    NSMutableSet* letters = [[NSMutableSet alloc] init];
    
    for (int i = 0; i < [lowercaseString length]; i++) {
        NSString* character = [lowercaseString substringWithRange:NSMakeRange(i, 1)];
        [letters addObject:character];
    }
    
    return [alphabetLetters isSubsetOfSet:letters];
}

- (NSString*) stringToLowercase:(NSString*) str {
    return [str lowercaseString];
}

@end
