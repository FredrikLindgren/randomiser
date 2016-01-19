/* UNSHEY.d for original BG1, which does not have EraseJournalEntry() */

REPLACE_SAY unshey 1 @112

ALTER_TRANS unshey BEGIN 1 END BEGIN 0 END BEGIN "UNSOLVED_JOURNAL"
~@113~
END

ALTER_TRANS unshey BEGIN 4 END BEGIN 0 END BEGIN "ACTION"
~AddexperienceParty(400)
GivePartyGold(70)
TakePartyItem("flrbelt1")
~
END

ALTER_TRANS unshey BEGIN 5 END BEGIN 0 END BEGIN "ACTION"
~AddexperienceParty(400)
GivePartyGold(95)
TakePartyItem("flrbelt1")
GiveItem("BOOK32",LastTalkedToBy)
~
END

REPLACE_TRIGGER_TEXT unshey ~BELT04~ ~flrbelt1~
