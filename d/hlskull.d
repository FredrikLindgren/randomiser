APPEND hlskull

IF ~~ branch
SAY @0
++ @1 + keys
++ @2 + body
++ #56194 + 6
END

IF ~~ keys
SAY @3
IF ~~ GOTO keys2
END

IF ~~ keys2
SAY @4
++ @5 + 10
++ @6 + body
+ ~PartyHasItem("flrward1")~ + @7 + onekey
+ ~!PartyHasItem("flrward1")~ + @7 + nokey
++ @8 + 6
END

IF ~~ onekey
SAY @9
++ @10 + 10
++ @11 + 6
END

IF ~~ nokey
SAY @12
++ @13 + altexit
++ @14 + body
++ @15 + 6
END

IF ~~ body
SAY @16
++ @17 + 10
++ @21 + keys
++ @18 + 6
END

IF ~~ altexit
SAY @19 
IF ~~ DO ~SetGlobal("KangaxxQuest","GLOBAL",1)~ UNSOLVED_JOURNAL @20 EXIT
END

END

ALTER_TRANS hlskull BEGIN 5 6 END BEGIN 0 END BEGIN "EPILOGUE" ~GOTO branch~ END //"TRIGGER" ~False()~ END
ALTER_TRANS hlskull BEGIN 10 END BEGIN 0 END BEGIN "UNSOLVED_JOURNAL" ~@20~ END


//EXTEND_TOP hlskull 5 "++ #56183 + branch" END
//EXTEND_TOP hlskull 6 "++ #56187 + branch" END

































