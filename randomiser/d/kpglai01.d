APPEND kpglai01
  IF ~~ flaildesc
    SAY @0
      IF ~!HasItem("blun14a",Myself) !HasItem("blun14b",Myself) !HasItem("blun14c",Myself)~  GOTO noflail
      IF ~HasItem("blun14a",Myself) !HasItem("blun14b",Myself) !HasItem("blun14c",Myself)~  GOTO onehead
      IF ~!HasItem("blun14a",Myself) HasItem("blun14b",Myself) !HasItem("blun14c",Myself)~  GOTO onehead
      IF ~!HasItem("blun14a",Myself) !HasItem("blun14b",Myself) HasItem("blun14c",Myself)~  GOTO onehead
      IF ~HasItem("blun14a",Myself) HasItem("blun14b",Myself) !HasItem("blun14c",Myself)~  GOTO twohead
      IF ~HasItem("blun14a",Myself) !HasItem("blun14b",Myself) HasItem("blun14c",Myself)~  GOTO twohead
      IF ~!HasItem("blun14a",Myself) HasItem("blun14b",Myself) HasItem("blun14c",Myself)~  GOTO twohead
      IF ~HasItem("blun14a",Myself) HasItem("blun14b",Myself) HasItem("blun14c",Myself)~  GOTO luckybastard
  END

  IF ~~ noflail
    SAY @1
      IF ~~  GOTO noflail2
  END

  IF ~~ noflail2
    SAY @2
    =   @3
      IF ~~  GOTO 7
  END

  IF ~~ onehead
    SAY @4
      IF ~~  DO ~GiveItem("blun14a",LastTalkedToBy) GiveItem("blun14b",LastTalkedToBy) GiveItem("blun14c",LastTalkedToBy)~  GOTO 9
  END

  IF ~~ twohead
    SAY @5
      IF ~~  DO ~GiveItem("blun14a",LastTalkedToBy) GiveItem("blun14b",LastTalkedToBy) GiveItem("blun14c",LastTalkedToBy)~  GOTO twohead2
  END

  IF ~~ twohead2
    SAY @6
    =   @3
      IF ~~  GOTO 7
  END

  IF ~~ luckybastard
    SAY @7
      IF ~~  DO ~GiveItem("blun14a",LastTalkedToBy) GiveItem("blun14b",LastTalkedToBy) GiveItem("blun14c",LastTalkedToBy)~  GOTO luckybastard2
  END

  IF ~~ luckybastard2
    SAY @8
      IF ~~  GOTO 7
  END
END

ALTER_TRANS kpglai01 BEGIN 5 END BEGIN 0 END BEGIN "EPILOGUE" ~GOTO flaildesc~ END
