//  main2.m
//  oblect-c_hw1
//
//  Created by Eugene Zvyagin on 16.10.2023.
//

#import <Foundation/Foundation.h>

float findMaxNumber(float a, float b, float c) {
    if (a > b && a > c) {
        return a;
    } else if (b > c) {
        return b;
    } else {
        return c;
    }
}
void inputThreeNumbers(float *num1, float *num2, float *num3) {
    NSLog(@"Введите первое число:");
    scanf("%f", num1);
    NSLog(@"Введите второе число:");
    scanf("%f", num2);
    NSLog(@"Введите третье число:");
    scanf("%f", num3);
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        float num1, num2, num3;
        // Ввод трех чисел
        inputThreeNumbers(&num1, &num2, &num3);
        // Находим наибольшее число с помощью функции findMaxNumber
        float maxNumber = findMaxNumber(num1, num2, num3);
        NSLog(@"Наибольшее число: %.2f", maxNumber);
    }
    return 0;
}

