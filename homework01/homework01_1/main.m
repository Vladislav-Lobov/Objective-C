//Задание 1.
//Решить квадратные уравнения:
//x^2 – 8x + 12 = 0,
//12x^2 – 4x + 2 = 0,
//x^2 – 100x - 2 = 0
//(заменять константы в коде).

#import <Foundation/Foundation.h>
void expr(int a, int b, int c){
    CGFloat x1, x2;
    CGFloat disc = pow(b, 2) - 4 * a * c;
    if (disc < 0){
        NSLog(@"Уравнение с коэффициентами a=%i b=%i c=%i не имеет корней",a,b,c);
    }
    else{
        if (disc == 0){
            x1 = -b / (2 * a);
            x2 = x1;
        }
        else{
            x1 = (-b + sqrt(disc)) / (2 * a);
            x2 = (-b - sqrt(disc)) / (2 * a);
        }
        NSLog(@"Уравнение с коэффициентами a=%i b=%i c=%i имеет корни:",a,b,c);
        NSLog(@"\nX1 = %f\nX2 = %f", x1, x2);}
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        expr(1,-8,12);
        expr(12,-4,2);
        expr(1,-100,-2);
    }
    return 0;
}
