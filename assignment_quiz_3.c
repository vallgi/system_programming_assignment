 /*
3) A system call is a controlled entry point into the kernel, allowing a process to request that the kernel perform some action on the process's behalf.
To demonstrate a system call, Write a C program that opens a file, writes "Hello World" to it, reads the content back, and then prints the read content. Finally, close the file.
Ensure you document (comment) every line of code in your program.


"solution"
*/


#include <stdio.h>
#include <fcnt1.h>
#include <unistd.h>
int main() {
int fd;
char buffer[100];
//open or create the file for writing only
fd = open("demo.txt, O_WRONLY | O_CREAT, 0644);
write(fd, "Hello World", 11);
close(fd); //close the file after writing
// open the file for reading
fd = open("demo.txt", O_RDONLY);
read(fd, buffer, 11);
close(fd); //Closethe file after reading
//Ptint the read content
printf("Content read from the file: %s\n", buffer);
return 0;
}
