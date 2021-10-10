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
 
 
 
 fstatfs (2)   fstatfs  (2)   ( FreeBSD man: Системные вызовы ) >>  fstatfs  (2)   ( Русские man: Системные вызовы )   fstatfs  (2)   ( Linux man: Системные вызовы ) 
   
 НАЗВАНИЕ 

statfs, fstatfs - получают статистические данные о файловой системе
   
 СИНТАКСИС 

 #include < sys/vfs.h > 

 
 int statfs(const char * path , struct statfs * buf ); 

 

 int fstatfs(int  fd , struct statfs * buf ); 

   
 ОПИСАНИЕ 

 statfs 

возвращает информацию о запущенной файловой системе.
 path 

- путь к любому файлу, который находится в запущенной файловой системе.
 buf 

- указатель на структуру 
 statfs ,

состоящую из следующих элементов:
 
 struct statfs {
   long    f_type;     /* тип файловой системы (см. ниже) */
   long    f_bsize;    /* оптимальный размер блока данных */
   long    f_blocks;   /* общее количество блоков данных в файловой системе */
   long    f_bfree;    /* количество свободных блоков */
   long    f_bavail;   /* количество свободных блоков, доступных несуперпользователю */
   long    f_files;    /* общее количество inode файловой системы */
   long    f_ffree;    /* количество свободных inode файловой системы */
   fsid_t  f_fsid;     /* идентификатор файловой системы */
   long    f_namelen;  /* максимальная длина имени файла */
   long    f_spare[6]; /* свободные поля, предназначенные для использования в будущем */
};
Типы файловых систем:
linux/affs_fs.h:
   AFFS_SUPER_MAGIC      0xADFF
linux/efs_fs.h:
    EFS_SUPER_MAGIC       0x00414A53
linux/ext_fs.h:
   EXT_SUPER_MAGIC       0x137D
linux/ext2_fs.h:
   EXT2_OLD_SUPER_MAGIC  0xEF51
   EXT2_SUPER_MAGIC      0xEF53
linux/hpfs_fs.h:
   HPFS_SUPER_MAGIC      0xF995E849
linux/iso_fs.h:
   ISOFS_SUPER_MAGIC     0x9660
linux/minix_fs.h:
   MINIX_SUPER_MAGIC     0x137F /* стандартный minix */
   MINIX_SUPER_MAGIC2    0x138F /* 30-символьный minix */
   MINIX2_SUPER_MAGIC    0x2468 /* minix V2 */
   MINIX2_SUPER_MAGIC2   0x2478 /* minix V2, 30-символьные имена */
linux/msdos_fs.h:
   MSDOS_SUPER_MAGIC     0x4d44
linux/ncp_fs.h:
   NCP_SUPER_MAGIC       0x564c
linux/nfs_fs.h:
   NFS_SUPER_MAGIC       0x6969
linux/proc_fs.h:
   PROC_SUPER_MAGIC      0x9fa0
linux/smb_fs.h:
   SMB_SUPER_MAGIC       0x517B
linux/sysv_fs.h:
   XENIX_SUPER_MAGIC     0x012FF7B4
   SYSV4_SUPER_MAGIC     0x012FF7B5
   SYSV2_SUPER_MAGIC     0x012FF7B6
   COH_SUPER_MAGIC       0x012FF7B7
linux/ufs_fs.h:
   UFS_MAGIC             0x00011954
linux/xfs_fs.h:
   XFS_SUPER_MAGIC       0x58465342
linux/xia_fs.h:
   _XIAFS_SUPER_MAGIC    0x012FD16D
 

 

 

Никто не знает, что должно содержаться в
 f_fsid 

(но смотри далее).
 

Устанавливаемые значения полей, не определенные в некоторых системах, равны нулю.
 fstatfs 

возвращает ту же информацию об открытом файле, заданном описателем
 fd .

   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

При удачном завершении возвращается 0. При ошибке возвращается
-1, а переменной
 errno 

присваивается номер ошибки.
   
 НАЙДЕННЫЕ ОШИБКИ 

Коды ошибок
 statfs :

 
 ENOTDIR 

 
Часть префикса пути
 path 

не является каталогом.
 ENAMETOOLONG 

 
Слишком длинный параметр 
 path .

 ENOENT 

 
Файла
 path 

не существует.
 EACCES 

 
Отсутствуют права на поиск в части префикса пути 
 path .

 ELOOP 

 
Слишком большое количество символьных ссылок в имени
 path .

 EFAULT 

 
 Buf 

или
 path 

указывают на неправильный адрес.
 EIO 

 
Ошибка ввода/вывода при чтении информации или записи ее в файловую систему.
 ENOMEM 

 
Недостаточно памяти в ядре.
 ENOSYS 

 
Файловая система
 path 

не поддерживает
 statfs .

 
 

Коды ошибок
 fstatfs :

 
 EBADF 

 
 fd 

не является корректным файловым описателем.
 EFAULT 

 
 buf 

указывает на неправильный адрес.
 EIO 

 
Ошибка ввода/вывода при чтении информации или записи ее в файловую систему.
 ENOSYS 

 
Файловая система, на которой открыт файл
 fd ,

не поддерживает
 statfs .

 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

Функция
 statfs 

в Linux была создана на основе аналогичной функции
в 4.4BSD (но они не используют одинаковые структуры данных).
 
   
 f_fsid 

В Solaris и POSIX 1003.1-2001 есть системный вызов
 statvfs 

возвращающий
 struct statvfs 

(определенную в
 < sys/statvfs.h > ),

содержащую
 unsigned long 

 f_fsid .

В Linux, SunOS, HPUX, 4.4BSD есть системный вызов
 statfs 

возвращаюций
 struct statfs 

(определенную в
 < sys/vfs.h > )

содержащцю
 fsid_t 

 f_fsid ,

где
 fsid_t 

определено, как
 struct { int val[2]; } .

То же самое относится и к FreeBSD, за исключением того, что исопльзуется файл
 < sys/mount.h > .

 
Общая идея заключается в том, что содержание
 f_fsid 

случайно, например - уникальные пары
( f_fsid , ino )

однозначно обозначающие файл.
Некоторые ОС используют (как вариант) номер устройства, или номер устройства
в комбинации с типом файловой системы.
Некоторые ОС ограничивают выдачу поля
 f_fsid 

только для суперпользователя (и ноль для непривилегированных пользователей),
так-как это поле используется в обработке файла на файловой системе при
экспорте NFS, и разрешение на его выдачу затрагивает проблемы безопасности.
 

В некоторых ОС
 fsid 

может использоваться, как второй параметр к системному вызову
 sysfs() .

   
 СМ. ТАКЖЕ 

 stat (2)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
 
 f_fsid 
 
 СМ. ТАКЖЕ 
 
 
 
 
 
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