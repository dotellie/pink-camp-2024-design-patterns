#include <stdio.h> 
#include <stdlib.h>
#include <execinfo.h>
#include <signal.h>
#include <unistd.h>
#include <string.h>

void handler(int sig) {
    void *array[10];
    size_t size;

    size = backtrace(array, 10);

    fprintf(stderr, "Error: signal %d:\n", sig);
    backtrace_symbols_fd(array, size, STDERR_FILENO);
    exit(1);
}

int main() {
  signal(SIGSEGV, handler);
  signal(SIGABRT, handler);

  char *name = "world";
  printf("Hello %s!\n", name);
  return 0;
}

