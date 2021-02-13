::
::  urbit password store.
::
/+  *server, default-agent
|%
+$  card  card:agent:gall
--
^-  agent:gall
=|  state=@
|_  =bowl:gall
+*  this      .
    ups-core  +>
    cc        ~(. ups-core bowl)
    def       ~(. (default-agent this %|) bowl)
::
++  on-init
  ^-  (quip card _this)
  =/  launcha  [%launch-action !>([%add %ups [[%basic 'ups' '/~ups/img/tile.png' '/~ups'] %.y]])]
  =/  filea  [%file-server-action !>([%serve-dir /'~ups' /app/ups %.n %.n])]
  :_  this
  :~  [%pass /srv [our.bowl %file-server] %poke filea]
      [%pass /ups %agent [our.bowl %launch] %poke launcha]
      ==
::
++  on-save   on-save:def
++  on-load   on-load:def
++  on-poke
  |=  [=mark =vase]
  ~&  >  state=state
  ~&  got-poked-with-thing=mark
  =.  state  +(state)
  `this
::
++  on-watch
  |=  =path
  ^-  (quip card _this)
  ?:  ?=([%http-response *] path)
    `this
  ?.  =(/ path)
    (on-watch:def path)
  [[%give %fact ~ %json !>(*json)]~ this]
++  on-leave  on-leave:def
++  on-peek   on-peek:def
++  on-agent  on-agent:def
++  on-arvo
  |=  [=wire =sign-arvo]
  ^-  (quip card _this)
  ?.  ?=(%bound +<.sign-arvo)
    (on-arvo:def wire sign-arvo)
  [~ this]
++  on-fail   on-fail:def
--
