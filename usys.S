#include "syscall.h"
#include "traps.h"

#define SYSCALL(nr, sym, ...) \
  .globl sym; \
  .type sym, @function; \
  sym: \
  li a7, nr; \
  ecall; \
  ret;

SYSCALL(SYS_getreadcount, SYS_getreadcount)
SYSCALL(SYS_getopenfilecount, SYS_getopenfilecount)

SYSCALL(fork)
SYSCALL(exit)
SYSCALL(wait)
SYSCALL(pipe)
SYSCALL(read)
SYSCALL(write)
SYSCALL(close)
SYSCALL(kill)
SYSCALL(exec)
SYSCALL(open)
SYSCALL(mknod)
SYSCALL(unlink)
SYSCALL(fstat)
SYSCALL(link)
SYSCALL(mkdir)
SYSCALL(chdir)
SYSCALL(dup)
SYSCALL(getpid)
SYSCALL(sbrk)
SYSCALL(sleep)
SYSCALL(uptime)
