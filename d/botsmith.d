
ADD_STATE_TRIGGER botsmith 2 ~G("flItemMaker",0)~

APPEND botsmith

  IF ~~ main
    SAY @0
    COPY_TRANS botsmith 4
  END

  IF ~~ bug
    SAY @1
    + ~PartyGoldGT(4999)~ + @2 DO ~TakePartyItemNum("misc12",1) DestroyItem("misc12") TakePartyGold(5000) DestroyGold(5000) SetGlobal("flItemMaker","GLOBAL",1)~ + 11
    + ~PartyGoldLT(5000)~ + #66606 + 10
    ++ #66617 GOTO menu1
  END
  
  IF ~~ menu1
    SAY @3
    IF ~~ THEN GOTO main
    IF ~PartyHasItem("blun12")~ THEN GOTO imod
    IF ~OR(2) PartyHasItem("misc8u") PartyHasItem("sw2h15a")~ THEN GOTO silver
    IF ~OR(2) PartyHasItem("halb09a") PartyHasItem("halb09b")~ THEN GOTO wave
    IF ~OR(2) PartyHasItem("bow19a") PartyHasItem("bow19b")~ THEN GOTO gesen
    IF ~OR(3) PartyHasItem("sw1h54a") PartyHasItem("sw1h54b") PartyHasItem("sw1h54c")~ THEN GOTO eq
    IF ~OR(2) PartyHasItem("scrlag") PartyHasItem("hamm07")~ THEN GOTO crom
    IF ~OR(2) PartyHasItem("scaler") PartyHasItem("scaleb")~ THEN GOTO dragon
  END
  
  IF ~~ dragon
    SAY @4
    IF ~PartyHasItem("scaleb")~ THEN GOTO dragonb
    IF ~PartyHasItem("scaler")~ THEN GOTO dragonr
    IF ~PartyHasItem("scaler") PartyHasItem("scaleb")~ THEN GOTO dragon2
  END

  IF ~~ dragonr
    SAY @5
    + ~PartyGoldGT(4999)~ + @6 DO ~TakePartyItemNum("scaler",1) DestroyItem("scaler") TakePartyGold(5000) DestroyGold(5000) SetGlobal("flItemMaker","GLOBAL",2)~ + 11
    + ~PartyGoldLT(5000)~ + #66606 + 10
    ++ #66617 GOTO menu3
  END

  IF ~~ dragonb
    SAY @7
    + ~PartyGoldGT(4999)~ + @6 DO ~TakePartyItemNum("scaleb",1) DestroyItem("scaleb") TakePartyGold(5000) DestroyGold(5000) SetGlobal("flItemMaker","GLOBAL",3)~ + 11
    + ~PartyGoldLT(5000)~ + #66606 + 10
    ++ #66617 GOTO menu3
  END
  
  IF ~~ dragon2
    SAY @8
    + ~PartyGoldGT(4999)~ + @9 DO ~TakePartyItemNum("scaler",1) DestroyItem("scaler") TakePartyGold(5000) DestroyGold(5000) SetGlobal("flItemMaker","GLOBAL",2)~ + 11
    + ~PartyGoldGT(4999)~ + @10 DO ~TakePartyItemNum("scaleb",1) DestroyItem("scaleb") TakePartyGold(5000) DestroyGold(5000) SetGlobal("flItemMaker","GLOBAL",3)~ + 11
    + ~PartyGoldLT(5000)~ + #66606 + 10
    ++ #66617 GOTO menu3
  END
  
  IF ~~ menu3
    SAY @11
    IF ~~ THEN GOTO main
    IF ~PartyHasItem("blun12")~ THEN GOTO imod
    IF ~OR(2) PartyHasItem("misc8u") PartyHasItem("sw2h15a")~ THEN GOTO silver
    IF ~OR(2) PartyHasItem("halb09a") PartyHasItem("halb09b")~ THEN GOTO wave
    IF ~OR(2) PartyHasItem("bow19a") PartyHasItem("bow19b")~ THEN GOTO gesen
    IF ~OR(3) PartyHasItem("sw1h54a") PartyHasItem("sw1h54b") PartyHasItem("sw1h54c")~ THEN GOTO eq
    IF ~OR(2) PartyHasItem("scrlag") PartyHasItem("hamm07")~ THEN GOTO crom
  END
  
  IF ~~ crom
    SAY @12
    IF ~PartyHasItem("scrlag") PartyHasItem("hamm07") PartyHasItem("belt08") PartyHasItem("brac06")~ THEN GOTO crom2
    IF ~PartyHasItem("scrlag") !PartyHasItem("hamm07")~ THEN GOTO crom3
    IF ~!PartyHasItem("scrlag") PartyHasItem("hamm07")~ THEN GOTO crom4
  END
  
  IF ~~ crom2
    SAY @13
    + ~PartyGoldGT(9999)~ + @6 DO ~TakePartyItemNum("scrlag",1) DestroyItem("scrlag") TakePartyItemNum("hamm07",1) DestroyItem("hamm07") TakePartyItemNum("belt08",1) DestroyItem("belt08") TakePartyItemNum("brac06",1) DestroyItem("brac06") TakePartyGold(10000) DestroyGold(10000) SetGlobal("flItemMaker","GLOBAL",4)~ + 11
    + ~PartyGoldLT(10000)~ + #66606 + 10
    ++ #66617 GOTO menu4
  END
  
  IF ~~ crom3
    SAY @14
    IF ~~ THEN GOTO menu4
  END
  
  IF ~~ crom4
    SAY @15
    IF ~~ THEN GOTO menu4
  END
  
  IF ~~ menu4
    SAY @16
    IF ~~ THEN GOTO main
    IF ~PartyHasItem("blun12")~ THEN GOTO imod
    IF ~OR(2) PartyHasItem("misc8u") PartyHasItem("sw2h15a")~ THEN GOTO silver
    IF ~OR(2) PartyHasItem("halb09a") PartyHasItem("halb09b")~ THEN GOTO wave
    IF ~OR(2) PartyHasItem("bow19a") PartyHasItem("bow19b")~ THEN GOTO gesen
    IF ~OR(3) PartyHasItem("sw1h54a") PartyHasItem("sw1h54b") PartyHasItem("sw1h54c")~ THEN GOTO eq
  END
  
  IF ~~ eq
    SAY @17
    IF ~PartyHasItem("sw1h54a") PartyHasItem("sw1h54b") PartyHasItem("sw1h54c")~ THEN GOTO eq2
    IF ~PartyHasItem("sw1h54a") PartyHasItem("sw1h54b") !PartyHasItem("sw1h54c")~ THEN GOTO eq3
    IF ~PartyHasItem("sw1h54a") !PartyHasItem("sw1h54b") PartyHasItem("sw1h54c")~ THEN GOTO eq4
    IF ~!PartyHasItem("sw1h54a") PartyHasItem("sw1h54b") PartyHasItem("sw1h54c")~ THEN GOTO eq5
    IF ~PartyHasItem("sw1h54a") !PartyHasItem("sw1h54b") !PartyHasItem("sw1h54c")~ THEN GOTO eq6
    IF ~!PartyHasItem("sw1h54a") PartyHasItem("sw1h54b") !PartyHasItem("sw1h54c")~ THEN GOTO eq7
    IF ~!PartyHasItem("sw1h54a") !PartyHasItem("sw1h54b") PartyHasItem("sw1h54c")~ THEN GOTO eq8
  END
  
  IF ~~ eq2
    SAY @18
    + ~PartyGoldGT(7499)~ + @19 DO ~TakePartyItemNum("sw1h54a",1) DestroyItem("sw1h54a") TakePartyItemNum("sw1h54b",1) DestroyItem("sw1h54b") TakePartyItemNum("sw1h54c",1) DestroyItem("sw1h54c") TakePartyGold(7500) DestroyGold(7500) SetGlobal("flItemMaker","GLOBAL",5)~ + 11
    + ~PartyGoldLT(7500)~ + #66606 + 10
    ++ #66617 GOTO menu5
  END
  
  IF ~~ eq3
    SAY @20
    IF ~~ THEN GOTO menu5
  END
  
  IF ~~ eq4
    SAY @21
    IF ~~ THEN GOTO menu5
  END
  
  IF ~~ eq5
    SAY @22
    IF ~~ THEN GOTO menu5
  END
  
  IF ~~ eq6
    SAY @23
    IF ~~ THEN GOTO menu5
  END
  
  IF ~~ eq7
    SAY @24
    IF ~~ THEN GOTO menu5
  END
  
  IF ~~ eq8
    SAY @25
    IF ~~ THEN GOTO menu5
  END
  
  IF ~~ menu5
    SAY @26
    IF ~~ THEN GOTO main
    IF ~PartyHasItem("blun12")~ THEN GOTO imod
    IF ~OR(2) PartyHasItem("misc8u") PartyHasItem("sw2h15a")~ THEN GOTO silver
    IF ~OR(2) PartyHasItem("halb09a") PartyHasItem("halb09b")~ THEN GOTO wave
    IF ~OR(2) PartyHasItem("bow19a") PartyHasItem("bow19b")~ THEN GOTO gesen
  END
  
  IF ~~ gesen
    SAY @27
    IF ~PartyHasItem("bow19a") PartyHasItem("bow19b")~ THEN GOTO gesen2
    IF ~PartyHasItem("bow19a") !PartyHasItem("bow19b")~ THEN GOTO gesen3
    IF ~!PartyHasItem("bow19a") PartyHasItem("bow19b")~ THEN GOTO gesen4
  END
  
  IF ~~ gesen2
    SAY @28
    + ~PartyGoldGT(7499)~ + @29 DO ~TakePartyItemNum("bow19a",1) DestroyItem("bow19a") TakePartyItemNum("bow19b",1) DestroyItem("bow19b") TakePartyGold(7500) DestroyGold(7500) SetGlobal("flItemMaker","GLOBAL",6)~ + 11
    + ~PartyGoldLT(7500)~ + #66606 + 10
    ++ #66617 GOTO menu6
  END

  IF ~~ gesen3
    SAY @30
    IF ~~ GOTO menu6
  END
  
  IF ~~ gesen4
    SAY @31
    IF ~~ GOTO menu6
  END
  
  IF ~~ menu6
    SAY @32
    IF ~~ THEN GOTO main
    IF ~PartyHasItem("blun12")~ THEN GOTO imod
    IF ~OR(2) PartyHasItem("misc8u") PartyHasItem("sw2h15a")~ THEN GOTO silver
    IF ~OR(2) PartyHasItem("halb09a") PartyHasItem("halb09b")~ THEN GOTO wave
  END
  
  IF ~~ wave
    SAY @33
    IF ~PartyHasItem("halb09a") PartyHasItem("halb09b")~ THEN GOTO wave2
    IF ~PartyHasItem("halb09a") !PartyHasItem("halb09b")~ THEN GOTO wave3
    IF ~!PartyHasItem("halb09a") PartyHasItem("halb09b")~ THEN GOTO wave4
  END
  
  IF ~~ wave2
    SAY @34
    + ~PartyGoldGT(7499)~ + @29 DO ~TakePartyItemNum("halb09a",1) DestroyItem("halb09a") TakePartyItemNum("halb09b",1) DestroyItem("halb09b") TakePartyGold(7500) DestroyGold(7500) SetGlobal("flItemMaker","GLOBAL",7)~ + 11
    + ~PartyGoldLT(7500)~ + #66606 + 10
    ++ #66617 GOTO menu7
  END
  
  IF ~~ wave3
    SAY @35
    IF ~~ THEN GOTO menu7
  END
  
  IF ~~ wave4
    SAY @36
    IF ~~ THEN GOTO menu7
  END
  
  IF ~~ menu7
    SAY @37
    IF ~~ THEN GOTO main
    IF ~PartyHasItem("blun12")~ THEN GOTO imod
    IF ~OR(2) PartyHasItem("misc8u") PartyHasItem("sw2h15a")~ THEN GOTO silver
  END
  
  IF ~~ silver
    SAY @38
    IF ~PartyHasItem("misc8u") PartyHasItem("sw2h15a")~ THEN GOTO silver2
    IF ~PartyHasItem("misc8u") !PartyHasItem("sw2h15a")~ THEN GOTO silver3
    IF ~!PartyHasItem("misc8u") PartyHasItem("sw2h15a")~ THEN GOTO silver4
  END
  
  IF ~~ silver2
    SAY @39
    + ~PartyGoldGT(7499)~ + @29 DO ~TakePartyItemNum("misc8u",1) DestroyItem("misc8u") TakePartyItemNum("sw2h15a",1) DestroyItem("sw2h15a") TakePartyGold(7500) DestroyGold(7500) SetGlobal("flItemMaker","GLOBAL",8)~ + 11
    + ~PartyGoldLT(7500)~ + #66606 + 10
    ++ #66617 GOTO menu8
  END
  
  IF ~~ silver3
    SAY @40
    IF ~~ THEN GOTO menu8
  END
  
  IF ~~ silver4
    SAY @41
    IF ~~ THEN GOTO menu8
  END
  
  IF ~~ menu8
    SAY @42
    IF ~~ THEN GOTO main
    IF ~PartyHasItem("blun12")~ THEN GOTO imod
  END
  
  IF ~~ imod
    SAY @43
    IF ~PartyHasItem("blun12") PartyHasItem("misc5k")~ THEN GOTO imod2
    IF ~PartyHasItem("blun12") !PartyHasItem("misc5k")~ THEN GOTO imod3
  END
  
  IF ~~ imod2
    SAY @44
    + ~PartyGoldGT(7499)~ + @45 DO ~TakePartyItemNum("blun12",1) DestroyItem("blun12") TakePartyItemNum("misc5k",1) DestroyItem("misc5k") TakePartyGold(7500) DestroyGold(7500) SetGlobal("flItemMaker","GLOBAL",9)~ + 11
    + ~PartyGoldLT(7500)~ + #66606 + 10
    ++ #66617 GOTO main
  END
  
  IF ~~ imod3
    SAY @46
    IF ~~ THEN GOTO main
  END
  
  IF ~GlobalGT("flItemMaker","GLOBAL",0) InPartySlot(LastTalkedToBy,0)~ done
    SAY #70888
    IF ~~ THEN DO ~SetGlobal("flItemMaker","GLOBAL",0)~ EXIT
  END
END

EXTEND_BOTTOM botsmith 4
  IF ~PartyHasItem("blun12")~ THEN GOTO imod
  IF ~OR(2) PartyHasItem("misc8u") PartyHasItem("sw2h15a")~ THEN GOTO silver
  IF ~OR(2) PartyHasItem("halb09a") PartyHasItem("halb09b")~ THEN GOTO wave
  IF ~OR(2) PartyHasItem("bow19a") PartyHasItem("bow19b")~ THEN GOTO gesen
  IF ~OR(3) PartyHasItem("sw1h54a") PartyHasItem("sw1h54b") PartyHasItem("sw1h54c")~ THEN GOTO eq
  IF ~OR(2) PartyHasItem("scrlag") PartyHasItem("hamm07")~ THEN GOTO crom
  IF ~OR(2) PartyHasItem("scaler") PartyHasItem("scaleb")~ THEN GOTO dragon
  IF ~PartyHasItem("misc12")~ THEN GOTO bug
END
