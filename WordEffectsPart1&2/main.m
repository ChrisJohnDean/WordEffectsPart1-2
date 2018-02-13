//
//  main.m
//  WordEffectsPart1&2
//
//  Created by Chris Dean on 2018-02-12.
//  Copyright © 2018 Chris Dean. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        while(1==1) {
            // 255 unit long array of characters
            char inputChars[255];
            char inputNumber[255];
            int numberChosen;
            
            printf("Input a string: ");
            // limit input to max 255 characters
            fgets(inputChars, 255, stdin);
            
            // print as a c string
            printf("Your string is %s\n", inputChars);
            
            // convert char array to an NSString object
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            
            // print NSString object
            NSLog(@"Input was: %@", inputString);
            
            
            printf("Input a number from 1 - 6: ");
            
            // limit input to max 255 characters
            fgets(inputNumber, 255, stdin);
            
            // convert char array to an NSString object
            NSString *inputStringNumber = [NSString stringWithUTF8String:inputNumber];
            
            // print NSString object
            NSLog(@"Input was: %@", inputStringNumber);
            
            numberChosen = [inputStringNumber intValue];
            
            switch(numberChosen)
            {
                case 1: {
                    
                    NSString *str = [inputString uppercaseString];
                    NSLog(@"Input was: %@", str);
                    break;
                }
                    
                case 2: {
                    
                    NSString *str = [inputString lowercaseString];
                    NSLog(@"Input was: %@", str);
                    break;
                    
                }
                    
                case 3: {
                    
                    int numba = [inputString intValue];
                    if (numba == 0) {
                        NSLog(@"You did not enter a number!!!");
                        break;
                    }
                    NSLog(@"Number Entered: %d", numba);
                    break;
                }
                    
                case 4: {
                    NSString *str = [inputString stringByAppendingString: @", eh?"];
                    NSLog(@"Input was: %@", str);
                    break;
                }
                    
                case 5: {
                    NSString *strippedTextLine = [inputString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
                    if([strippedTextLine hasSuffix:@"?"]) {
                        NSLog(@"I don't know");
                        break;
                    } else if([strippedTextLine hasSuffix:@"!"]) {
                        NSLog(@"Whoa, calm down!");
                        break;
                    }else {
                        NSLog(@"AHHHHHHHHH");
                        break;
                    }
                    
                }
                    
                case 6: {
                    NSString *strippedTextLine = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                    NSLog(@"Input was: %@", strippedTextLine);
                    break;
                }
                    
            }
        }
    }
    return 0;
}
