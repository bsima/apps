::  status page for your Star
::
::  OG: https://github.com/litpub/doppler
::
::  outer gate is a standard generator
::
::  serve with '|serve /status %home /gen/star-status/hoon'
::
|=  [[now=@da eny=@ =beak] $~ $~]
::
::  :-  %build
|=  [authorized=? request:http]
^-  simple-payload:http
:-  [200 ['content-type' 'text/html']~]
:-  ~
%-  as-octs:mimes:html
%-  crip
%-  en-xml:html
^-  manx
;html
  ;head
    ;meta(charset "utf-8");
    ;title: {<p.beak>} status
  ==
  ;body
  ;main
    ;h1: {<p.beak>} status
      ;p:  {<p.beak>} is online with a base hash of {<.^(@uv %cz /=base/(scot %da now))>}
    ==
  ==
==
