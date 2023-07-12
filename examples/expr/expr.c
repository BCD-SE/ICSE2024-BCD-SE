/*
 * test the branches
 */

#include "klee/klee.h"

int get_branch(int x, int y) {
  int a , b, c, m, n;
  m = 0, n = 0;
	if(x > 0)
	{
		c = 2;
	}else{
		c = -2;
	}
	if(y > 0){
		b = 3;
	}else{
		b = -3;
	}
	a = b + c;
	a = m + n;
	
	return a;
} 

int main() {
  int a, b, c;
  klee_make_symbolic(&a, sizeof(a), "a");
  klee_make_symbolic(&b, sizeof(b), "b");
  return get_branch(a, b);
} 

