//
//  main.c
//  ReverseCString
//
//  Created by 情风 on 2018/9/5.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//

#include <stdio.h>
#include <string.h>

char *reverseCString(char *str) {
    
    if (str != NULL) {
        size_t len = strlen(str);

        char *start = str;
        char *end = str + len - 1;
        char ch;
    
        while (start < end) {
            ch = *start;
            *start++ = *end;
            *end-- = ch;
        }
    }
    return str;
}



int main(int argc, const char * argv[]) {
    
    char str[] = "1234";
    printf("%s\n",reverseCString(str));
    
    return 0;
}
