#import <Foundation/Foundation.h>
#import "Figure.h"
#import "Rectangle.h"
#import "Triangle.h"
#import "Circle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Triangle *triangle = [[Triangle alloc] init];
        triangle->sideA=5;
        triangle->sideB=5;
        triangle->sideC=5;
        
        Rectangle *rectangle = [[Rectangle alloc] init];
        rectangle->sideA=10;
        rectangle->sideB=5;
       
        Circle *circle = [[Circle alloc] init];
        circle->radius=10;
        
        Figure *arr[3];
        arr[0] = triangle;
        arr[1] = rectangle;
        arr[2] = circle;
        for (int i=0;i<3;i++){
            [arr[i] show];
        }
    
        
    }
    return 0;
}
