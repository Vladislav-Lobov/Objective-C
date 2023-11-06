#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Robot : NSObject <NSCoding>

@property (nonatomic, strong) NSUserDefaults * userDefaults;
@property (nonatomic) NSString* robotName;
@property (nonatomic) float x;
@property (nonatomic) float y;

@end

NS_ASSUME_NONNULL_END
