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
 
 
 
 urandom (4) >>  urandom  (4)   ( Русские man: Специальные файлы /dev/* )   urandom  (4)   ( Linux man: Специальные файлы /dev/* ) 
   
 ИМЯ 

random, urandom - устройства генераторов случайных чисел, встроенных в ядро
   
 ОПИСАНИЕ 

Специальные символьные файлы  /dev/random  и 
 /dev/urandom  (имеются начиная с Linux 1.3.30)
предоставляют интерфейс к генератору случайных чисел, встроенному в ядро.  
Файла  /dev/random  имеет старший номер устройства~1,
и младший номер устройства~8.  Файл  /dev/urandom 
имеет старший номер устройства~1 и младший номер устройства~9.
 

Генератор случайных чисел собирает окружающий шум 
с драйверов устройств и из других источников в пул энтропии.  
Генератор также постоянно оценивает количество бит шума в пуле энтропии. 
Именно с помощью этого пула создаются случайные числа.
 

При чтении устройство  /dev/random  возвращает единичные случайные
байты, количество битов шума в которых равно количеству бит шума в
пуле энтропии.
 /dev/random  следует использовать, если требуется высокий
коэффициент случайности, например, при использовании одноразовой
шифровки (one-time pad) или при генерации ключа.
Если пул энтропии пуст, попытка чтения  /dev/random  приведёт к
задержке, пока не будет собран дополнительный окружающий шум.
 

При чтении устройство  /dev/urandom  возвратит столько байтов,
сколько было запрошено.  Как результат, если в пуле недостаточная
энтропия, то возвращённые значения теоретически нестойки к
криптографической атаке на алгоритмы, используемые драйвером.  О том,
как это сделать, не сказано в современной несекретной литературе, но
теоретически возможно, что такая атака может существовать.  Если это
важно для вашего приложения, используйте лучше  /dev/random .
   
 КОНФИГУРИРОВАНИЕ 

Если в вашей системе ещё не созданы
 /dev/random  и  /dev/urandom , то их можно создать следующими
командами:
 
         mknod -m 644 /dev/random c 1 8
        mknod -m 644 /dev/urandom c 1 9
        chown root:root /dev/random /dev/urandom
 

  
Когда Linux-система запускается без участия человека,
пул энтропии может оказаться в довольно предсказуемом состоянии.
Это снижает значимый объем шума в пуле энтропии ниже оцениваемого. 
Для преодоления этого эффекта информация в пуле энтропии сохраняется
во время выключения и восстанавливается во время запуска системы.
Для этого добавьте следующие строки в скрипт, который выполняется при 
запуске Linux системы: 
 
         echo "Initializing kernel random number generator..."
        # Инициализировать генератор случайных чисел ядра значениями 
        # последнего выключения (или запуска системы).  Загрузить и 
        # затем сохранить 512 байт, которые составляют пул энтропии.
        if [ -f /var/random-seed ]; then
                cat /var/random-seed >/dev/urandom
        fi
        dd if=/dev/urandom of=/var/random-seed count=1
 

 
Также добавьте следующие строки в скрипт, который выполняется при 
завершении работы Linux системы:
  
         # Сохранить источник случайности для генератора случайных чисел  
        # при завершении работы.  Сохранить 512 байт, которые составляют 
        # пул энтропии для генератора случайных чисел.
        echo "Saving random seed..."
        dd if=/dev/urandom of=/var/random-seed count=1
 

   
 ФАЙЛЫ 

/dev/random
 

/dev/urandom
   
 АВТОР 

Генератор случайных чисел для ядра написал
Theodore Ts'o ( tytso@athena.mit.edu ).
   
 СМОТРИ ТАКЖЕ 

mknod (1)
 

RFC 1750, "Randomness Recommendations for Security"
 

 
   Index 
 
 ИМЯ 
 ОПИСАНИЕ 
 КОНФИГУРИРОВАНИЕ 
 ФАЙЛЫ 
 АВТОР 
 СМОТРИ ТАКЖЕ 
 
 
 
 
 
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