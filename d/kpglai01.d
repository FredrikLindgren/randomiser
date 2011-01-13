APPEND kpglai01
  IF ~~ flaildesc
    SAY ~He said it had powers of flame and acid and the like...things that would have aided us greatly against the trolls, had we found them in time.~
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
    SAY ~But we were captured before we had found any of the flail heads.~
      IF ~~  GOTO noflail2
  END

  IF ~~ noflail2
    SAY ~If you find the flail heads, you could assemble the weapon.~
    =   ~Lord de'Arnise and I were heading to the hidden forge.  He said it was behind a secret door in the armory on the keep's first floor.  That might be a good place to look.~
      IF ~~  GOTO 7
  END

  IF ~~ onehead
    SAY ~I...have one of the flail heads, still. Here, you may have it.~
      IF ~~  DO ~GiveItem("blun14a",LastTalkedToBy) GiveItem("blun14b",LastTalkedToBy) GiveItem("blun14c",LastTalkedToBy)~  GOTO 9
  END
  
  IF ~~ twohead
    SAY ~We had found two of the heads before we were captured. I still have them, it seems. Here, you may have them.~
      IF ~~  DO ~GiveItem("blun14a",LastTalkedToBy) GiveItem("blun14b",LastTalkedToBy) GiveItem("blun14c",LastTalkedToBy)~  GOTO twohead2
  END
  
  IF ~~ twohead2
    SAY ~If you find the last flail head, you could assemble the weapon.~
    =   ~Lord de'Arnise and I were heading to the hidden forge.  He said it was behind a secret door in the armory on the keep's first floor.  That might be a good place to look.~
      IF ~~  GOTO 7
  END
  
  IF ~~ luckybastard
    SAY ~I remember...we had found all three flail heads and were heading for the forge when we were captured.  It's amazing I still have them. Here, take them.~
      IF ~~  DO ~GiveItem("blun14a",LastTalkedToBy) GiveItem("blun14b",LastTalkedToBy) GiveItem("blun14c",LastTalkedToBy)~  GOTO luckybastard2
  END
  
  IF ~~ luckybastard2
    SAY ~You should go to the forge and assemble the weapon.  Lord de'Arnise said it was hidden behind a secret door in the armory on the keep's first floor.~
      IF ~~  GOTO 7
  END
END

ALTER_TRANS kpglai01 BEGIN 5 END BEGIN 0 END BEGIN "EPILOGUE" ~GOTO flaildesc~ END