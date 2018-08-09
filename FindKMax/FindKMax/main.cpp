//
//  main.c
//  FindKMax
//
//  Created by qingfeng on 2018/7/18.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//

#include <stdio.h>
#include <iostream>

void swap(int &a, int &b) {
    int temp = a;
    a = b;
    b = temp;
}

int partition(int  a[] ,int low , int high) {
    int i = low - 1;
    int j = low;
    while(j < high) {
        if(a[j] >=  a[high]) {
            swap(a[i + 1], a[j]);
            i++;
        }
        j++;
    }
    //最后处理a[high]
    swap(a[i + 1], a[high]);
    return i + 1;
}

int findk(int  a[] , int low , int high , int k) {
    if(low < high) {
        int q = partition(a , low , high) ;
        int len = q - low + 1 ; //表示第几个位置
        if(len == k)
            return q ; //返回第k个位置
        else if(len < k)
            return findk(a , q + 1 , high , k - len) ;
        else
            return findk(a , low , q - 1, k ) ;
    }
    return 0;
}

int main(int argc, const char * argv[]) {

    int a[] = {1, 9, 8, 5, 46, 26};
    int Len = sizeof(a)/sizeof(int);
    int K = 2;

    findk(a , 0 , Len - 1 , K);
    /*
     利用快速排序的思想，从数组S中随机找出一个元素X，把数组分为两部分Sa和Sb。Sa中的元素大于等于X，Sb中元素小于X。这时有两种情况：
     Sa中元素的个数小于k，则Sb中的第k-|Sa|个元素即为第k大数；
     Sa中元素的个数大于等于k，则返回Sa中的第k大数。时间复杂度近似为O(n)
     */

    for(int i = 0 ; i < K ; i++) {
        std::cout<<a[i]<<" ";
    }
    
    
    return 0;
}
