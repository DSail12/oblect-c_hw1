//
//  main.m
//  oblect-c_hw1
//
//  Created by Eugene Zvyagin on 16.10.2023.
//

#import <Foundation/Foundation.h>
#include <math.h>

void solveQuadraticEquation(float a, float b, float c) {
    float discriminant = b * b - 4 * a * c;

    if (discriminant > 0) {
        float root1 = (-b + sqrt(discriminant)) / (2 * a);
        float root2 = (-b - sqrt(discriminant)) / (2 * a);
        NSLog(@"Уравнение имеет два корня: %.2f, %.2f", root1, root2);
    } else if (discriminant == 0) {
        float root = -b / (2 * a);
        NSLog(@"Уравнение имеет один корень: %.2f", root);
    } else {
        NSLog(@"Уравнение не имеет действительных корней");
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Решение первого уравнения: x^2 – 8x + 12 = 0
        solveQuadraticEquation(1, -8, 12);
        // Решение второго уравнения: 12x^2 – 4x + 2 = 0
        solveQuadraticEquation(12, -4, 2);
        // Решение третьего уравнения: x^2 – 100x - 2 = 0
        solveQuadraticEquation(1, -100, -2);
    }
    return 0;
}
//
