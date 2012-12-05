#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>

int main(int argc, char *argv[], char *envp[]) {
    char *lineptr = NULL;
    size_t len = 0;
    ssize_t read;
    unsigned int lines = 0, sum = 0;
    while ((read = getline(&lineptr, &len, stdin)) != -1) {
        sum += read;
        lines++;
    }
    printf("Average line length: %f\n", (float) sum / lines - 1);
}

/*
    The following is slower than Python!
*/

/*
int main(int argc, char *argv[], char *envp[]) {
    unsigned int lines = 0, sum = 0;
    int c;
    while ((c = getchar()) != EOF) {
        if (c == '\n')
            lines++;
        else
            sum++;
    }
    printf("Average line length: %f\n", (float) sum / lines);
}
*/
