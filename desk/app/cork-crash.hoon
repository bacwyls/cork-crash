
/+  default-agent, dbug, agentio
=,  format
:: ::
|%
+$  versioned-state
  $%  state-0
  ==
+$  state-0  $:
  %0
  ==
+$  card     card:agent:gall
--
%-  agent:dbug
=|  state-0
=*  state  -
^-  agent:gall
=<
|_  =bowl:gall
+*  this  .
    def   ~(. (default-agent this %|) bowl)
    hc    ~(. +> bowl)
    io    ~(. agentio bowl)
::
::
++  on-fail   on-fail:def
++  on-leave  on-leave:def
++  on-peek   on-peek:def
++  on-arvo   on-arvo:def
++  on-save   on-save:def
++  on-init   on-init:def
++  on-load   on-load:def
++  on-agent  on-agent:def
++  on-poke
  |=  [=mark =vase]
  ^-  (quip card _this)
  ?+  mark  (on-poke:def mark vase)
      %noun
    =/  act  !<(* vase)
    ?:  =(act 0)
        ~&  >  [%watching]
        :_  this
        (watch ~sampel-samweg)
    ?:  =(act 1)
        ~&  >  [%leaving]
        :_  this
        (leave ~sampel-samweg)
    `this
  ==
++  on-watch  on-watch:def
--
:: ::
|_  bowl=bowl:gall
++  leave
  |=  =ship
  ^-  (list card)
  :~
  [%pass /some/wire %agent [ship %agent-name] %leave ~]
  ==
++  watch
  |=  =ship
  ^-  (list card)
  :~
  [%pass /some/wire %agent [ship %agent-name] %watch /some/path]
  ==
-- 

