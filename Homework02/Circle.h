#import "Figure.h"

NS_ASSUME_NONNULL_BEGIN

@interface Circle : Figure{
    @public float radius;
}
-(float) perimeter;
-(float) area;
-(void) show;
@end

NS_ASSUME_NONNULL_END
