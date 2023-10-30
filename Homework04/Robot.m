#import "Robot.h"

@implementation Robot

- (void) run: (void(^)(NSString*)) block first: (NSString*) first{
    block(first);
    NSLog(@"Текущая координата x= %i y= %i",x,y);
}
@end
