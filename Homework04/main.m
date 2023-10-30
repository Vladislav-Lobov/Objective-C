#import <Foundation/Foundation.h>
#import "Robot.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Robot *robot = [Robot new];
        robot->x=0;
        robot->y=0;
        
        void (^move)(NSString*) = ^void(NSString* first){
            if ([first isEqualToString: @"up"]){
                robot->y=robot->y-1;
            }
            if ([first isEqualToString:@"down"]){
                robot->y=robot->y+1;
            }
            if([first isEqualToString:@"left"]){
                robot->x=robot->x-1;
            }
            if([first isEqualToString:@"right"]){
                robot->x=robot->x+1;
            }
        };
        while (1>0) {
            char arr[20];
            NSLog(@"Введите up, down, left, right или exit ");
            scanf("%s", arr);
            NSString *string = [NSString stringWithUTF8String:arr];
            if ([string isEqualToString:@"exit"]){
                break;
            }
            [robot run:move first:string];
        }
    }
    return 0;
}
