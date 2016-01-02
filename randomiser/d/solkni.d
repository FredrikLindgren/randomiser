ALTER_TRANS obssol01 BEGIN 25 END BEGIN 0 END BEGIN "TRIGGER" ~False()~ END

APPEND obssol01
  IF ~~ sol1
    SAY @0
    ++ @1 + help
    ++ @2 + go
  END

  IF ~~ go
    SAY @3
    IF ~~ THEN DO ~ActionOverride("obssol02",EscapeArea()) ActionOverride("obssol03",EscapeArea()) EscapeArea()~ EXIT
  END

  IF ~~ help
    SAY @4
    ++ @5 + help2
    ++ @6 + go2
  END

  IF ~~ go2
    SAY @7
    IF ~~ THEN DO ~ActionOverride("obssol02",EscapeArea()) ActionOverride("obssol03",EscapeArea()) EscapeArea()~ EXIT
  END

  IF ~~ help2
    SAY @8
    ++ @9 DO ~SetGlobal("flrsolamnic","GLOBAL",1) SetGlobal("TalkedPCSphere","LOCALS",1)~ + help3
  END

  IF ~~ help3
    SAY @11
    IF ~~ THEN UNSOLVED_JOURNAL @10 EXIT
  END
END

EXTEND_BOTTOM obssol01 25
++ #61448 + sol1
END

EXTEND_BOTTOM obssol01 15
IF ~Global("flrsolamnic","GLOBAL",1)~ THEN EXIT
END

EXTEND_BOTTOM obssol01 24
IF ~Global("PCSphere","GLOBAL",0)~ THEN DO ~AddExperienceParty(45000)
SetGlobal("SolamnicPrelate","GLOBAL",2)
ActionOverride("obssol02",EscapeAreaObject("Tran0400"))
ActionOverride("obssol03",EscapeAreaObject("Tran0400"))
EraseJournalEntry(@10)
EraseJournalEntry(@18)
EraseJournalEntry(@19)
EraseJournalEntry(@13)
EraseJournalEntry(@21)
EscapeAreaObject("Tran0400")~ SOLVED_JOURNAL @12 EXIT
END

ADD_TRANS_TRIGGER hprelate 28 ~Global("PCSphere","GLOBAL",1)~

EXTEND_BOTTOM hprelate 28
+ ~Global("PCSphere","GLOBAL",0)~ + #42239 DO ~SetGlobal("SolamnicPrelate","GLOBAL",1)~ UNSOLVED_JOURNAL @13 GOTO 25
+ ~Global("PCSphere","GLOBAL",0)~ + #42240 DO ~SetGlobal("SolamnicPrelate","GLOBAL",1)~ UNSOLVED_JOURNAL @13 GOTO 25
END

APPEND corneil
  IF ~~ cwsol1
    SAY @14
    ++ @15 DO ~SetGlobal("SolamnicKnights","GLOBAL",1)~ + cwsol2
  END
  IF ~~ cwsol2
    SAY @16
    IF ~~ THEN UNSOLVED_JOURNAL @21 EXIT
  END
END

EXTEND_BOTTOM corneil 0
+ ~Global("flrsolamnic","GLOBAL",1)~ + @17 + cwsol1
END

ADD_TRANS_TRIGGER ribald 34 ~Global("PCSphere","GLOBAL",1)~

EXTEND_BOTTOM ribald 33
IF ~Global("flrsolamnic","GLOBAL",1)~ THEN DO ~EraseJournalEntry(@21)~ UNSOLVED_JOURNAL @18 EXIT
END

EXTEND_BOTTOM ribald 34
+ ~Global("flrsolamnic","GLOBAL",1)~ + #42026 DO ~EraseJournalEntry(@18) EraseJournalEntry(@21)~ UNSOLVED_JOURNAL @19 GOTO 35
+ ~Global("flrsolamnic","GLOBAL",1)~ + #42027 DO ~EraseJournalEntry(@18) EraseJournalEntry(@21)~ UNSOLVED_JOURNAL @19 GOTO 36
END

EXTEND_BOTTOM mgkhol01 4
IF ~Global("flrsolamnic","GLOBAL",1)~ THEN DO ~AddExperienceParty(45000)
GiveItemCreate("BELT02",LastTalkedToBy,0,0,0)
CreateVisualEffectObject("ICCSWOUI",Myself)
Wait(1)
ActionOverride("obssol01",ForceSpell(Myself,DRYAD_TELEPORT))
ActionOverride("obssol02",ForceSpell(Myself,DRYAD_TELEPORT))
ActionOverride("obssol03",ForceSpell(Myself,DRYAD_TELEPORT))
EraseJournalEntry(@19)
EraseJournalEntry(@10)
EraseJournalEntry(@13)
SetGlobal("SolamnicPrelate","GLOBAL",1)
SetGlobal("Solamnicbuttplug","GLOBAL",1)
ForceSpell(Myself,DRYAD_TELEPORT)~ SOLVED_JOURNAL @20 EXIT
END

REPLACE_STATE_TRIGGER obssol01 25 ~Global("TalkedPCSphere","LOCALS",0) Global("PCSphere","GLOBAL",0) Dead("lavok02") GlobalGT("PowerObsidianSphere","GLOBAL",0)~
