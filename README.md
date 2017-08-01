# linkedList
线性表的链式存储
/**创建linkedList*/
LinkedList * linkedListCreate(){
    
    LinkedList *list = malloc(sizeof(LinkedList) + sizeof(LinkedListNode));
    if (list) {
        list->length = 0;
        list->header = (LinkedListNode *)(list + 1);
        list->header->next = NULL;
    }
    return list;
}

/**销毁*/
void linkedListFree(LinkedList * list){
    
    if (list == NULL) return;
    
    linkedListClear(list);
    free(list);
}

/**清空*/
void linkedListClear(LinkedList * list){
    
    if (list == NULL) return;
    
    LinkedListNode *headerNode = list->header;
    while (headerNode) {
        LinkedListNode *removeNode = headerNode->next;
        if (removeNode == NULL) break;
        headerNode->next = removeNode->next;
        free(removeNode);
        removeNode = NULL;
    }
    
    list->length = 0;
}

/**获取线性表的长度*/
int linkedListLength(LinkedList * list){
    
    if (list == NULL) return 0;
    
    return list->length;
}

/**获取LinkedListNodeValue*/
LinkedListNodeValue linkedListNode(LinkedList * list, int index){
    
    if (list == NULL || index < 0 || index >= list->length) {
        return 0;
    }
    
    LinkedListNode * currentNode = list->header;
    for (int i = 0; i <= index; i++) {
        currentNode = currentNode->next;
    }
    return currentNode->value;
}

/**插入数据*/
void linkedListInsertNode(LinkedList * list,int index ,LinkedListNodeValue * value){
    
    if (list == NULL || index < 0 || index > list->length ) {
        return;
    }
    
    LinkedListNode * currentNode = list->header;
    for (int i = 0; i < index; i++) {
        currentNode = currentNode->next;
    }
    
    LinkedListNode *newNode = malloc(sizeof(LinkedListNode));
    if (newNode == NULL) return;
    newNode->next = currentNode->next;
    newNode->value = value;
    
    currentNode->next = newNode;
    
    list->length ++;
}

/**添加数据*/
void linkedListAddNode(LinkedList * list,LinkedListNodeValue *value){
    linkedListInsertNode(list, list->length, value);
}

/**设置元素*/
void linkedListSetValue(LinkedList * list, int index, LinkedListNodeValue * value){
    
    if (list == NULL || index < 0 || index >= list->length || value == NULL) {
        return;
    }
    
    LinkedListNode *currentNode = list->header;
    for (int i = 0; i <= index; i++) {
        currentNode = currentNode->next;
    }
    
    currentNode->value = value;
}

/**删除元素*/
void linkedListRemoveNode(LinkedList * list, int index){
    
    if (list == NULL || index < 0 || index >= list->length) {
        return;
    }
    
    LinkedListNode *currentNode = list->header;
    for (int i = 0; i < index; i++) {
        currentNode = currentNode->next;
    }
    
    LinkedListNode *removeNode = currentNode->next;
    
    currentNode->next = removeNode->next;
    
    free(removeNode);
    
    list->length --;
}

/**删除所有的value*/
void linkedListRemoveAllValue(LinkedList * list, LinkedListNodeValue * value){
    
    if (list == NULL) {
        return;
    }
    
    LinkedListNode *currentNode = list->header;
    while (currentNode) {
        
        LinkedListNode *nextNode = currentNode->next;
        if (nextNode == NULL) return;
        
        if (nextNode->value == value) {
            
            
            currentNode->next = nextNode->next;
            
            list->length --;
            
        }else{
            
            currentNode = nextNode;
            
        }
        
    }
    
}
