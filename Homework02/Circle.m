#import "Circle.h"

@implementation Circle
-(float) perimeter{
    return 2 * 3.14 * radius;
}
-(float) area{
    return 3.14 * radius * radius;
}
-(void) show{
    NSLog(@"Периметр окружности: %f", [self perimeter]);
    NSLog(@"Площадь окружности: %f", [self area]);};
@end
