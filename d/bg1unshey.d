
APPEND %TUTU_VAR%unshey

  IF WEIGHT #0 ~ReactionGT(LastTalkedToBy,HOSTILE_UPPER) NumberOfTimesTalkedTo(0)~ THEN BEGIN altopening
    SAY @112
    IF ~~ THEN UNSOLVED_JOURNAL @113 EXIT
  END

END

                                                                
ALTER_TRANS %TUTU_VAR%unshey BEGIN 4 END BEGIN 0 END BEGIN ACTION
~AddexperienceParty(400)
GivePartyGold(70)
TakePartyItem("flrbelt1")
~
END

ALTER_TRANS %TUTU_VAR%unshey BEGIN 5 END BEGIN 0 END BEGIN ACTION
~AddexperienceParty(400)
GivePartyGold(95)
TakePartyItem("flrbelt1")
GiveItem("%TUTU_VAR%BOOK32",LastTalkedToBy)
~
END


ADD_STATE_TRIGGER %TUTU_VAR%unshey 1 "False()"