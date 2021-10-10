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
 
 
 
 dosemu (1) >>  dosemu  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня ) 
   
 ИМЯ 

dosemu, xdosemu - запускает DOS и приложения DOS под Linux
   
 СИНТАКСИС 

 dosemu 

[
 -dumb 

]
[
 -home 

]
[
 -quiet 

]
[
 -input 

 строка_клавиш 

]
[
 -install 

 загрузочный_каталог 

]
[
 аргументы 

]
 

 xdosemu 

[
 -dumb 

]
[
 -home 

]
[
 -quiet 

]
[
 -input 

 строка_клавиш 

]
[
 -install 

 загрузочный_каталог 

]
[
 аргументы 

]
   
 ОПИСАНИЕ 

 dosemu 

является оберточным скриптом для
 dosemu.bin 

(1),
который обращается к Linux эмулятору dos, также известному как
 DOSEMU .

Оберточный скрипт также заботится (событийно) об установке частного варианта
 DOSEMU 

в домашнем каталоге пользователя, если он там отсутствует.
 

 
   
 ОПЦИИ 

 
 аргументы 

 
любое число опций, описанных в
 dosemu.bin 

(1), пожалуйста, обратитесь к его man руководству для дальнейших подробностей.
Однако, сохраняйте осторожность и корректно экранируйте специальные символы и
берите в кавычки, чтобы bash не портил аргументы, содержащие пустые символы
и обратные дроби.
 -dumb 

 
использовать режим `dumb' терминала. Работает только для тех приложений DOS,
которые выводят простой текст на стандартный вывод, но имеет преимущество, что
(А) вывод приложения DOS накапливается в буфере прокрутки xterm и (Б) можно
перенаправить его в файл, типа как
                   $ ./dosemu -dumb -E dir > listing 
 
Заметьте, что редактор/история командной строки DOSEMU command.com будет также
работать и здесь, однако, редактирование ограничено по части BACKSPACE.
 -home 

 
в дополнение к устройству C:, позволяет пользователям получить доступ к их
домашнему каталогу как устройству D:.
Заметьте, однако, что большинство файловых имен Unix будут искаженными.
 -quiet 

 
не выводить начальные комментарии и не останавливаться для подсказок
 -input 

 
Симулировать нажатия клавиш по данной
 строке_клавиш 

только после загрузки DOS. Эта опция может использоваться, чтобы автостартовать
приложения, проходя любые необходимые меню загрузки или что-либо подобное. Для
подробностей о формате строки смотрите файл README.txt. Заметьте, однако, 
что ядро FreeDos "съедает" одно нажатие клавиши при загрузке в счет ожидания
нажатия на клавишу F8. Так в этом случае всегда необходимо добавлять символ
\
r' в начало строки_клавиш. Как побочный эффект это даст проход ожидания

 -install 

 
стартуя как часть общесистемной установки, такая опция устанавливает
частный вариант отличающегося от распространяемого с DOSEMU dosemu-freedos-bin 
DOS (возможен любой проприетарный DOS, который загружается через fatfs).
 загрузочный_каталог 

является базовым именем каталога, пользователи имеют возможность
установки его внутри аналогичного каталога, где будет создан вариант
DOSEMU. Настройки в файле conf/dosemu.conf будут перекрыты этим 
загрузочным каталогом.
 
 
   
 АВТОРЫ 

 DOSEMU 

(содержащий в себе файлы
 dosemu.bin 

и 
 dosemu 

) базируется на версии 0.4 оригинальной программы, написанной Matthias Lautner
(текущий адрес которого на данный момент неизвестен).
 

Robert Sanders < gt8134b@prism.gatech.edu > поддерживал и расширял
воплощение 
 DOSEMU,  

с которым начало распространяться это man руководство. Втечение около 4-х
лет James B. MacLean < macleajb@ednet.ns.ca > был неустанным лидером команды
dosemu, реализация DPMI (которая позволила запускать Windows-3.1, dos4gw,
djgpp и прочее) произошла втечение его 'правления' и перенесла проект ближе к
состоянию Beta. Hans Lermen < lermen@fgan.de > работал над новой версией и
выпустил первый релиз версии 1.0. Сейчас Bart Oldeman < bart@dosemu.org >
является основным разработчиком этого прекрасного программного обеспечения.
Перевод выполнен Andy Shevchenko < andy@smile.org.ua >.
 
   
 ФАЙЛЫ 


 
 $HOME/.dosemurc 

 
настроечный файл на каждого пользователя
 /etc/dosemu/dosemu.conf 

 
или
 /etc/dosemu.conf 

 
общесистемный настроечный файл
 $HOME/.dosemu/boot.log 

 
файл по умолчанию для сообщений отладки и отчета
 $HOME/dosemu/bin/ 

 
 $HOME/dosemu/freedos/ 

 
 $HOME/dosemu/Xfonts/ 

 
каталоги по умолчанию локального варианта установки DOSEMU на каждого
пользователя
 /usr/local/bin/ 

 
 /usr/local/share/dosemu/ 

 
 /usr/local/share/dosemu/dosemu-bin.tgz 

 
 /usr/local/share/dosemu/dosemu-freedos-bin.tgz 

 
общесистемная установка по умолчанию, включающая в себя бинарные файлы и
шаблоны (Пути могут быть изменены втечение создания общесистемной установки).
 
 
   
 СМОТРИ ТАКЖЕ 

 dosemu.bin (1)

 

 
   Index 
 
 ИМЯ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ОПЦИИ 
 АВТОРЫ 
 ФАЙЛЫ 
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