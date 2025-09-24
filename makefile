compile: main.c 231.c 231.h
           gcc -o programme *.c
run: ./programme
clean: 
        rm -rf programme