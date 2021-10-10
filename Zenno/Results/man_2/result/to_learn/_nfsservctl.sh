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
 
 
 
 nfsservctl (2) >>  nfsservctl  (2)   ( Русские man: Системные вызовы )   nfsservctl  (2)   ( Linux man: Системные вызовы ) 
   
 НАЗВАНИЕ 

nfsservctl - интерфейсная функция системного демона nfs
   
 СИНТАКСИС 

 #include < linux/nfsd/syscall.h > 

 
 nfsservctl(int  cmd , struct nfsctl_arg * argp , union nfsctl_res * resp ); 

   
 ОПИСАНИЕ 

 /*
 * Это команды, обрабатываемые nfsctl():
 */
#define NFSCTL_SVC              0       /* Процесс сервера. */
#define NFSCTL_ADDCLIENT        1       /* Добавление клиента NFS. */
#define NFSCTL_DELCLIENT        2       /* Удаление клиента NFS. */
#define NFSCTL_EXPORT           3       /* Экспорт файловой системы. */
#define NFSCTL_UNEXPORT         4       /* Отмена экспорта файловой системы. */
#define NFSCTL_UGIDUPDATE       5       /* Обновить данные uid/gid клиента. */
#define NFSCTL_GETFH            6       /* Получить fh (используется mountd) */
struct nfsctl_arg {
        int                     ca_version;     /* защита от ошибок */
        union {
                struct nfsctl_svc       u_svc;
                struct nfsctl_client    u_client;
                struct nfsctl_export    u_export;
                struct nfsctl_uidmap    u_umap;
                struct nfsctl_fhparm    u_getfh;
                unsigned int            u_debug;
        } u;
}
union nfsctl_res {
        struct knfs_fh          cr_getfh;
        unsigned int            cr_debug;
};
 

   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

При удачном завершении вызова возвращаемое значение равно нулю. При ошибке оно равно
-1, а переменной
 errno 

присваивается номер ошибки.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

 nfsservctl  - это функция, специфичная для Linux. Не рекомендуется
использовать ее в программах, переносимых на другие системы.
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
 
 
 
 
 
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