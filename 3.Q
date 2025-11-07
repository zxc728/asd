// circ_queue.c
#include <stdio.h>
#define MAX 5
char Q[MAX]; int f=-1,r=-1;
int empty(){ return f==-1; }
int full(){ return (f==(r+1)%MAX); }
void insert(char x){
    if(full()){ printf("Overflow\n"); return; }
    if(empty()) f=0;
    r=(r+1)%MAX; Q[r]=x;
}
void del(){
    if(empty()){ printf("Underflow\n"); return; }
    printf("Deleted: %c\n",Q[f]);
    if(f==r) f=r=-1; else f=(f+1)%MAX;
}
void show(){
    if(empty()){ printf("Empty\n"); return; }
    for(int i=f;; i=(i+1)%MAX){ printf("%c ",Q[i]); if(i==r) break; } printf("\n");
}
int main(){
    // demo sequence:
    insert('A'); insert('B'); insert('C'); insert('D'); insert('E'); // should fill or overflow
    show(); // display
    insert('F'); // overflow
    del(); del(); show();
    insert('X'); insert('Y'); show();
    while(!empty()) del(); del(); // extra del to show underflow
    return 0;
}
