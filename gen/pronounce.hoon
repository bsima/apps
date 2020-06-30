::
::  pronounce.hoon
::
::  translates glyphs to their urbit pronunciation. takes
::  a tape and returns a tape.
::
::  example:
::
::  > +pronounce "%="
::  "cen tis "
!:
|=  [msg=tape]
=<
(turn msg translate)
|%
::  translation function
::
::  just looks up the symbol in the legend. returns '?' if
::  there's no match. could be improved with a real parser.
::
++  translate
|=  c=@tD
^-  @tD
%+  fall
  (~(get by legend) c)
'?'
::  lookup table
::
++  legend
^-  (map @t @t)
%-  malt
:~  :-   ' '   'ace '
    :-   '|'   'bar '
    :-   '\\'  'bas '
    :-   '$'   'buc '
    :-   '_'   'cab '
    :-   '%'   'cen '
    :-   ':'   'col '
    :-   ','   'com '
    :-   '"'   'doq '
    :-   '.'   'dot '
    :-   '/'   'fas '
    :-   '<'   'gal '
    :-   '  '  'gap '
    :-   '>'   'gar '
    :-   '#'   'hax '
    :-   '-'   'hep '
    :-   '{'   'kel '
    :-   '}'   'ker '
    :-   '^'   'ket '
    :-   '+'   'lus '
    :-   ';'   'mic '
    :-   '('   'pal '
    :-   '&'   'pam '
    :-   ')'   'par '
    :-   '@'   'pat '
    :-   '['   'sel '
    :-   ']'   'ser '
    :-   '~'   'sig '
    :-   '\''  'soq '
    :-   '*'   'tar '
    :-   '`'   'tic '
    :-   '='   'tis '
    :-   '?'   'wut '
    :-   '!'   'zap '
==
::  intercalate list a with element b
::
::  this is deactivated because it doesn't type check... when i
::  fix this, I can remove the extra space in the legend.
::++  cala
::  |=  [a=(list) b=@]
::  ^-  (list)
::  ::  helper function
::  =/  f  |=([p=@ q=(list)] (weld (limo [p b ~]) q))
::(reel a f)
--
