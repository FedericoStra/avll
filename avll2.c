//#include <sys/types.h>
//#include <sys/stat.h>
//#include <fcntl.h>
#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>

int main(int argc, char *argv[], char *envp[]) {
    char buf[BUFSIZ];
    ssize_t nread;
    int nchars = 0;
    int nlines = 0;
    while ((nread = read(STDIN_FILENO, buf, BUFSIZ)) > 0) {
        int i;
        nchars += nread;
        for (i = 0; i < nread; i++)
            if (buf[i] == '\n')
                nlines++;
    }
    printf("Average line length: %f\n", (float) nchars / nlines - 1);
}

/*
int main(int argc, char *argv[], char *envp[]) {
    int fd;
    struct stat st;

    if (argc != 2) {
        fprintf(stderr, "Usage: %s <pathname>\n", argv[0]);
        exit(EXIT_FAILURE);
    }

    if ((fd = open(argv[1], O_RDONLY)) == -1) {
        perror("open");
        exit(EXIT_FAILURE);
    }

    if (fstat(fd, &st) == -1) {
        perror("stat");
        exit(EXIT_FAILURE);
    }

    printf("BUFSIZ = %d\n", BUFSIZ);
    printf("blksize_t = %d\n", st.st_blksize);

    exit(EXIT_SUCCESS);
}
*/
