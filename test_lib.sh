#/bin/sh
make fclean
make
gcc main.c src/*.o
./a.out
rm a.out
echo "


"
make fclean