
int add5(int x) {
    return x + 5;
}

// 共有ライブラリとしてコンパイル
// gcc -shared -o testshared.dylib testshared.c

// -> Nimからインポートできるようになる




// testshred.c
// ↓
// c_nim.nim (dynlibプラグマを利用)