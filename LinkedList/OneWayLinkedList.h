//
//  OneWayLinkedList.h
//  LinkedList
//
//  Created by cochn on 2017/8/1.
//  Copyright © 2017年 cc. All rights reserved.
//

#ifndef OneWayLinkedList_h
#define OneWayLinkedList_h

#include <stdio.h>

#ifndef LINKEDLIST_STRUCT

typedef void  * LinkedListNodeValue;

typedef void LinkedListNode;

typedef void LinkedList;

#endif

/**创建linkedList*/
LinkedList * linkedListCreate();

/**销毁*/
void linkedListFree(LinkedList * list);

/**清空*/
void linkedListClear(LinkedList * list);

/**获取线性表的长度*/
int linkedListLength(LinkedList * list);

/**获取LinkedListNodeValue*/
LinkedListNodeValue linkedListNode(LinkedList * list, int index);

/**插入数据*/
void linkedListInsertNode(LinkedList * list,int index ,LinkedListNodeValue * value);
/**添加数据*/
void linkedListAddNode(LinkedList * list,LinkedListNodeValue *value);

/**设置元素*/
void linkedListSetValue(LinkedList * list, int index, LinkedListNodeValue * value);

/**删除元素*/
void linkedListRemoveNode(LinkedList * list, int index);

/**删除所有的value*/
void linkedListRemoveAllValue(LinkedList * list, LinkedListNodeValue * value);

/**打印当前线性表*/
void linkedListPrint(LinkedList * list);


#endif /* OneWayLinkedList_h */
