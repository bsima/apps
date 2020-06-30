!:
:-  %say
|=  [* [ship=@ subname=tape ~] ~]
:-  %noun
=/  maxx  `@ux`65.535
::
=/  ship-names
  %+  turn  (gulf 0x1 maxx)
  |=  n=@
  `@p`(cat 4 ship n)
::
=/  cord-names
  %+  turn  ship-names
  |=  a=@p
  (scot %p a)
::
%+  skim  cord-names
|=  a=@t
?!(.=(~ (find subname (trip a))))
