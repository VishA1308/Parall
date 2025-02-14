# Parall
Double:-6.76917e-10
Float:-0.2

MAKEFILE:

Если вы хотите использовать флаг USE_DOUBLE, чтобы изменить тип данных, вы можете изменить значение переменной USE_DOUBLE в Makefile на 1 для double, по умолчанию будет float

cd path/to/my_project

make USE_DOUBLE=0 all

./build/program




CMAKE:

mkdir build

cd build

cmake ..

cmake -DUSE_DOUBLE=ON ..
