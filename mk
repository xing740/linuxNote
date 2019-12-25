#!/bin/bash

#编译单个文件

if [ $# != 1 ]
then
    echo "==需要一个参数=="
    exit
fi

if [ $(pwd) != "/data/lsfz_test_s001a/server/svr_source/game" ]
then
    echo "==要在game目录=="
#    exit
fi

fcpp="$1""cpp"
fo="$1""o"

echo "g++ -std=gnu++14 -c $(pwd)/$fcpp -o obj/game/$fo -I/usr/local/include -I/usr/local/include/mongo -I. -I../common -I../net -I../game_def/ -O0 -g3 -Wreturn-type -Wno-pragmas -gdwarf-2"

#g++ -std=gnu++14 -c /data/lsfz_test_s001a/server/svr_source/game/$fcpp -o obj/game/$fo -I/usr/local/include -I/usr/local/include/mongo -I. -I../common -I../net -I../game_def/ -O0 -g3 -Wreturn-type -Wno-pragmas -gdwarf-2

g++ -std=gnu++14 -c $(pwd)/$fcpp -o obj/game/$fo -I/usr/local/include -I/usr/local/include/mongo -I. -I../common -I../net -I../game_def/ -O0 -g3 -Wreturn-type -Wno-pragmas -gdwarf-2
