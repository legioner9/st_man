#!/bin/bash

#. "$HOME/.bashrc"

filename="$HOME/"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#---------------------------------------
:<<end_of_comments


 
 
 
 
 
Профиль:  Аноним  ( вход  |  регистрация ) 

 
 
 
 
 
 

 
 
 
 
  НОВОСТИ  ( + )
 
   КОНТЕНТ 
 
   WIKI 
 
    MAN'ы 
 
    ФОРУМ 
 
 Поиск  ( теги )
 
 
 

 

           
 
 

 
 
 
 
 
 
 
 [  новости  / +++  |  форум  |  wiki  |  теги 
|  
] 
 
 
 
 


 
 
 
 
 
 
 
 
 
 

 Интерактивная система просмотра системных руководств (man-ов) 
  
 
 
 

 
   Тема Набор Категория   
 

  
 Solaris man
 FreeBSD man
 Разные man
 Русские man
 Linux man
 POSIX man
 
 
	   All
	   1
	   2
	   3
	   4
	   5
	   6
	   7
	   8
	   9
 

 
 
  [ Cписок руководств  |  Печать ] 
 
 
 
 syscalls (2) >>  syscalls  (2)   ( Русские man: Системные вызовы )   syscalls  (2)   ( Linux man: Системные вызовы ) 
   
 НАЗВАНИЕ 

none - список всех системных вызовов
   
 СИНТАКСИС 

Системные вызовы Linux 2.0.
   
 ОПИСАНИЕ 

В Linux 2.0.34 существует 164 системных вызова, перечисленных в
 /usr/include/asm/unistd.h .

Эта страница содержит их список (с ссылками, если вы используете навигатор).
 
 _llseek (2),
 _newselect (2),
 _sysctl (2),
 access (2),
 acct (2),
 adjtimex (2),
afs_syscall,
 alarm (2),
 bdflush (2),
break,
 brk (2),
 chdir (2),
 chmod (2),
 chown (2),
 chroot (2),
 clone (2),
 close (2),
 creat (2),
 create_module (2),
 delete_module (2),
 dup (2),
 dup2 (2),
 execve (2),
 exit (2),
 fchdir (2),
 fchmod (2),
 fchown (2),
 fcntl (2),
 fdatasync (2),
 flock (2),
 fork (2),
 fstat (2),
 fstatfs (2),
 fsync (2),
ftime,
 ftruncate (2),
 get_kernel_syms (2),
 getdents (2),
 getegid (2),
 geteuid (2),
 getgid (2),
 getgroups (2),
 getitimer (2),
 getpgid (2),
 getpgrp (2),
 getpid (2),
 getppid (2),
 getpriority (2),
 getrlimit (2),
 getrusage (2),
 getsid (2),
 gettimeofday (2),
 getuid (2),
gtty,
 idle (2),
 init_module (2),
 ioctl (2),
 ioperm (2),
 iopl (2),
 ipc (2),
 kill (2),
 link (2),
lock,
 lseek (2),
 lstat (2),
 mkdir (2),
 mknod (2),
 mlock (2),
 mlockall (2),
 mmap (2),
 modify_ldt (2),
 mount (2),
 mprotect (2),
mpx,
 mremap (2),
 msync (2),
 munlock (2),
 munlockall (2),
 munmap (2),
 nanosleep (2),
 nice (2),
oldfstat, oldlstat, oldolduname, oldstat, olduname,
 open (2),
 pause (2),
 personality (2),
phys,
 pipe (2),
prof, profil,
 ptrace (2),
 quotactl (2),
 read (2),
 readdir (2),
 readlink (2),
 readv (2),
 reboot (2),
 rename (2),
 rmdir (2),
 sched_get_priority_max (2),
 sched_get_priority_min (2),
 sched_getparam (2),
 sched_getscheduler (2),
 sched_rr_get_interval (2),
 sched_setparam (2),
 sched_setscheduler (2),
 sched_yield (2),
 select (2),
 setdomainname (2),
 setfsgid (2),
 setfsuid (2),
 setgid (2),
 setgroups (2),
 sethostname (2),
 setitimer (2),
 setpgid (2),
 setpriority (2),
 setregid (2),
 setreuid (2),
 setrlimit (2),
 setsid (2),
 settimeofday (2),
 setuid (2),
 setup (2),
 sgetmask (2),
 sigaction (2),
 signal (2),
 sigpending (2),
 sigprocmask (2),
 sigreturn (2),
 sigsuspend (2),
 socketcall (2),
 ssetmask (2),
 stat (2),
 statfs (2),
 stime (2),
stty,
 swapoff (2),
 swapon (2),
 symlink (2),
 sync (2),
 sysfs (2),
 sysinfo (2),
 syslog (2),
 time (2),
 times (2),
 truncate (2),
ulimit,
 umask (2),
 umount (2),
 uname (2),
 unlink (2),
 uselib (2),
 ustat (2),
 utime (2),
 vhangup (2),
 vm86 (2),
 wait4 (2),
 waitpid (2),
 write (2),
 writev (2).
 
Пять указанных далее вызовов устарели:
oldfstat, oldlstat, oldolduname, oldstat и olduname
(см.  obsolete (2)),-
и 11 еще не реализованы:
afs_syscall, break, ftime, gtty, lock, mpx, phys, prof, profil,
stty and ulimit (см.  unimplemented (2)).
Однако,  ftime (3),  profil (3) и  ulimit (3) существуют
в виде библиотечных функций.
Слот phys в версиях ядра 2.1.116 и более поздних используется umount2;
phys никогда не будет включен в какие-либо версии.
Грубо говоря, код, относящийся к системному вызову
под номером __NR_xxx, заданный в
 /usr/include/asm/unistd.h ,

находится в исходных текстах процедуры
 sys_xxx() .

(Соответствующая таблица для i386 находится в файле
 /usr/src/linux/arch/i386/kernel/entry.S ).

Правда, существует много исключений из этого правила,
в основном, из-за того, что старые системные
вызовы заменены на новые.
Ниже описаны детали, касающиеся ядра Linux 2.0.34.
Определения __NR_oldstat и __NR_stat ссылаются на функции
sys_stat() и sys_newstat(), что справедливо также для
 fstat 

и
 lstat .

Аналогичным образом определения __NR_oldolduname, __NR_olduname и
__NR_uname ссылаются на sys_olduname(), sys_uname()
и sys_newuname().
Таким образом, __NR_stat и __NR_uname всегда ссылаются на
новую версию системного вызова, а старые существуют
для обеспечения совместимости новой версии с предыдущими.
Это не касается
 select 

и
 mmap .

Они используют пять(или больше) параметров и вызывают проблемы
при передаче параметров в i386. Таким образом, в то время, как
в других архитектурах sys_select() и sys_mmap() соответствовали
__NR_select и __NR_mmap, в i386 они соответствовали old_select()
и old_mmap(); это процедуры, использующие указатель на блок
параметров. В настоящий момент передача пяти параметров уже не 
составляет проблемы и существует __NR__newselect (используемый в
libc 6), который ссылается на sys_select().
У двух других системных вызовов, __NR__llseek и __NR__sysctl,
отсутствует дополнительный знак подчеркивания sys_llseek() и sys_sysctl().
Также существует __NR_readdir, относящийся к old_readdir(),
который может прочитать максимум одну запись из каталога
за один раз и который сейчас заменен на sys_getdents().
И еще: системный вызов 166, соответствующий sys_vm86(),
вообще не имеет символьного имени. Эта версия заменила
sys_vm86old() с номером __NR_vm86.
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 
 
 
 
 
 Поиск по тексту MAN-ов:  
 
 
 
 
 
 
 
 
 
 
 


 
 


 
 
 
 
 
Спонсоры:
 
 
 
 
 
 
 
 
Хостинг:
 

 

 


 
 
 
 Закладки на сайте 
 Проследить за страницей 
 
 
Created 1996-2021 by  Maxim Chirkov 
 Добавить ,  Поддержать ,  Вебмастеру 
 
 
 
 


 
 
 






end_of_comments
#---------------------------------------

unset filename