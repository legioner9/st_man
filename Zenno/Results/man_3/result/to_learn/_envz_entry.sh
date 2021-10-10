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
 
 
 
 envz_entry (3) >>  envz_entry  (3)   ( Русские man: Библиотечные вызовы )   envz_entry  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

envz_add, envz_entry, envz_get, envz_merge,
envz_remove, envz_strip - поддержка строк в окружении
   
 СИНТАКСИС 

 
 #include < envz.h > 

 error_t 
 envz_add(char ** envz , size_t * envz_len , 
 
                 const char * name , const char * value ); 

 char * 
 envz_entry(const char * envz , size_t * envz_len , const char * name ); 

 char * 
 envz_get(const char * envz , size_t * envz_len , const char * name ); 

 error_t 
 envz_merge(char ** envz , size_t * envz_len , 
 
                 const char * envz2 , size_t  envz2_len , int  override ); 

 void 
 envz_remove(char ** envz , size_t * envz_len , const char * name ); 

 void 
 envz_strip(char ** envz , size_t * envz_len ); 

 

   
 ОПИСАНИЕ 

Эти функции специфичны для glibc.
 

Вектор argz является указателем на символьный буфер вместе с длиной, смотрите
 argz_add (3).

Вектор envz является особым вектором argz, где строки имеют форму
"имя=значение". Все, что расположено за первым '=', считается значением.
Если нет символов '=', то значение считается равным NULL.
(Но значение в случае просто указания '=' равно пустой строке "".)
 

Эити функции предназначены для работы с векторами envz.
 

 envz_add() 

добавляет строку
 name = value 

(в случае, если
 value 

не равно NULL) или
 name 

(в случае, если
 value 

равно NULL) в вектор envz
(* envz ,* envz_len )

и обновляет 
* envz 

и
* envz_len .

Если запись с таким
 name 

уже существует, то она удаляется.
 

 envz_entry() 

ищет
 name 

в векторе envz
( envz , envz_len )

и возвращает запись, если он найден и NULL, если он не найден.
 

 envz_get() 

ищет
 name 

в векторе envz
( envz , envz_len )

и возвращает значение, если он найден и NULL, если он не найден.
(Заметим, что значение само по себе может быть равно NULL,
особенно если есть запись
 name 

без знака '='.)
 

 envz_merge() 

добавляет запись в 
 envz2 

в
* envz ,

как если бы это делалось с помощью
 envz_add() .

Если
 override 

верно, то значения в
 envz2 

будут превалировать над значениями с такими же именами в
* envz ,

иначе - нет.
 

 envz_remove() 

удаляет записи
 name 

из
(* envz ,* envz_len )

если там есть такие.
 

 envz_strip 

удаляет все записи со значением NULL.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Все функции envz, реализующие распределение памяти, возвращают данные
типа  error_t , причем возвращают  0  при нормальном завершении работы
и  ENOMEM  при ошибках.
   
 ПРИМЕРЫ ИСПОЛЬЗОВАНИЯ 

 
 #include < stdio.h >
#include < envz.h >
int
main(int argc, char *argv[], char *envp[]) {
        int i, e_len = 0;
        char *str;

        for (i=0; envp[i] != NULL; i++)
                e_len += strlen(envp[i]) + 1;

        str = envz_entry(*envp, e_len, "HOME");
        printf("%s\n", str);
        str = envz_get(*envp, e_len, "HOME");
        printf("%s\n", str);
        return 0;
}
 

   
 ЗАМЕЧАНИЯ 

Эти функции являются расширением GNU. Работайте с ними аккуратно.
   
 СМ. ТАКЖЕ 

 argz (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 ПРИМЕРЫ ИСПОЛЬЗОВАНИЯ 
 ЗАМЕЧАНИЯ 
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