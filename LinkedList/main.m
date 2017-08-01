//
//  main.m
//  LinkedList
//
//  Created by cochn on 2017/8/1.
//  Copyright © 2017年 cc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OneWayLinkedList.h"

void testOneWayLinkedList(){
    
    LinkedList *list = linkedListCreate();
    linkedListAddNode(list, (LinkedListNodeValue)(1));
    linkedListAddNode(list, (LinkedListNodeValue)(2));
    linkedListAddNode(list, (LinkedListNodeValue)(3));
    linkedListAddNode(list, (LinkedListNodeValue)(1));
    linkedListAddNode(list, (LinkedListNodeValue)(1));
    linkedListPrint(list);
    
    linkedListInsertNode(list, 3, (LinkedListNodeValue)1);
    linkedListPrint(list);
    
    linkedListInsertNode(list, 0, (LinkedListNodeValue)1);
    linkedListPrint(list);
    
    linkedListInsertNode(list, 7, (LinkedListNodeValue)1);
    linkedListPrint(list);
    
    linkedListRemoveNode(list, 1);
    linkedListPrint(list);
    
    linkedListRemoveNode(list, 0);
    linkedListPrint(list);
    
    linkedListRemoveNode(list, 5);
    linkedListPrint(list);
    
    linkedListRemoveAllValue(list, (LinkedListNodeValue)1);
    linkedListPrint(list);
    
    linkedListClear(list);
    linkedListPrint(list);
    
    linkedListFree(list);
    linkedListPrint(list);
}

//线性表的链式存储
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        testOneWayLinkedList();
        
    }
    return 0;
}
