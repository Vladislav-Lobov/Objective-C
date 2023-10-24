#import "Rectangle.h"

@implementation Rectangle
-(float) perimeter{
    return (sideA + sideB) * 2;
}
-(float) area{
    return sideA * sideB;
}
-(void) show{
    NSLog(@"Периметр прямоугольника: %f", [self perimeter]);
    NSLog(@"Площадь прямоугольника: %f", [self area]);
}
@end
