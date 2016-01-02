ADD_STATE_TRIGGER udduer01 12 ~Global("DrowGuest","GLOBAL",0)~

ALTER_TRANS udduer01 BEGIN 14 END BEGIN 0 2 END BEGIN "TRIGGER" ~False()~ END

APPEND udduer01

  IF ~Global("PlayerLooksLikeDrow","GLOBAL",0) Global("DrowGuest","GLOBAL",1)~ drowguest
  SAY @0
    IF ~Global("flgoodstuff","LOCALS",0)~ DO ~SetGlobal("flgoodstuff","LOCALS",1)~ GOTO goodstuff0
    IF ~Global("flgoodstuff","LOCALS",1)~ GOTO goodstuff1
  END

  IF ~~ goodstuff0
  SAY @1
  =   @2
    IF ~~ GOTO goodstuff1
  END

  IF ~~ goodstuff1
  SAY @3
    ++ #50226 + 14
    ++ #50227 + 13
    ++ @4 DO ~StartStore("udduer01",LastTalkedToBy())~ EXIT
    ++ @5 DO ~StartStore("udduer02",LastTalkedToBy())~ EXIT
  END
END

EXTEND_TOP udduer01 14
  ++ @6 DO ~StartStore("udduer01",LastTalkedToBy())~ EXIT
  + ~Global("DrowGuest","GLOBAL",1)~ + @7 DO ~StartStore("udduer02",LastTalkedToBy())~ EXIT
END

//state 10 is only accessible via NumTimesTalkedTo(0) so it does not need to be altered (?)
