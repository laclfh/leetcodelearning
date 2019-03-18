#include <stdio.h>
#include <math.h>

/*
* 二叉树链式存储
*/
typedef struct TreeNode *BinTree;
typedef BinTree Position;
struct TreeNode
{
	ElementType Data;
	BinTree Left;
	BinTree Right;
};
/*
* 值，左右节点
*/
/**
 * Definition for a binary tree node.
 * struct TreeNode {
 *     int val;
 *     struct TreeNode *left;
 *     struct TreeNode *right;
 * };
 */

 /*
 * 二叉树 先序遍历
 */

void PreOrderTraversal(BinTree BT){
	if(BT){
		printf("%d\n", BT->Data);
		PreOrderTraversal(BT->Left);
		PreOrderTraversal(BT->Right);
	}
}

 /*
 * 二叉树 中序遍历
 */

void InOrderTraversal(BinTree BT){
	if(BT){
		InOrderTraversal(BT->Left);
		printf("%d\n", BT->Data);
		InOrderTraversal(BT->Right);
	}
}
/*
 * 二叉树 后序遍历
 */

void PostOrderTraversal(BinTree BT){
	if(BT){
		PostOrderTraversal(BT->Left);
		PostOrderTraversal(BT->Right);
		printf("%d\n", BT->Data);
	}
}

int main(){
	
	return 0;
}

