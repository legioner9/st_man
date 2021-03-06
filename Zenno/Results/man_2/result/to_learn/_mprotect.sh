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
 
 
 
 mprotect (2)   mprotect  (2)   ( Solaris man: Системные вызовы )   mprotect  (2)   ( FreeBSD man: Системные вызовы ) >>  mprotect  (2)   ( Русские man: Системные вызовы )   mprotect  (2)   ( Linux man: Системные вызовы )   mprotect  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

mprotect - контролирует доступ к области памяти
   
 СИНТАКСИС 

 #include < sys/mman.h > 

 int mprotect(const void * addr , size_t  len , int  prot );
 

   
 ОПИСАНИЕ 

 mprotect 

контролирует доступ к области памяти. Если программой
производится запрещенный этой функцией доступ к памяти, то
такая программа получает сигнал
 SIGSEGV .

 

 prot 

состоит из следующих побитно и логически сложенных значений:
 
 PROT_NONE 

 
Доступ к памяти запрещен.
 PROT_READ 

 
Данные в памяти можно читать.
 PROT_WRITE 

 
В память можно записать информацию.
 PROT_EXEC 

 
Память может содержать исполняемый код.
 
 

Новые установки защиты заменяют предыдущие. Например, если память была
ранее помечена  PROT_READ , а  mprotect  вызывается с помощью
параметра  prot , равного  PROT_WRITE , то данные, находящиеся в памяти, 
невозможно будет считывать.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

При удачном завершении вызова возвращаемое значение равно нулю. При ошибке
оно равно -1, а переменной
 errno 

присваивается номер ошибки.
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 EINVAL 

 
 addr  не является правильным указателем или не пропорционален PAGESIZE.
 EFAULT 

 
К памяти нет доступа.
 EACCES 

 
Нельзя задать этот вид доступа. Это может, например, случиться
в том случае, если при помощи функции
 mmap (2)

был отражен в память файл, который доступен только для чтения,
а затем функции
 mprotect 

задан параметр
 PROT_WRITE .

 ENOMEM 

 
Не могут быть созданы внутренные структуры ядра.
 
   
 ПРИМЕРЫ ИСПОЛЬЗОВАНИЯ 

 #include < stdio.h >
#include < stdlib.h >
#include < errno.h >
#include < sys/mman.h >
#include < limits.h >    /* для получения PAGESIZE */
#ifndef PAGESIZE
#define PAGESIZE 4096
#endif
int
main(void)
{
    char *p;
    char c;
    /* Создать буфер; по умолчанию доступ к нему
       устанавливается в PROT_READ|PROT_WRITE. */
    p = malloc(1024+PAGESIZE-1);
    if (!p) {
        perror("Невозможно выделить память malloc(1024)");
        exit(errno);
    }
    /* Выровнять пропорционально PAGESIZE; предполагается, что число должно быть кратно степени 2 */
    p = (char *)(((int) p + PAGESIZE-1) & ~(PAGESIZE-1));
    c = p[666];         /* Чтение; ok */
    p[666] = 42;        /* Запись; ok */
    /* Пометить буфер доступным только для чтения. */
    if (mprotect(p, 1024, PROT_READ)) {
        perror("Невозможно выполнить mprotect");
        exit(errno);
    }
    c = p[666];         /* Чтение; ok */
    p[666] = 42;        /* Запись; программа прекращает работу при получении сигнала SIGSEGV */
    exit(0);
}
 

   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

SVr4, POSIX.1b (в прошлом POSIX.4).  SVr4 описывает дополнительный код
ошибки EAGAIN. Коды ошибок SVr4 не полностью соответствуют кодам
ошибок в Linux.
POSIX.1b указывает, что
 mprotect 

можно использовать только в областях памяти, заданных
 mmap (2).

   
 СМ. ТАКЖЕ 

 mmap (2)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
 ПРИМЕРЫ ИСПОЛЬЗОВАНИЯ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
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