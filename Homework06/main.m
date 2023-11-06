#import <Foundation/Foundation.h>
#import "Robot.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Robot * robot = [Robot new];
        robot.userDefaults = [NSUserDefaults standardUserDefaults];
        char arr[30];
        NSLog(@"Введите имя робота: ");
        scanf("%s",arr);
        NSString *string = [NSString stringWithUTF8String:arr];
        robot.robotName = string;
        float inputX;
        NSLog(@"Введите X: ");
        scanf("%f",&inputX);
        float inputY;
        NSLog(@"Введите Y: ");
        scanf("%f",&inputY);
        robot.x = inputX;
        robot.y = inputY;
        NSData *myData = [NSKeyedArchiver archivedDataWithRootObject:robot];
        [robot.userDefaults setObject:myData forKey:@"dataKey"];
        NSData * data = [robot.userDefaults objectForKey:@"dataKey"];
        Robot * resultData = [NSKeyedUnarchiver unarchiveObjectWithData:data];
        NSLog(@"Данные, восстановленные из userDefaults: ");
        NSLog(@"robotName: %@",resultData.robotName);
        NSLog(@"point X: %f", resultData.x);
        NSLog(@"point Y: %f", resultData.y);
        NSLog(@"Cохраняем данные в файл robot.txt: ");
        [myData writeToFile:@"robot.txt" atomically:YES];
        NSLog(@"Считываем данные из файла robot.txt: ");
        NSData * fileData = [NSData dataWithContentsOfFile:@"robot.txt"];
        Robot * resultData2 = [NSKeyedUnarchiver unarchiveObjectWithData:fileData];
            NSLog(@"robotName: %@",resultData2.robotName);
            NSLog(@"point X: %f", resultData2.x);
            NSLog(@"point Y: %f", resultData2.y);}
    return 0;
}
