#import "Figure.h"

NS_ASSUME_NONNULL_BEGIN

@interface Rectangle : Figure{
    @public NSString *name;
    @public float sideA;
    @public float sideB;
}
-(float) perimeter;
-(float) area;
-(void) show;

@end

NS_ASSUME_NONNULL_END
