```text
dependencies = {
   "lua >= 5.1",
   "argparse >= 0.6.0",
   "luafilesystem >= 1.6.3"
}
```

### argparse-master

https://github.com/mpeterv/argparse



### luafilesystem

https://github.com/lunarmodules/luafilesystem

#### How to Compile

```bash
gcc -O2 -shared -s -I "C:/luabin" -L "C:/luabin" -o lfs.dll ./deps/luafilesystem-master/src/lfs.c -llua54
```



