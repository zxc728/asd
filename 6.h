// tree_height.c
#include <stdio.h>
#include <stdlib.h>
typedef struct T{ int v; struct T *l,*r;} Node;
Node* n(int v){ Node* p=malloc(sizeof* p); p->v=v; p->l=p->r=NULL; return p;}
int height(Node* r){ if(!r) return 0; int a=height(r->l), b=height(r->r); return (a>b? a:b)+1; }
int main(){
    // sample complete tree
    Node* root=n(1);
    root->l=n(2); root->r=n(3);
    root->l->l=n(4); root->l->r=n(5);
    printf("%d\n", height(root)); // expected 3
    return 0;
}
