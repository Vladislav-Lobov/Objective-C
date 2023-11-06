#import "Robot.h"

@implementation Robot

-(void) encodeWithCoder:(NSCoder *)coder{
    [coder encodeObject:self.robotName forKey:@"robotName"];
    [coder encodeFloat:self.x forKey:@"pointX"];
    [coder encodeFloat:self.y forKey:@"pointY"];
}

-(instancetype) initWithCoder:(NSCoder *)coder{
    self = [super init];
    if (self){
        NSString * str = [coder decodeObjectForKey:@"robotName"];
        float xx = [coder decodeFloatForKey:@"pointX"];
        float yy = [coder decodeFloatForKey:@"pointY"];
        self.robotName = str;
        self.x = xx;
        self.y = yy;
    }
    return self;
}

@end
