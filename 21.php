<?php
/**
 * Definition for a singly-linked list.
 * class ListNode {
 *     public $val = 0;
 *     public $next = null;
 *     function __construct($val) { $this->val = $val; }
 * }
 */
 
 class Solution {

    /**
     * @param ListNode $l1
     * @param ListNode $l2
     * @return ListNode
     */
    function mergeTwoLists($l1, $l2) {
        $dummy = new ListNode(0);
        //$cur = new ListNode;
        $cur = $dummy;
        while($l1 != null && $l2 != null){
            if($l1->val < $l2->val){
                $cur->next = new ListNode($l1->val);
                $l1 = $l1->next;
            }else{
                $cur->next = new ListNode($l2->val);
                $l2 = $l2->next;
            }                
            $cur = $cur->next;
        }
        if($l1 != null){
            $cur->next = $l1;
        }else{
            $cur->next = $l2;
        }
        return $dummy->next;
    }
}
