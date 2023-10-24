#import "Figure.h"

NS_ASSUME_NONNULL_BEGIN

@interface Triangle : Figure{
    @public float sideA;
    @public float sideB;
    @public float sideC;
}
-(float) perimeter;
-(float) area;
-(void) show;

@end

NS_ASSUME_NONNULL_END
