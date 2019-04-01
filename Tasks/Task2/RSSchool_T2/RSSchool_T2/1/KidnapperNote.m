#import "KidnapperNote.h"

@implementation KidnapperNote

- (BOOL)checkMagazine:(NSString *)magaine note:(NSString *)note {
    
    NSString* lowerCaseMAgazine = [magaine lowercaseString];
    
    NSArray* componentsFromMagazine = [lowerCaseMAgazine componentsSeparatedByString:@" "];
    
    NSCountedSet* setForMagazine = [[[NSCountedSet alloc] initWithArray:componentsFromMagazine] autorelease];
    

    NSString* lowerCaseNote = [note lowercaseString];
    
    NSArray* componentsFromNote = [lowerCaseNote componentsSeparatedByString:@" "];
    
    NSCountedSet* setForNote = [[[NSCountedSet alloc] initWithArray:componentsFromNote] autorelease];
    
    return [setForNote isSubsetOfSet:setForMagazine];
    
}

@end
