#import "Triangle.h"

@implementation Triangle
-(float) perimeter{
    return sideA + sideB + sideC;
}
-(float) area{
    float p = (sideA + sideB + sideC)/2;
    return sqrt(p*(p-sideA)*(p-sideB)*(p-sideC));
}
-(void) show{
    NSLog(@"Периметр треугольника: %f", [self perimeter]);
    NSLog(@"Площадь треугольника: %f", [self area]);
}
@end
