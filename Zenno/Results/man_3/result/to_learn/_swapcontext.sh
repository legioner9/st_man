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
 
 
 
 swapcontext (3)   swapcontext  (2)   ( Linux man: Системные вызовы )   swapcontext  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  swapcontext  (3)   ( Русские man: Библиотечные вызовы )   swapcontext  (3)   ( Linux man: Библиотечные вызовы )   swapcontext  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

makecontext, swapcontext - управление контекстом пользователя
   
 СИНТАКСИС 

 #include < ucontext.h > 

 
 void makecontext(ucontext_t * ucp , void * func (), 

 int  argc , ...); 

 

 int swapcontext (ucontext_t * oucp , ucontext_t * ucp ); 

   
 ОПИСАНИЕ 

В системах, совместимых с SysV-like имеется тип  ucontext_t ,
определенный в
 < ucontext.h > ,

и четыре функции
 getcontext() ,  setcontext() ,  makecontext() 
и  swapcontext() , позволяющие переключать на уровне пользователя
переключать контекст между различными подпроцессами (threads) в рамках
одного процесса.
 

Описание типа и первых двух функций приведено в
 getcontext (2).

 

Функция  makecontext()  изменяет контекст, на который указывает
 ucp  (полученный с помощью вызова  getcontext() ).
Перед вызовом  makecontext()  необходимо выделить для этого
контекста новый стек, указав его в  ucp->uc_stack , и определить
контекст наследника, указав его в  ucp->uc_link .
В дальнейшем, когда этот контекст активируется (с помощью
 setcontext()  или  swapcontext() ), то сперва вызвается
функция  func  с аргументами, указанными за  argc  (при этом
 argc  должен содержать количество этих аргументами), а затем,
после возврата из этой функции, активируется контекст наследника. Если
указатель на контекст наследника равен NULL, то подпроцесс выходит.
 

Функция  swapcontext()  сохраняет текущий контекст в структуру, на
которую указывает  oucp , а затем активирует контекст, на который
указывает  ucp .
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

При успешном завершении  makecontext()  возвращает 0, а  swapcontext() 
не возвращется. (Но может вернуться позже, в том случае, если будет
активирован  oucp . При этом, похоже,  swapcontext()  возвращает 0.)
При ошибке обе функции возвращают -1 и устанавливают  errno .
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 ENOMEM 

 
Оставлено недостаточно места в стеке.
 
   
 ЗАМЕЧАНИЯ 

 ucp->uc_stack  интерпретируется так же, как и в
 sigaltstack (2),

то есть эта структура содержит начало и длину области памяти,
используемой как стек, независимо от направления роста стека. Поэтому
программе пользователя нет необходимости беспокоиться об этом
направлении.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

SUSv2, POSIX 1003.1-2001.
   
 СМ. ТАКЖЕ 

 getcontext (2),

 sigaction (2),

 sigaltstack (2),

 sigprocmask (2),

 sigsetjmp (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
 ЗАМЕЧАНИЯ 
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