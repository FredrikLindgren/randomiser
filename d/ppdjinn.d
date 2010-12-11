ADD_STATE_TRIGGER ppdjinn 0 ~False()~

APPEND ppdjinn
IF ~NumTimesTalkedTo(0)~ new
  SAY @%TRA%
  IF ~~ DO ~GiveItemCreate("%Item%",LastTalkedToBy,%Charge1%,%Charge2%,%Charge3%) ReallyForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END
END