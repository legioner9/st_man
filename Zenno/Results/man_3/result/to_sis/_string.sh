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
 
 
 
 string (3)   string  (3)   ( Solaris man: Библиотечные вызовы )   string  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  string  (3)   ( Русские man: Библиотечные вызовы )   string  (3)   ( Linux man: Библиотечные вызовы ) Ключ  string  обнаружен в базе ключевых слов. 
   
 НАЗВАНИЕ 

strcasecmp, strcat, strchr, strcmp, strcoll, strcpy, strcspn,
strdup, strfry, strlen, strncat, strncmp, strncpy, strncasecmp, strpbrk,
strrchr, strsep, strspn, strstr, strtok, strtok_r, strxfrm, index, rindex
- операции со строками
   
 СИНТАКСИС 

 #include < strings.h > 

 int strcasecmp(const char * s1 , const char * s2 ); 

 int strncasecmp(const char * s1 , const char * s2 , size_t  n ); 

 char *index(const char * s , int  c ); 

 char *rindex(const char * s , int  c ); 

 #include < string.h > 

 char *strcat(char * dest , const char * src ); 

 char *strchr(const char * s , int  c ); 

 int strcmp(const char * s1 , const char * s2 ); 

 int strcoll(const char * s1 , const char * s2 ); 

 char *strcpy(char * dest , const char * src ); 

 size_t strcspn(const char * s , const char * reject ); 

 char *strdup(const char * s ); 

 char *strfry(char * string ); 

 size_t strlen(const char * s ); 

 char *strncat(char * dest , const char * src , size_t  n ); 

 int strncmp(const char * s1 , const char * s2 , size_t  n ); 

 char *strncpy(char * dest , const char * src , size_t  n ); 

 char *strpbrk(const char * s , const char * accept ); 

 char *strrchr(const char * s , int  c ); 

 char *strsep(char ** stringp , const char * delim ); 

 size_t strspn(const char * s , const char * accept ); 

 char *strstr(const char * haystack , const char * needle ); 

 char *strtok(char * s , const char * delim ); 

 size_t strxfrm(char * dest , const char * src , size_t  n ); 
 

   
 ОПИСАНИЕ 

Данные функции предназначены для работы со строками, 
заканчивающимися NUL. Подробное описание функций смотрите на
соответствующей странице руководства.
   
 СМ. ТАКЖЕ 

 index (3),

 rindex (3),

 strcasecmp (3),

 strcat (3),

 strchr (3),

 strcmp (3),

 strcoll (3),

 strcpy (3),

 strcspn (3),

 strdup (3),

 strfry (3),

 strlen (3),

 strncat (3),

 strncmp (3),

 strncpy (3),

 strncasecmp (3),

 strpbrk (3),

 strrchr (3),

 strsep (3),

 strspn (3),

 strstr (3),

 strtok (3),

 strxfrm (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
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