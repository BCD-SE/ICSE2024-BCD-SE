/*  * test the branches  */

#include "klee/klee.h"
#include <string.h>
#include <stdlib.h>

// int get_branch(int x, int y, int z, int k) {
//   int m, a = 0, b = 0, c = 0, d;
// 	if(x > 0){
// 		m = 0;
// 	}else{
// 		m = 1;
// 	}
// 	if(y > 1){
// 		a = 10;
// 	}
// 	if(z < 2){
// 		b = 10;
// 	}
// 	if(k > 5){
// 		d = 5;
// 	}
// 	if(m == 1)
// 		// c = 1 /( a + b - 10);
// 		klee_assert(a + b != 10);
// 	return 0;
// } 

// int get_branch(int x, int y, int z) {
//   int a , b, c, d;
// 	if(x > 0)
// 	{
// 		a = 2;
// 	}else{
// 		a = 1;
// 	}
// 	if(y > 1){
// 		b = 2;
// 	}else{
// 		b = 1;
// 	}
// 	if(z < 2){
// 		c = 2;
// 	}else{
// 		c = 1;
// 	}
// 	d = b + c;
// 	return 0;
// } 

char *s_1 = NULL, *s_2 = NULL;
int get_branch(int x, int y, int z){
	int size_1 = 4, size_2 = 4;
	if ( x - y > 0 )
		size_1 += 1;
	if ( x + y > 10 )
		size_1 -= 1;
	s_1 = (char *) malloc(size_1 * sizeof(char));
	strncpy (s_1, "abcd", 4) ;
	if ( x + z > 0 )
		size_2 += 1;
	if ( y - z < 10 )
		size_2 -= 1;
	s_2 = (char *) malloc(size_2 * sizeof(char));
	strncpy (s_2, "abcd", 4);
	if(x + y + z > 0){
		printf("The sum of paramaters is positive.");
	}
}

int main() {
//   int a, b, c;
  int a, b, c, d;
  klee_make_symbolic(&a, sizeof(a), "a");
  klee_make_symbolic(&b, sizeof(b), "b");
  klee_make_symbolic(&c, sizeof(c), "c");
//   klee_make_symbolic(&d, sizeof(d), "d");
//   return get_branch(a, b, c, d);
  return get_branch(a, b, c);
} 
