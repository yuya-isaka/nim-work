// ~/.cache/nim/fib_d/fib.h
#include "fib.h"
#include <stdio.h>

int main() {
    NimMain();
    printf("%d\n", fib(10));
}


// $ gcc -o export_test.exe -Inimcache -I"Nimコンパイラのlibディレクトリのパス" nimcache/*.c exportc_test.c
// Nimから作られたCソースと共にコンパイルできる