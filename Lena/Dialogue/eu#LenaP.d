BEGIN ~EU#LENAP~

//////////////////////////////////
//:.  kick out Lena dialogue  .://
//////////////////////////////////

//: kickout at demon area, with demon heart
IF ~Global("EU#LenaKickedOut","LOCALS",0)
    PartyHasItem("MISC6M")
    Global("EU#LenaStay","LOCALS",0)~ BEGIN EU#LenaTalk.KickOut3
    SAY @512
    = @513
    IF ~~ DO ~SetGlobal("EU#LenaOnLeave","LOCALS",1)
        Enemy()~ EXIT
END

//: kickout at demon area, without demon heart
IF ~Global("EU#LenaKickedOut","LOCALS",0)
    !PartyHasItem("MISC6M")
    Global("EU#LenaStay","LOCALS",0)~ BEGIN EU#LenaTalk.KickOut4
    SAY @514
    IF ~~ DO ~SetGlobal("EU#LenaOnLeave","LOCALS",1)~ EXIT
END

//: common kickout, when romance at 2
IF ~Global("EU#LenaKickedOut","LOCALS",0)
    Global("EU#LenaStay","LOCALS",1)
    Global("EU#LenaRomanceActive","GLOBAL",2)~ BEGIN EU#LenaTalk.KickOut
    SAY @501
    IF ~~ THEN REPLY @502 GOTO EU#LenaTalk.KickOut.1.1
    IF ~~ THEN REPLY @504 GOTO EU#LenaTalk.KickOut.1.2
END

IF ~~ BEGIN EU#LenaTalk.KickOut.1.1
    SAY @503
    IF ~~ DO ~
        JoinParty()
        IncrementGlobal("EU#LenaLike","LOCALS",-1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.KickOut.1.2
    SAY @505
    = @506
    IF ~~ DO ~SetGlobal("EU#LenaOnLeave","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.KickOut.2.1
    SAY @509
    IF ~~ DO ~
        JoinParty()
        IncrementGlobal("EU#LenaLike","LOCALS",-1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.KickOut.2.2
    SAY @511
    IF ~~ DO ~SetGlobal("EU#LenaOnLeave","LOCALS",1)~ EXIT
END

//: common kickout, when romance at 1
IF ~Global("EU#LenaKickedOut","LOCALS",0)
    Global("EU#LenaStay","LOCALS",1)
    Global("EU#LenaTurnedSuccubus","GLOBAL",0)
    !Global("EU#LenaRomanceActive","GLOBAL",2)~ BEGIN EU#LenaTalk.KickOut2
    SAY @507 
    IF ~~ THEN REPLY @508 GOTO EU#LenaTalk.KickOut.2.1
    IF ~~ THEN REPLY @510 GOTO EU#LenaTalk.KickOut.2.2
END

////////////////////////////
//:.  Lena Resurrected  .://
////////////////////////////

IF WEIGHT #-10 ~Global("EU#LenaTurnedSuccubus","GLOBAL",10)~ BEGIN EU#LenaTalk.AfterSuccubus
    SAY @4635
    IF ~~ THEN REPLY @4636 GOTO EU#LenaTalk.AfterSuccubus.1
    IF ~~ THEN REPLY @4637 GOTO EU#LenaTalk.AfterSuccubus.2
    IF ~~ THEN REPLY @4638 GOTO EU#LenaTalk.AfterSuccubus.3
END

IF ~~ BEGIN EU#LenaTalk.AfterSuccubus.1
    SAY @4639
    IF ~~ THEN REPLY @4642 GOTO EU#LenaTalk.AfterSuccubus#1
    IF ~~ THEN REPLY @4643 GOTO EU#LenaTalk.AfterSuccubus#2
    IF ~~ THEN REPLY @4644 GOTO EU#LenaTalk.AfterSuccubus#2
END

IF ~~ BEGIN EU#LenaTalk.AfterSuccubus.2
    SAY @4640
    IF ~~ THEN REPLY @4642 GOTO EU#LenaTalk.AfterSuccubus#1
    IF ~~ THEN REPLY @4643 GOTO EU#LenaTalk.AfterSuccubus#2
    IF ~~ THEN REPLY @4644 GOTO EU#LenaTalk.AfterSuccubus#2
END

IF ~~ BEGIN EU#LenaTalk.AfterSuccubus.3
    SAY @4641
    IF ~~ THEN REPLY @4642 GOTO EU#LenaTalk.AfterSuccubus#1
    IF ~~ THEN REPLY @4643 GOTO EU#LenaTalk.AfterSuccubus#2
    IF ~~ THEN REPLY @4644 GOTO EU#LenaTalk.AfterSuccubus#2
END

IF ~~ BEGIN EU#LenaTalk.AfterSuccubus#1
    SAY @4647
    IF ~~ DO ~SetGlobal("EU#LenaTurnedSuccubus","GLOBAL",12)
        JoinParty()~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.AfterSuccubus#2
    SAY @4645
    = @4646
    IF ~~ DO ~SetGlobal("EU#LenaTurnedSuccubus","GLOBAL",12)
        SetGlobal("EU#LenaOnLeave","LOCALS",1)~ EXIT
END
