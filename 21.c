/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     struct ListNode *next;
 * };
 */
struct ListNode* mergeTwoLists(struct ListNode* l1, struct ListNode* l2) {
    struct ListNode * dummy=NULL;
    dummy = (struct ListNode *)malloc(sizeof(struct ListNode));
    struct ListNode *cur = dummy;
    while(l1 != NULL && l2 != NULL){
        if(l1->val < l2->val){
            cur->next = l1;
            l1 = l1->next;
        }else{
            cur->next = l2;
            l2 = l2->next;
        }
        cur = cur->next;
    }
    if(l1 != NULL){
        cur->next = l1;
    }else{
        cur->next = l2;
    }
    return dummy->next;
    
}