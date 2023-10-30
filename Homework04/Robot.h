#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Robot : NSObject{
    @public int x;
    @public int y;
}
- (void) run: (void(^)(NSString*)) block first: (NSString*) first;

@end

NS_ASSUME_NONNULL_END
