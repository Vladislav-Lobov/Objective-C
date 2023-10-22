//Задание 2.
//Создать программу, которая находит большее
//число среди 3-х чисел.

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a1, a2, a3;
        NSLog(@"Введите число 1 ");
        scanf("%i", &a1);
        NSLog(@"Введите число 2 ");
        scanf("%i", &a2);
        NSLog(@"Введите число 3 ");
        scanf("%i", &a3);
        int arr[] = {a1, a2, a3};
        for (int i = 1; i < 3; i++){
            if (arr[0] < arr[i]){
                arr[0] = arr[i];
            }
        }
        NSLog(@"Максимальное значение: %i", arr[0]);
    }
    return 0;
}
