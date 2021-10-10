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
 
 
 
 __setfpucw (3) >>  __setfpucw  (3)   ( Русские man: Библиотечные вызовы )   __setfpucw  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

__setfpucw - устанавливает контрольное слово fpu для архитектуры i386 (устаревшая функция)
   
 СИНТАКСИС 

 #include < i386/fpu_control.h > 

 
 void __setfpucw((unsigned short)  control_word ); 

 

   
 ОПИСАНИЕ 

 __setfpucw 

передает
 control_word 

в регистр fpu (устройства для обработки операций с плавающей точкой) для архитектуры 
i386. Эта функция используется для предотвращения сбоев в операциях с плавающей
точкой, а также для управления точностью и округлением в этих операциях.
   
 ПРИМЕРЫ ИСПОЛЬЗОВАНИЯ 

 __setfpucw(0x1372) 

устанавливает следующие параметры fpu:
 

      - повышенная точность;  
 

      - округление до ближайшего числа;
 

      - прерывания при переполнении, делении на ноль и NaN.
 

   
 ДОСТУПНОСТЬ 

Эта функция присутствует только в glibc 2.1.
Существуют новые функции из ISO C99, прототипы ее есть в
 /usr/include/fenv.h .

Для контроля режимов округления ими являются:
 fegetround ,

 fesetround .

Для работы с числами с плавающей точкой:
 fegetenv ,

 feholdexcept ,

 fesetenv ,

 feupdateenv .

Для обработки ошибок fpu:
 feclearexcept ,

 fegetexceptflag ,

 feraiseexcept ,

 fesetexceptflag ,

 fetestexcept .

 

Если прямой доступ к контрольному слову FPU все равно необходим, то
могут быть использованы макросы FPU_GETCW и _FPU_SETCW из
 /usr/include/fpu_control.h .

   
 СМ. ТАКЖЕ 

 feclearexcept (3)

 

 /usr/include/i386/fpu_control.h 

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ПРИМЕРЫ ИСПОЛЬЗОВАНИЯ 
 ДОСТУПНОСТЬ 
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