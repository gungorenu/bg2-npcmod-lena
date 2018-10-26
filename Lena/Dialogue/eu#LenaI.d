//////////////////////////////////////////////////////////////////////
//:.  Lovetalk Interjections from other NPCs, got to be this way  .://
//////////////////////////////////////////////////////////////////////

//: LT2: Lena mentions Jaheira as a new leader
INTERJECT ~EU#LENAJ~ EU#LenaTalk.LoveTalk02#2 EU#LenaTalk.LoveTalk02.Jaheira
    == ~EU#LENAJ~ IF ~InParty("Jaheira")
        !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @908
    == ~BJAHEIR~ @909
    == ~EU#LENAJ~ @910
    == ~BJAHEIR~ @911
    == ~EU#LENAJ~ @912
COPY_TRANS ~EU#LENAJ~ EU#LenaTalk.LoveTalk02#2

//: LT6: Lena mentions Valygar as a magic scared
INTERJECT ~EU#LENAJ~ EU#LenaTalk.LoveTalk06.1.2.2 EU#LenaTalk.LoveTalk06.Valygar
    == ~EU#LENAJ~ IF ~InParty("Valygar")
                  !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @1356
    == ~BVALYGA~ @1357
    == ~EU#LENAJ~ @1358
COPY_TRANS ~EU#LENAJ~ EU#LenaTalk.LoveTalk06.1.2.2

//: LT14: Player1 mentions to duel between Lena vs Anomen
INTERJECT ~EU#LENAJ~ EU#LenaTalk.LoveTalk14#FinalAttack#6 EU#LenaTalk.LoveTalk14.Anomen
    == ~BANOMEN~ IF ~InParty("Anomen")
                  !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @2425
COPY_TRANS ~EU#LENAJ~ EU#LenaTalk.LoveTalk14#FinalAttack#6.1

//: LT14: Player1 mentions to duel between Lena vs Edwin
INTERJECT ~EU#LENAJ~ EU#LenaTalk.LoveTalk14#FinalAttack#7 EU#LenaTalk.LoveTalk14.Edwin
    == ~BEDWIN~ IF ~InParty("Edwin")
                  !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @2428
COPY_TRANS ~EU#LENAJ~ EU#LenaTalk.LoveTalk14#FinalAttack#6.1

/////////////////////////////////////////
//:.  Lovetalk Interjections of #23  .://
/////////////////////////////////////////

//: LT23: Player1 mentions about party, IF condition is irrevelant but put for a precaution
CHAIN IF ~Global("EU#LenaLoveTalk23.Party","GLOBAL",1)~ THEN ~EU#LENAJ~ EU#LenaTalk.LoveTalk23#Party
    @3310
    DO ~SetGlobal("EU#LenaLoveTalk23.Party","GLOBAL",2)~
    == ~BJAHEIR~ 
        IF ~InParty("Jaheira")
            InParty("Cernd")
            Global("EU#LenaLoveTalk23.Party.JaheiraCernd","LOCALS",0)
            !StateCheck("Jaheira",CD_STATE_NOTVALID)
            !StateCheck("Cernd",CD_STATE_NOTVALID)~ // no need to check other states but lets do still
            THEN @3311
            DO ~SetGlobal("EU#LenaLoveTalk23.Party.JaheiraCernd","LOCALS",1)~ 
    == ~BCERND~ 
        IF ~!InParty("Jaheira")
            InParty("Cernd")
            Global("EU#LenaLoveTalk23.Party.Cernd","LOCALS",0) 
            !StateCheck("Cernd",CD_STATE_NOTVALID)~ // no need to check other states but lets do still
            THEN @3312
            DO ~SetGlobal("EU#LenaLoveTalk23.Party.Cernd","LOCALS",1)~ 
    == ~BJAHEIR~ 
        IF ~InParty("Jaheira")
            !InParty("Cernd")
            Global("EU#LenaLoveTalk23.Party.Jaheira","LOCALS",0) 
            !StateCheck("Jaheira",CD_STATE_NOTVALID)~ // no need to check other states but lets do still
            THEN @3313
            DO ~SetGlobal("EU#LenaLoveTalk23.Party.Jaheira","LOCALS",1)~ 
    == ~BEDWIN~ 
        IF ~InParty("Edwin")
            Global("EU#LenaLoveTalk23.Party.Edwin","LOCALS",0) 
            !StateCheck("Edwin",CD_STATE_NOTVALID)~ // no need to check other states but lets do still
            THEN @3314
            DO ~SetGlobal("EU#LenaLoveTalk23.Party.Edwin","LOCALS",1)~ 
    == ~BMAZZY~ 
        IF ~InParty("Mazzy")
            InParty("Korgan")
            Global("EU#LenaLoveTalk23.Party.KorganMazzy","LOCALS",0) 
            !StateCheck("Mazzy",CD_STATE_NOTVALID)
            !StateCheck("Korgan",CD_STATE_NOTVALID)~ // no need to check other states but lets do still
            THEN @3320
            DO ~SetGlobal("EU#LenaLoveTalk23.Party.KorganMazzy","LOCALS",1)~ 
    == ~BMAZZY~ 
        IF ~!InParty("Korgan")
            InParty("Mazzy")
            Global("EU#LenaLoveTalk23.Party.Mazzy","LOCALS",0) 
            !StateCheck("Mazzy",CD_STATE_NOTVALID)~ // no need to check other states but lets do still
            THEN @3322
            DO ~SetGlobal("EU#LenaLoveTalk23.Party.Mazzy","LOCALS",1)~ 
    == ~BKORGAN~ 
        IF ~InParty("Korgan")
            !InParty("Mazzy")
            Global("EU#LenaLoveTalk23.Party.Korgan","LOCALS",0) 
            !StateCheck("Korgan",CD_STATE_NOTVALID)~ // no need to check other states but lets do still
            THEN @3321
            DO ~SetGlobal("EU#LenaLoveTalk23.Party.Korgan","LOCALS",1)~ 
    == ~BHAERDA~ 
        IF ~InParty("HaerDalis")
            InParty("Aerie")
            Global("EU#LenaLoveTalk23.Party.HaerDalisAerie","LOCALS",0) 
            !StateCheck("HaerDalis",CD_STATE_NOTVALID)
            !StateCheck("Aerie",CD_STATE_NOTVALID)~ // no need to check other states but lets do still
            THEN @3323
            DO ~SetGlobal("EU#LenaLoveTalk23.Party.HaerDalisAerie","LOCALS",1)~ 
    == ~BHAERDA~ 
        IF ~!InParty("Aerie")
            InParty("HaerDalis")
            Global("EU#LenaLoveTalk23.Party.HaerDalis","LOCALS",0) 
            !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ // no need to check other states but lets do still
            THEN @3324
            DO ~SetGlobal("EU#LenaLoveTalk23.Party.HaerDalis","LOCALS",1)~ 
    == ~BAERIE~ 
        IF ~InParty("Aerie")
            !InParty("HaerDalis")
            Global("EU#LenaLoveTalk23.Party.Aerie","LOCALS",0) 
            !StateCheck("Aerie",CD_STATE_NOTVALID)~ // no need to check other states but lets do still
            THEN @3325
            DO ~SetGlobal("EU#LenaLoveTalk23.Party.Aerie","LOCALS",1)~ 
    == ~BJAN~ 
        IF ~InParty("Jan")
            Global("EU#LenaLoveTalk23.Party.Jan","LOCALS",0) 
            !StateCheck("Jan",CD_STATE_NOTVALID)~ // no need to check other states but lets do still
            THEN @3365
            DO ~SetGlobal("EU#LenaLoveTalk23.Party.Jan","LOCALS",1)~ 
    == ~BVICONI~ 
        IF ~InParty("Viconia")
            InParty("Valygar")
            Global("EU#LenaLoveTalk23.Party.ViconiaValygar","LOCALS",0) 
            !StateCheck("Viconia",CD_STATE_NOTVALID)
            !StateCheck("Valygar",CD_STATE_NOTVALID)~ // no need to check other states but lets do still
            THEN @3366
            DO ~SetGlobal("EU#LenaLoveTalk23.Party.ViconiaValygar","LOCALS",1)~ 
        = @3367
    == ~BVICONI~ 
        IF ~!InParty("Valygar")
            InParty("Viconia")
            Global("EU#LenaLoveTalk23.Party.Viconia","LOCALS",0) 
            !StateCheck("Viconia",CD_STATE_NOTVALID)~ // no need to check other states but lets do still
            THEN @3368
            DO ~SetGlobal("EU#LenaLoveTalk23.Party.Viconia","LOCALS",1)~ 
    == ~BVALYGA~ 
        IF ~InParty("Valygar")
            !InParty("Viconia")
            Global("EU#LenaLoveTalk23.Party.Valygar","LOCALS",0) 
            !StateCheck("Valygar",CD_STATE_NOTVALID)~ // no need to check other states but lets do still
            THEN @3369
            DO ~SetGlobal("EU#LenaLoveTalk23.Party.Valygar","LOCALS",1)~ 
END

//: note: If Imoen in party go to Imoen's (she will direct to Anomen's), if not then go to Anomen's

// YES "GLOBAL", we need to rely on something that we can reach from everywhere
IF ~InParty("Imoen2")
    Global("EU#LenaLoveTalk23.Party.Imoen","GLOBAL",0) 
    !StateCheck("Imoen2",CD_STATE_NOTVALID)~ // no need to check other states but lets do still
    EXTERN ~BIMOEN2~ EU#LenaTalk.LoveTalk23#Party.Imoen
IF ~OR(2)
        !InParty("Imoen2")
        StateCheck("Imoen2",CD_STATE_NOTVALID)
    InParty("Anomen")
    Global("EU#LenaLoveTalk23.Party.Anomen","GLOBAL",0) 
    !StateCheck("Anomen",CD_STATE_NOTVALID)~ // no need to check other states but lets do still
    DO ~SetGlobal("EU#LenaLoveTalk23.Party.Imoen","GLOBAL",1)~ // YES IMOEN's condition because Anomen's will be set in dialog
    EXTERN ~BANOMEN~ EU#LenaTalk.LoveTalk23#Party.Anomen
IF ~OR(2)
        !InParty("Imoen2")
        StateCheck("Imoen2",CD_STATE_NOTVALID)
    OR(2)
        StateCheck("Anomen",CD_STATE_NOTVALID)
        !InParty("Anomen")~
    DO ~SetGlobal("EU#LenaLoveTalk23.Party.Imoen","GLOBAL",1)
        SetGlobal("EU#LenaLoveTalk23.Party.Anomen","GLOBAL",1)~ // YES GLOBAL
    EXTERN ~EU#LENAJ~ EU#LenaTalk.LoveTalk23#18

/////////////////////////////////////////////////
//:.  Lovetalk Interjections of #23 - Imoen  .://
/////////////////////////////////////////////////

//: LT23: Player1 mentions about Imoen SEPARATELY because of Player has replies

// Note: Anomen's case is referenced from here

CHAIN IF ~Global("EU#LenaLoveTalk23.Party","GLOBAL",2)
    Global("EU#LenaLoveTalk23.Party.Imoen","GLOBAL",0)~ THEN ~BIMOEN2~ EU#LenaTalk.LoveTalk23#Party.Imoen
    @3315
    = @3316
END
IF ~InParty("Anomen")
    Global("EU#LenaLoveTalk23.Party.Anomen","GLOBAL",0) 
    !StateCheck("Anomen",CD_STATE_NOTVALID)~ // no need to check other states but lets do still
    THEN REPLY @3317
    DO ~SetGlobal("EU#LenaLoveTalk23.Party.Imoen","GLOBAL",1)~
    EXTERN ~BANOMEN~ EU#LenaTalk.LoveTalk23#Party.Anomen
IF ~OR(2)
        !InParty("Anomen")
        StateCheck("Anomen",CD_STATE_NOTVALID)~ 
    THEN REPLY @3317 DO ~SetGlobal("EU#LenaLoveTalk23.Party.Imoen","GLOBAL",1)
        SetGlobal("EU#LenaLoveTalk23.Party.Anomen","GLOBAL",1)~ EXTERN ~EU#LENAJ~ EU#LenaTalk.LoveTalk23#18
IF ~~ THEN REPLY @3318 EXTERN ~BIMOEN2~ EU#LenaTalk.LoveTalk23#Party.Imoen.2

// --

CHAIN IF ~Global("EU#LenaLoveTalk23.Party","GLOBAL",2)
    Global("EU#LenaLoveTalk23.Party.Imoen","GLOBAL",0)~ THEN ~BIMOEN2~ EU#LenaTalk.LoveTalk23#Party.Imoen.2
    @3319
    DO ~SetGlobal("EU#LenaLoveTalk23.Party.Imoen","GLOBAL",1)~
END
IF ~InParty("Anomen")
    Global("EU#LenaLoveTalk23.Party.Anomen","GLOBAL",0) 
    !StateCheck("Anomen",CD_STATE_NOTVALID)~ // no need to check other states but lets do still
    EXTERN ~BANOMEN~ EU#LenaTalk.LoveTalk23#Party.Anomen
IF ~OR(2)
        !InParty("Anomen")
        StateCheck("Anomen",CD_STATE_NOTVALID)~ // no need to check other states but lets do still
    EXTERN ~EU#LENAJ~ EU#LenaTalk.LoveTalk23#18

//////////////////////////////////////////////////
//:.  Lovetalk Interjections of #23 - Anomen  .://
//////////////////////////////////////////////////

//: LT23: Player1 mentions about Anomen
CHAIN IF ~Global("EU#LenaLoveTalk23.Party","GLOBAL",2)
    Global("EU#LenaLoveTalk23.Party.Anomen","GLOBAL",0)~ THEN ~BANOMEN~ EU#LenaTalk.LoveTalk23#Party.Anomen
    @3326
END
IF ~~ THEN REPLY @3327 EXTERN ~BANOMEN~ EU#LenaTalk.LoveTalk23#Party.Anomen.2
IF ~CheckStatGT(Player1,15,CHR)~ THEN REPLY @3350 EXTERN ~EU#LENAJ~ EU#LenaTalk.LoveTalk23#Party.Anomen.3
IF ~!CheckStatGT(Player1,15,CHR)~ THEN REPLY @3350 EXTERN ~EU#LENAJ~ EU#LenaTalk.LoveTalk23#Party.Anomen.4
IF ~~ THEN REPLY @3361 EXTERN ~BANOMEN~ EU#LenaTalk.LoveTalk23#Party.Anomen.5

// --

CHAIN IF ~Global("EU#LenaLoveTalk23.Party","GLOBAL",2)
    Global("EU#LenaLoveTalk23.Party.Anomen","GLOBAL",0)~ THEN ~BANOMEN~ EU#LenaTalk.LoveTalk23#Party.Anomen.2
    @3328
    == ~EU#LENAJ~ @3329
    = @3330
    == ~BANOMEN~ @3331
END
IF ~CheckStatGT(Player1,15,CHR)~ THEN REPLY @3332 EXTERN ~EU#LENAJ~ EU#LenaTalk.LoveTalk23#Party.Anomen.6
IF ~!CheckStatGT(Player1,15,CHR)~ THEN REPLY @3332 EXTERN ~EU#LENAJ~ EU#LenaTalk.LoveTalk23#Party.Anomen.7
IF ~~ THEN REPLY @3344 EXTERN ~BANOMEN~ EU#LenaTalk.LoveTalk23#Party.Anomen.8
IF ~~ THEN REPLY @3349 DO ~SetGlobal("EU#LenaLoveTalk23.Party.Anomen","GLOBAL",1)~ EXTERN ~EU#LENAJ~ EU#LenaTalk.LoveTalk23#18 

// --

CHAIN IF ~Global("EU#LenaLoveTalk23.Party","GLOBAL",2)
    Global("EU#LenaLoveTalk23.Party.Anomen","GLOBAL",0)~ THEN ~EU#LENAJ~ EU#LenaTalk.LoveTalk23#Party.Anomen.3
    @3351
    = @3352
    = @3353
END
IF ~~ THEN REPLY @3354 EXTERN ~EU#LENAJ~ EU#LenaTalk.LoveTalk23#Party.Anomen.10
IF ~~ THEN REPLY @3355 EXTERN ~BANOMEN~ EU#LenaTalk.LoveTalk23#Party.Anomen.11
IF ~~ THEN REPLY @3357 EXTERN ~EU#LENAJ~ EU#LenaTalk.LoveTalk23#Party.Anomen.10

// --

CHAIN IF ~Global("EU#LenaLoveTalk23.Party","GLOBAL",2)
    Global("EU#LenaLoveTalk23.Party.Anomen","GLOBAL",0)~ THEN ~EU#LENAJ~ EU#LenaTalk.LoveTalk23#Party.Anomen.4
    @3351
    = @3358
    == ~BANOMEN~ @3359
    == ~EU#LENAJ~ @3360
END
IF ~~ DO ~SetGlobal("EU#LenaLoveTalk23.Party.Anomen","GLOBAL",1)~ EXTERN ~EU#LENAJ~ EU#LenaTalk.LoveTalk23#18 

// --

CHAIN IF ~Global("EU#LenaLoveTalk23.Party","GLOBAL",2)
    Global("EU#LenaLoveTalk23.Party.Anomen","GLOBAL",0)~ THEN ~BANOMEN~ EU#LenaTalk.LoveTalk23#Party.Anomen.5
    @3362
    == ~EU#LENAJ~ @3363
    = @3364
END
IF ~~ EXTERN ~BANOMEN~ EU#LenaTalk.LoveTalk23#Party.Anomen.8

// --

CHAIN IF ~Global("EU#LenaLoveTalk23.Party","GLOBAL",2)
    Global("EU#LenaLoveTalk23.Party.Anomen","GLOBAL",0)~ THEN ~EU#LENAJ~ EU#LenaTalk.LoveTalk23#Party.Anomen.6
    @3333
    = @3334
    = @3335
END
IF ~~ THEN REPLY @3336 EXTERN ~EU#LENAJ~ EU#LenaTalk.LoveTalk23#Party.Anomen.10
IF ~~ THEN REPLY @3338 EXTERN ~BANOMEN~ EU#LenaTalk.LoveTalk23#Party.Anomen.9
IF ~~ THEN REPLY @3340 EXTERN ~EU#LENAJ~ EU#LenaTalk.LoveTalk23#Party.Anomen.10

// --

CHAIN IF ~Global("EU#LenaLoveTalk23.Party","GLOBAL",2)
    Global("EU#LenaLoveTalk23.Party.Anomen","GLOBAL",0)~ THEN ~EU#LENAJ~ EU#LenaTalk.LoveTalk23#Party.Anomen.7
    @3333
    = @3341
    == ~BANOMEN~ @3342
    == ~EU#LENAJ~ @3343
END
IF ~~ DO ~SetGlobal("EU#LenaLoveTalk23.Party.Anomen","GLOBAL",1)~ EXTERN ~EU#LENAJ~ EU#LenaTalk.LoveTalk23#18 

// --

CHAIN IF ~Global("EU#LenaLoveTalk23.Party","GLOBAL",2)
    Global("EU#LenaLoveTalk23.Party.Anomen","GLOBAL",0)~ THEN ~BANOMEN~ EU#LenaTalk.LoveTalk23#Party.Anomen.8
    @3345
    == ~EU#LENAJ~ @3346
    == ~BANOMEN~ @3347
    = @3348
END
IF ~~ DO ~SetGlobal("EU#LenaLoveTalk23.Party.Anomen","GLOBAL",1)~ EXTERN ~EU#LENAJ~ EU#LenaTalk.LoveTalk23#18 

// --

CHAIN IF ~Global("EU#LenaLoveTalk23.Party","GLOBAL",2)
    Global("EU#LenaLoveTalk23.Party.Anomen","GLOBAL",0)~ THEN ~BANOMEN~ EU#LenaTalk.LoveTalk23#Party.Anomen.9
    @3339
END
IF ~~ DO ~SetGlobal("EU#LenaLoveTalk23.Party.Anomen","GLOBAL",1)~ EXTERN ~EU#LENAJ~ EU#LenaTalk.LoveTalk23#18 

// --

CHAIN IF ~Global("EU#LenaLoveTalk23.Party","GLOBAL",2)
    Global("EU#LenaLoveTalk23.Party.Anomen","GLOBAL",0)~ THEN ~EU#LENAJ~ EU#LenaTalk.LoveTalk23#Party.Anomen.10
    @3337
END
IF ~~ DO ~SetGlobal("EU#LenaLoveTalk23.Party.Anomen","GLOBAL",1)~ EXTERN ~EU#LENAJ~ EU#LenaTalk.LoveTalk23#18 

// --

CHAIN IF ~Global("EU#LenaLoveTalk23.Party","GLOBAL",2)
    Global("EU#LenaLoveTalk23.Party.Anomen","GLOBAL",0)~ THEN ~BANOMEN~ EU#LenaTalk.LoveTalk23#Party.Anomen.11
    @3356
END
IF ~~ DO ~SetGlobal("EU#LenaLoveTalk23.Party.Anomen","GLOBAL",1)~ EXTERN ~EU#LENAJ~ EU#LenaTalk.LoveTalk23#18 

/////////////////////////
//:.  Slayer Change  .://
/////////////////////////

//: player head spins
INTERJECT ~PLAYER1~ 3 EU#LenaTalk.PlayerHeadSpins
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
                  !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @4301
    DO ~SetGlobal("SelfTalk","GLOBAL",2)~
END
IF ~~ THEN REPLY @4302 EXTERN ~EU#LENAJ~ EU#LenaTalk.PlayerHeadSpins.1
IF ~~ THEN REPLY @4303 EXTERN ~EU#LENAJ~ EU#LenaTalk.PlayerHeadSpins.2
IF ~~ THEN REPLY @4304 EXTERN ~EU#LENAJ~ EU#LenaTalk.PlayerHeadSpins.3
IF ~~ THEN REPLY @4305 EXTERN ~EU#LENAJ~ EU#LenaTalk.PlayerHeadSpins.4

//: first transform
INTERJECT ~PLAYER1~ 5 EU#LenaTalk.PlayerSlayer#1
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @4310
EXIT

//: second transform, before
INTERJECT ~PLAYER1~ 7 EU#LenaTalk.PlayerSlayer#2-1
    == ~EU#LENAJ~ IF ~OR(2)
        Global("EU#LenaRomanceActive","GLOBAL",1)
        Global("EU#LenaRomanceActive","GLOBAL",2)
        InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @4311
        DO ~SetGlobal("EU#LenaPlayerSlayerEndanger","LOCALS",1)~
END
IF ~~ THEN REPLY @4312 EXTERN ~EU#LENAJ~ EU#LenaTalk.PlayerSlayer#2-1.1
IF ~~ THEN REPLY @4313 EXTERN ~EU#LENAJ~ EU#LenaTalk.PlayerSlayer#2-1.1
IF ~~ THEN REPLY @4314 EXTERN ~EU#LENAJ~ EU#LenaTalk.PlayerSlayer#2-1.1

//: second transform, after
INTERJECT ~PLAYER1~ 10 EU#LenaTalk.PlayerSlayer#2-2
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        Global("EU#LenaPlayerSlayerEndanger","LOCALS",1)
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @4316
END
IF ~~ THEN REPLY @4317 EXTERN ~EU#LENAJ~ EU#LenaTalk.PlayerSlayer#2-2.1
IF ~~ THEN REPLY @4318 EXTERN ~EU#LENAJ~ EU#LenaTalk.PlayerSlayer#2-2.2
IF ~~ THEN REPLY @4319 EXTERN ~EU#LENAJ~ EU#LenaTalk.PlayerSlayer#2-2.1

//-------- Lena Talks for Slayer Change -----------------------------------------------------------------------------------------------------------------------

APPEND_EARLY ~EU#LENAJ~

    IF ~~ BEGIN EU#LenaTalk.PlayerHeadSpins.1
        SAY @4309
        IF ~~ EXIT
    END 

    IF ~~ BEGIN EU#LenaTalk.PlayerHeadSpins.2
        SAY @4308
        IF ~~ EXIT
    END

    IF ~~ BEGIN EU#LenaTalk.PlayerHeadSpins.3
        SAY @4307
        IF ~~ DO ~IncrementGlobal("EU#LenaLike","LOCALS",-2)~ EXIT
    END

    IF ~~ BEGIN EU#LenaTalk.PlayerHeadSpins.4
        SAY @4306
        IF ~~ EXIT
    END

    IF ~~ BEGIN EU#LenaTalk.PlayerSlayer#2-1.1
        SAY @4315
        IF ~~ DO ~ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))~ EXIT
    END

    IF ~~ BEGIN EU#LenaTalk.PlayerSlayer#2-2.1
        SAY @4320
        IF ~~ EXIT
    END

    IF ~~ BEGIN EU#LenaTalk.PlayerSlayer#2-2.2
        SAY @4321
        IF ~~ EXIT
    END

END

///////////////////////////////////////////////////
//:.  Irenicus Fights (TreeOfLife/Death/Hell)  .://
///////////////////////////////////////////////////

//: Irenicus death at tree of life
EXTEND_BOTTOM ~PLAYER1~ 16
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~
        DO ~SetGlobal("IrenicusBeat","AR2806",2)
            SetGlobal("HadPeopleBeforeHell","LOCALS",1)~ 
        EXTERN ~EU#LENAJ~ EU#LenaTalk.IrenicusDeathTOL
END

//: hell irenicus last words before fight
INTERJECT_COPY_TRANS ~HELLJON~ 7 EU#LenaTalk.HellJonFinalTalk#1
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @4400
END

//: hell irenicus last words before fight
INTERJECT_COPY_TRANS ~HELLJON~ 8 EU#LenaTalk.HellJonFinalTalk#2
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @4400
END

//: hell irenicus last words before fight
INTERJECT_COPY_TRANS ~HELLJON~ 9 EU#LenaTalk.HellJonFinalTalk#3
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @4400
END

//: hell irenicus last words before fight
INTERJECT_COPY_TRANS ~HELLJON~ 10 EU#LenaTalk.HellJonFinalTalk#4
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @4400
END

//: after TOL arrive in hell, romantic
INTERJECT ~PLAYER1~ 25 EU#LenaTalk.ArriveInHell
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        Global("EU#LenaRomanceActive","GLOBAL",2)
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @4402
    == ~EU#LENAJ~   @4403
COPY_TRANS ~PLAYER1~ 25

//: after TOL arrive in hell, non-romantic
INTERJECT ~PLAYER1~ 25 EU#LenaTalk.ArriveInHell
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        Global("EU#LenaRomanceActive","GLOBAL",1)
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @4402
    == ~EU#LENAJ~   @4404
COPY_TRANS ~PLAYER1~ 25

//: before tree of life battle with Irenicus, non-romantic
INTERJECT ~PLAYER1~ 33 EU#LenaTalk.TreeOfLife#1
    == ~PLAYER1~ IF ~InParty("EU#LENA")
                 !StateCheck("EU#LENA",CD_STATE_NOTVALID)
                 !Global("EU#LenaRomanceActive","GLOBAL",2)~ THEN @4412
END
IF ~~ THEN REPLY @4413 EXTERN ~EU#LENAJ~ EU#LenaTalk.TreeOfLife#1.1
IF ~~ THEN REPLY @4414 EXTERN ~EU#LENAJ~ EU#LenaTalk.TreeOfLife#1.2
IF ~~ THEN REPLY @4415 EXTERN ~EU#LENAJ~ EU#LenaTalk.TreeOfLife#1.3

//: before tree of life battle with Irenicus, romantic, I guess there is no other way to copy so need them separately
//: player
EXTEND_TOP ~PLAYER1~ 33 #1
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)
        Global("EU#LenaRomanceActive","GLOBAL",2)~ 
    EXTERN ~PLAYER1~ EU#PlayerTalk.TreeOfLife#2
END

//: anomen
EXTEND_TOP ANOMENJ 299 #1
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)
        Global("EU#LenaRomanceActive","GLOBAL",2)~ 
    EXTERN ~PLAYER1~ EU#PlayerTalk.TreeOfLife#2
END

//: aerie
EXTEND_TOP AERIEJ 185 #1
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)
        Global("EU#LenaRomanceActive","GLOBAL",2)~ 
    EXTERN ~PLAYER1~ EU#PlayerTalk.TreeOfLife#2
END

//: viconia
EXTEND_TOP VICONIJ 177 #1
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)
        Global("EU#LenaRomanceActive","GLOBAL",2)~ 
    EXTERN ~PLAYER1~ EU#PlayerTalk.TreeOfLife#2
END

//: jaheira
EXTEND_TOP JAHEIRAJ 519 #1
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)
        Global("EU#LenaRomanceActive","GLOBAL",2)~ 
    EXTERN ~PLAYER1~ EU#PlayerTalk.TreeOfLife#2
END

//: cernd
EXTEND_TOP CERNDJ 136 #1
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)
        Global("EU#LenaRomanceActive","GLOBAL",2)~ 
    EXTERN ~PLAYER1~ EU#PlayerTalk.TreeOfLife#2
END

//: nalia
EXTEND_TOP NALIAJ 315 #1
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)
        Global("EU#LenaRomanceActive","GLOBAL",2)~ 
    EXTERN ~PLAYER1~ EU#PlayerTalk.TreeOfLife#2
END

//: korgan
EXTEND_TOP KORGANJ 187 #1
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)
        Global("EU#LenaRomanceActive","GLOBAL",2)~ 
    EXTERN ~PLAYER1~ EU#PlayerTalk.TreeOfLife#2
END

//: keldorn, just put if I re-allow keldorn with Lena, not supposed to have effect at this moment
EXTEND_TOP KELDORJ 248 #1
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)
        Global("EU#LenaRomanceActive","GLOBAL",2)~ 
    EXTERN ~PLAYER1~ EU#PlayerTalk.TreeOfLife#2
END

//: haer'dalis
EXTEND_TOP HAERDAJ 149 #1
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)
        Global("EU#LenaRomanceActive","GLOBAL",2)~ 
    EXTERN ~PLAYER1~ EU#PlayerTalk.TreeOfLife#2
END

//: edwin
EXTEND_TOP EDWINJ 160 #1
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)
        Global("EU#LenaRomanceActive","GLOBAL",2)~ 
    EXTERN ~PLAYER1~ EU#PlayerTalk.TreeOfLife#2
END

//: jan
EXTEND_TOP JANJ 181 #1
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)
        Global("EU#LenaRomanceActive","GLOBAL",2)~ 
    EXTERN ~PLAYER1~ EU#PlayerTalk.TreeOfLife#2
END

//: mazzy
EXTEND_TOP MAZZYJ 199 #1
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)
        Global("EU#LenaRomanceActive","GLOBAL",2)~ 
    EXTERN ~PLAYER1~ EU#PlayerTalk.TreeOfLife#2
END

//: valygar
EXTEND_TOP VALYGARJ 106 #1
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)
        Global("EU#LenaRomanceActive","GLOBAL",2)~ 
    EXTERN ~PLAYER1~ EU#PlayerTalk.TreeOfLife#2
END

//: minsc
EXTEND_TOP MINSCJ 209 #1
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)
        Global("EU#LenaRomanceActive","GLOBAL",2)~ 
    EXTERN ~PLAYER1~ EU#PlayerTalk.TreeOfLife#2
END

//: imoen
EXTEND_TOP IMOEN2J 38 #1
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)
        Global("EU#LenaRomanceActive","GLOBAL",2)~ 
    EXTERN ~PLAYER1~ EU#PlayerTalk.TreeOfLife#2
END

//-------- Lena Talks for Irenicus Confront -------------------------------------------------------------------------------------------------------------------

APPEND_EARLY ~EU#LENAJ~

    IF ~~ BEGIN EU#LenaTalk.IrenicusDeathTOL
        SAY @4401
        IF ~~ EXTERN PLAYER1 17
    END

    IF ~~ BEGIN EU#LenaTalk.TreeOfLife#1.1
        SAY @4416
        COPY_TRANS ~PLAYER1~ 33
    END

    IF ~~ BEGIN EU#LenaTalk.TreeOfLife#1.2
        SAY @4417
        COPY_TRANS ~PLAYER1~ 33
    END

    IF ~~ BEGIN EU#LenaTalk.TreeOfLife#1.3
        SAY @4418
        COPY_TRANS ~PLAYER1~ 33
    END

    IF ~~ BEGIN EU#LenaTalk.TreeOfLife#2
        SAY @4406
        = @4407
        = @4408
        = @4409
        = @4410
        = @4411
        IF ~~ EXTERN ~PLAYER1~ 53
    END

END

//-------- Player Talks for Irenicus Confront -----------------------------------------------------------------------------------------------------------------

APPEND_EARLY ~PLAYER1~

    IF ~~ BEGIN EU#PlayerTalk.TreeOfLife#2
        SAY @4419
        IF ~~ THEN REPLY @4405 EXTERN ~EU#LENAJ~ EU#LenaTalk.TreeOfLife#2
    END

END

//////////////////////////
//:.  Keldorn Issues  .://
//////////////////////////

//: Keldorn join cases, have to rewrite join dialogue node
/*
what we do:
 - if we can Lena will interject into join nodes (from state to state ones) and ask player if sure, this is easy
 - if we cannot here is what to do
   * disable the reply with "ADD_TRANS_TRIGGER ~KELDORP~ #### ~False()~ DO ####", this will disable player's reply option that directly joins Keldorn
   * add another reply option but this option goes to Lena's dialogue that asks if player wants keldorn or lena
*/

//: Keldorn in sewers case 1
ADD_TRANS_TRIGGER ~KELDOR~ 2 ~False()~ DO 1
EXTEND_BOTTOM ~KELDOR~ 2 
    IF ~InParty("EU#LENA") 
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ 
        THEN REPLY #8317 
        EXTERN ~EU#LENAJ~ EU#LenaTalk.KeldornJoin#SW1
    IF ~OR(2) 
        !InParty("EU#LENA") 
        StateCheck("EU#LENA",CD_STATE_NOTVALID)~ 
        THEN REPLY #8317 
        EXTERN ~KELDOR~ 4 
END

//: Keldorn in sewers case 1, Keldorn is enemy
ADD_TRANS_TRIGGER ~KELDOR~ 5 ~False()~ DO 0
EXTEND_BOTTOM ~KELDOR~ 5 
    IF ~InParty("EU#LENA") 
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ 
        DO ~Enemy()~ 
        EXTERN ~EU#LENAJ~ EU#LenaTalk.KeldornEnemy 
    IF ~OR(2) 
        !InParty("EU#LENA") 
        StateCheck("EU#LENA",CD_STATE_NOTVALID)~ 
        DO ~Enemy()~ 
        EXIT 
END

//: Keldorn in sewers case 2
ADD_TRANS_TRIGGER ~KELDOR~ 24 ~False()~ DO 1
EXTEND_BOTTOM ~KELDOR~ 24 
    IF ~InParty("EU#LENA") 
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ 
        THEN REPLY #37843 
        EXTERN ~EU#LENAJ~ EU#LenaTalk.KeldornJoin#SW2
    IF ~OR(2) 
        !InParty("EU#LENA") 
        StateCheck("EU#LENA",CD_STATE_NOTVALID)~ 
        THEN REPLY #37843 
        EXTERN ~KELDOR~ 7 
END

//: case 1
ADD_TRANS_TRIGGER ~KELDORP~ 1 ~False()~ DO 0
EXTEND_TOP ~KELDORP~ 1 
    IF ~InParty("EU#LENA") 
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ 
        THEN REPLY /**@4507**/ #10717 
        EXTERN ~EU#LENAJ~ EU#LenaTalk.KeldornJoin#1 
    IF ~OR(2) 
        !InParty("EU#LENA") 
        StateCheck("EU#LENA",CD_STATE_NOTVALID)~ 
        THEN REPLY /**@4507**/ #10717 
        EXTERN ~KELDORP~ 2
END

//: case 2
ADD_TRANS_TRIGGER ~KELDORP~ 7 ~False()~ DO 0
EXTEND_TOP ~KELDORP~ 7 
    IF ~InParty("EU#LENA") 
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ 
        THEN REPLY /**@4508**/ #10746 
        EXTERN ~EU#LENAJ~ EU#LenaTalk.KeldornJoin#2 
    IF ~OR(2) 
        !InParty("EU#LENA") 
        StateCheck("EU#LENA",CD_STATE_NOTVALID)~ 
        THEN REPLY /**@4508**/ #10746 
        EXTERN ~KELDORP~ 8
END

//: case 3
ADD_TRANS_TRIGGER ~KELDORP~ 11 ~False()~ DO 1 // not 0
EXTEND_BOTTOM ~KELDORP~ 11 
    IF ~InParty("EU#LENA") 
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ 
        THEN REPLY /**@4509**/ #10772 
        EXTERN ~EU#LENAJ~ EU#LenaTalk.KeldornJoin#3 
    IF ~OR(2) 
        !InParty("EU#LENA") 
        StateCheck("EU#LENA",CD_STATE_NOTVALID)~ 
        THEN REPLY /**@4509**/ #10772 
        EXTERN ~KELDORP~ 13
END

//: case 4
ADD_TRANS_TRIGGER ~KELDORP~ 16 ~False()~ DO 1 // not 0
EXTEND_BOTTOM ~KELDORP~ 16 
    IF ~InParty("EU#LENA") 
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ 
        THEN REPLY /**@4510**/ #10782 
        EXTERN ~EU#LENAJ~ EU#LenaTalk.KeldornJoin#4 
    IF ~OR(2) 
        !InParty("EU#LENA") 
        StateCheck("EU#LENA",CD_STATE_NOTVALID)~ 
        THEN REPLY /**@4510**/ #10782 
        EXTERN ~KELDORP~ 18
END

//: case 5
ADD_TRANS_TRIGGER ~KELDORP~ 19 ~False()~ DO 2 // not 0
EXTEND_BOTTOM ~KELDORP~ 19 
    IF ~InParty("EU#LENA") 
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ 
        THEN REPLY /**@4511**/ #10816 
        EXTERN ~EU#LENAJ~ EU#LenaTalk.KeldornJoin#5 
    IF ~OR(2) 
        !InParty("EU#LENA") 
        StateCheck("EU#LENA",CD_STATE_NOTVALID)~ 
        THEN REPLY /**@4511**/ #10816 
        EXTERN ~KELDORP~ 22
END

//: case 6
ADD_TRANS_TRIGGER ~KELDORP~ 23 ~False()~ DO 0
ADD_TRANS_TRIGGER ~KELDORP~ 27 ~False()~ DO 0
EXTEND_TOP ~KELDORP~ 23 
    IF ~InParty("EU#LENA") 
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ 
        THEN REPLY /**@4516**/ #10838 
        EXTERN ~EU#LENAJ~ EU#LenaTalk.KeldornJoin#6 
    IF ~OR(2) 
        !InParty("EU#LENA") 
        StateCheck("EU#LENA",CD_STATE_NOTVALID)~ 
        THEN REPLY /**@4516**/ #10838 
        EXTERN ~KELDORP~ 25
END
EXTEND_TOP ~KELDORP~ 27 
    IF ~InParty("EU#LENA") 
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ 
        THEN REPLY /**@4517**/ #10842 
        EXTERN ~EU#LENAJ~ EU#LenaTalk.KeldornJoin#6 
    IF ~OR(2) 
        !InParty("EU#LENA") 
        StateCheck("EU#LENA",CD_STATE_NOTVALID)~ 
        THEN REPLY /**@4517**/ #10842 
        EXTERN ~KELDORP~ 25
END

//: case 7
ADD_TRANS_TRIGGER ~KELDORP~ 30 ~False()~ DO 0
EXTEND_TOP ~KELDORP~ 30 
    IF ~InParty("EU#LENA") 
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ 
        THEN REPLY /**@4519**/ #48317 
        EXTERN ~EU#LENAJ~ EU#LenaTalk.KeldornJoin#7 
    IF ~OR(2) 
        !InParty("EU#LENA") 
        StateCheck("EU#LENA",CD_STATE_NOTVALID)~ 
        THEN REPLY /**@4519**/ #48317 
        EXTERN ~KELDORP~ EU#KeldornTalk.KeldornJoin#7
END

//: case 8
ADD_TRANS_TRIGGER ~KELDOR~ 12 ~False()~ DO 0
EXTEND_TOP ~KELDOR~ 12 
    IF ~InParty("EU#LENA") 
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ 
        THEN REPLY #8524
        EXTERN ~EU#LENAJ~ EU#LenaTalk.KeldornJoin#8 
    IF ~OR(2) 
        !InParty("EU#LENA") 
        StateCheck("EU#LENA",CD_STATE_NOTVALID)~ 
        THEN REPLY #8524
        EXTERN ~KELDOR~ 31 
END

//: case 9
ADD_TRANS_TRIGGER ~KELDOR~ 16 ~False()~ DO 2
EXTEND_BOTTOM ~KELDOR~ 16 
    IF ~InParty("EU#LENA") 
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ 
        THEN REPLY #8552
        EXTERN ~EU#LENAJ~ EU#LenaTalk.KeldornJoin#9
    IF ~OR(2) 
        !InParty("EU#LENA") 
        StateCheck("EU#LENA",CD_STATE_NOTVALID)~ 
        THEN REPLY #8552
        EXTERN ~KELDOR~ 15 
END

//-------- Lena Dialogue --------------------------------------------------------------------------------------------------------------------------------------

APPEND ~EU#LENAJ~

    IF ~~ BEGIN EU#LenaTalk.KeldornEnemy
        SAY @4504
        IF ~~ EXIT
    END

    IF ~~ BEGIN EU#LenaTalk.KeldornJoin#SW1
        SAY @4500
        IF ~~ THEN REPLY @4521 GOTO EU#LenaTalk.KeldornJoin#SW1.1    // LENA
        IF ~~ THEN REPLY @4506 GOTO EU#LenaTalk.KeldornJoin#SW1.2    // KELDORN
    END

    IF ~~ BEGIN EU#LenaTalk.KeldornJoin#SW1.1
        SAY @4501
        IF ~~ EXTERN ~KELDOR~ 20
    END

    IF ~~ BEGIN EU#LenaTalk.KeldornJoin#SW1.2
        SAY @4503
        IF ~~ DO ~SetGlobal("EU#LenaOnLeave","LOCALS",1)~ EXTERN ~KELDOR~ 4
    END

    IF ~~ BEGIN EU#LenaTalk.KeldornJoin#SW2
        SAY @4500
        IF ~~ THEN REPLY @4522 GOTO EU#LenaTalk.KeldornJoin#SW2.1    // LENA
        IF ~~ THEN REPLY @4506 GOTO EU#LenaTalk.KeldornJoin#SW2.2    // KELDORN
    END

    IF ~~ BEGIN EU#LenaTalk.KeldornJoin#SW2.1
        SAY @4501
        IF ~~ EXTERN ~KELDOR~ 10
    END

    IF ~~ BEGIN EU#LenaTalk.KeldornJoin#SW2.2
        SAY @4503
        IF ~~ DO ~SetGlobal("EU#LenaOnLeave","LOCALS",1)~ EXTERN ~KELDOR~ 7
    END

    IF ~~ BEGIN EU#LenaTalk.KeldornJoin#1.2
        SAY @4503
        IF ~~ DO ~SetGlobal("EU#LenaOnLeave","LOCALS",1)~ EXTERN ~KELDORP~ 2
    END

    IF ~~ BEGIN EU#LenaTalk.KeldornJoin#1
        SAY @4500
        IF ~~ THEN REPLY @4505 EXTERN ~KELDORP~ 3               // LENA
        IF ~~ THEN REPLY @4506 GOTO EU#LenaTalk.KeldornJoin#1.2 // KELDORN
    END

    IF ~~ BEGIN EU#LenaTalk.KeldornJoin#2.2
        SAY @4503
        IF ~~ DO ~SetGlobal("EU#LenaOnLeave","LOCALS",1)~ EXTERN ~KELDORP~ 8
    END

    IF ~~ BEGIN EU#LenaTalk.KeldornJoin#2
        SAY @4500
        IF ~~ THEN REPLY @4512 EXTERN ~KELDORP~ 9               // LENA
        IF ~~ THEN REPLY @4506 GOTO EU#LenaTalk.KeldornJoin#2.2 // KELDORN
    END

    IF ~~ BEGIN EU#LenaTalk.KeldornJoin#3.2
        SAY @4503
        IF ~~ DO ~SetGlobal("EU#LenaOnLeave","LOCALS",1)~ EXTERN ~KELDORP~ 13
    END

    IF ~~ BEGIN EU#LenaTalk.KeldornJoin#3
        SAY @4500
        IF ~~ THEN REPLY @4513 EXTERN ~KELDORP~ 12              // LENA
        IF ~~ THEN REPLY @4506 GOTO EU#LenaTalk.KeldornJoin#3.2 // KELDORN
    END

    IF ~~ BEGIN EU#LenaTalk.KeldornJoin#4.2
        SAY @4503
        IF ~~ DO ~SetGlobal("EU#LenaOnLeave","LOCALS",1)~ EXTERN ~KELDORP~ 18
    END

    IF ~~ BEGIN EU#LenaTalk.KeldornJoin#4
        SAY @4500
        IF ~~ THEN REPLY @4514 EXTERN ~KELDORP~ 17              // LENA
        IF ~~ THEN REPLY @4506 GOTO EU#LenaTalk.KeldornJoin#4.2 // KELDORN
    END

    IF ~~ BEGIN EU#LenaTalk.KeldornJoin#5.2
        SAY @4503
        IF ~~ DO ~SetGlobal("EU#LenaOnLeave","LOCALS",1)~ EXTERN ~KELDORP~ 22
    END

    IF ~~ BEGIN EU#LenaTalk.KeldornJoin#5
        SAY @4500
        IF ~~ THEN REPLY @4515 EXTERN ~KELDORP~ 20              // LENA
        IF ~~ THEN REPLY @4506 GOTO EU#LenaTalk.KeldornJoin#5.2 // KELDORN
    END

    IF ~~ BEGIN EU#LenaTalk.KeldornJoin#6.2
        SAY @4503
        IF ~~ DO ~SetGlobal("EU#LenaOnLeave","LOCALS",1)~ EXTERN ~KELDORP~ 25
    END

    IF ~~ BEGIN EU#LenaTalk.KeldornJoin#6
        SAY @4500
        IF ~~ THEN REPLY @4518 EXTERN ~KELDORP~ 26              // LENA
        IF ~~ THEN REPLY @4506 GOTO EU#LenaTalk.KeldornJoin#6.2 // KELDORN
    END

    IF ~~ BEGIN EU#LenaTalk.KeldornJoin#7.2
        SAY @4503
        IF ~~ DO ~SetGlobal("EU#LenaOnLeave","LOCALS",1)~ EXTERN ~KELDORP~ EU#KeldornTalk.KeldornJoin#7
    END

    IF ~~ BEGIN EU#LenaTalk.KeldornJoin#7
        SAY @4500
        IF ~~ THEN REPLY @4505 EXTERN ~KELDORP~ 28              // LENA
        IF ~~ THEN REPLY @4506 GOTO EU#LenaTalk.KeldornJoin#7.2 // KELDORN
    END

    IF ~~ BEGIN EU#LenaTalk.KeldornJoin#8.2
        SAY @4503
        IF ~~ DO ~SetGlobal("EU#LenaOnLeave","LOCALS",1)~ EXTERN ~KELDOR~ 31
    END

    IF ~~ BEGIN EU#LenaTalk.KeldornJoin#8
        SAY @4500
        IF ~~ THEN REPLY @4505 EXTERN ~KELDOR~ 15              // LENA
        IF ~~ THEN REPLY @4506 GOTO EU#LenaTalk.KeldornJoin#8.2 // KELDORN
    END

    IF ~~ BEGIN EU#LenaTalk.KeldornJoin#9.2
        SAY @4503
        IF ~~ DO ~SetGlobal("EU#LenaOnLeave","LOCALS",1)~ EXTERN ~KELDOR~ 31
    END

    IF ~~ BEGIN EU#LenaTalk.KeldornJoin#9
        SAY @4500
        IF ~~ THEN REPLY @4505 EXTERN ~KELDOR~ 15              // LENA
        IF ~~ THEN REPLY @4506 GOTO EU#LenaTalk.KeldornJoin#9.2 // KELDORN
    END
END

//-------- Keldorn Dialogue -----------------------------------------------------------------------------------------------------------------------------------

APPEND ~KELDORP~

    IF ~~ BEGIN EU#KeldornTalk.KeldornJoin#7
        SAY @4520
        IF ~~ DO ~JoinParty()~ EXIT
    END

END

/////////////////////////////////
//:.  Bodhi & Real Succubus  .://
/////////////////////////////////

//: bodhi cannot sense Lena
ADD_TRANS_TRIGGER ~BODHIAMB~ 5 ~OR(2) !InParty("EU#LENA") !Global("EU#LenaRomanceActive","GLOBAL",2)~ DO 0

//: bodhi talk about "if you lose her"
INTERJECT ~BODHIAMB~ 5 EU#BodhiTalk.BodhiReleaseCurse
    == ~BODHIAMB~ IF ~Global("EU#LenaRomanceActive","GLOBAL",2)
        InParty("EU#LENA")~ THEN #56536 // @4602
END
IF ~OR(2) 
    !InPartyAllowDead("EU#LENA")
    Dead("EU#LENA")~ EXTERN ~BODHIAMB~ 6
IF ~InPartyAllowDead("EU#LENA")
    !Dead("EU#LENA")~ EXTERN ~BODHIAMB~ EU#BodhiTalk.BodhiReleaseCurse.2

//: bodhi releases curse, ulressa awakens, CUTSCENE!!!
CHAIN ~BODHIAMB~ EU#BodhiTalk.BodhiReleaseCurse.2
    @4603
    == ~EU#LENAJ~   @4604
    == ~BODHIAMB~   @4605
    =               @4607
END
IF ~~ DO ~ClearAllActions()
    StartCutSceneMode()
    StartCutScene("EU#LEBV1")~ UNSOLVED_JOURNAL @4620 EXIT

//: Ulressa first talk with Player1
CHAIN IF ~Global("EU#LenaTurnedSuccubus","GLOBAL",2)~ THEN ~EU#LENAJ~ EU#UlressaTalk.Awaken
    @4611
    == ~EU#LENAJ~   @4612
    =               @4613
    =               @4614
    =               @4618
    =               @4615
    == ~BODHIAMB~   @4617
    == ~EU#LENAJ~   @4619
END
IF ~DifficultyLT(NORMAL)~ DO ~SetGlobal("EU#LenaTurnedSuccubus","GLOBAL",3)
    StartCutSceneMode() 
    StartCutScene("EU#LEBV2")~ EXIT
IF ~DifficultyGT(EASY)~ DO ~SetGlobal("EU#LenaTurnedSuccubus","GLOBAL",3)
    StartCutSceneMode() 
    StartCutScene("EU#LEBV3")~ EXIT

APPEND ~BODHIAMB~

    IF WEIGHT #-1 ~Global("EU#LenaTurnedSuccubus","GLOBAL",2)~ BEGIN EU#BodhiTalk.Ulressa
        SAY @4610
        IF ~~ EXTERN ~EU#LENAJ~ EU#UlressaTalk.Awaken
    END

END

//////////////////////////////////////////
//:.  Non Joinable NPC Interjections  .://
//////////////////////////////////////////

//: Salvanas
CHAIN IF ~!InPartySlot(LastTalkedToBy,0)
    Name("EU#LENA",LastTalkedToBy)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN ~SALVANAS~ EU#LenaTalk.Salvanas
    @5000
    == ~EU#LENAJ~   @5001
    == ~SALVANAS~   @5002
    == ~EU#LENAJ~   @5003
    == ~SALVANAS~   @5004
    == ~EU#LENAJ~   @5005
    == ~SALVANAS~   @5006
    == ~EU#LENAJ~   @5007
    == ~SALVANAS~   @5008
EXIT

//: gypsy at trademeet
EXTEND_BOTTOM ~TRGYP02~ 2
    IF ~!InPartySlot(LastTalkedToBy,0)
        Name("EU#LENA",LastTalkedToBy)~ 
    EXTERN ~TRGYP02~ EU#LenaTalk.FortuneTeller
END

//: fortune
CHAIN TRGYP02 EU#LenaTalk.FortuneTeller
    @5009
    =               @5010
    == ~EU#LENAJ~   @5011
EXIT

/////////////////////////////////////////////////
//:.  Lena vs Bioware NPC Romance Conflicts  .://
/////////////////////////////////////////////////

//-------- Aerie ----------------------------------------------------------------------------------------------------------------------------------------------

//: LT10 how she was enslaved...
INTERJECT ~BAERIE~ 140 EU#LenaTalk.ConflictAerie#1 
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @4100
    == ~BAERIE~     @4101
    == ~EU#LENAJ~   @4102
    == ~BAERIE~     @4103
COPY_TRANS ~BAERIE~ 140

//: LT26 she thinks she is useless
INTERJECT ~BAERIE~ 233 EU#LenaTalk.ConflictAerie#2
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @4104
    == ~BAERIE~     @4105
    == ~EU#LENAJ~   @4106
END
IF ~~ THEN REPLY @4107 DO ~SetGlobal("EU#LenaRomanceActive","GLOBAL",3)~ EXTERN ~EU#LENAJ~ EU#LenaTalk.ConflictAerie#2.1
IF ~~ THEN REPLY @4108 EXTERN ~BAERIE~ 440
IF ~~ THEN REPLY @4109 EXTERN ~BAERIE~ 436

//: LT14 about sun and weather
INTERJECT ~EU#LENAJ~ EU#LenaTalk.LoveTalk07 EU#LenaTalk.ConflictAerie#3
    == ~BAERIE~ IF ~InParty("Aerie")
        !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @4111
    == ~EU#LENAJ~   @4112
    == ~BAERIE~     @4113
    == ~EU#LENAJ~   @4114
    =               @1571
    =               @1503
END
COPY_TRANS ~EU#LENAJ~ EU#LenaTalk.LoveTalk07-2

//: LT30 why travel
INTERJECT ~EU#LENAJ~ EU#LenaTalk.LoveTalk15 EU#LenaTalk.ConflictAerie#4
    == ~BAERIE~ IF ~InParty("Aerie")
        !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @4115
    == ~EU#LENAJ~   @4116
    =               @4117
END
IF ~~ THEN REPLY @4118 EXTERN ~EU#LENAJ~ EU#LenaTalk.ConflictAerie#4.1
IF ~~ THEN REPLY @4119 EXTERN ~BAERIE~ EU#LenaTalk.ConflictAerie#4.2

//: LT30 conflict, player chose Lena
CHAIN IF ~!Global("EU#LenaTalk.ConflictAerie#4.2","LOCALS",1)
    Global("EU#LenaRomanceConflictAerie#4","LOCALS",1)~ THEN ~BAERIE~ EU#LenaTalk.ConflictAerie#4.2
    @4120
    DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
        SetGlobal("EU#LenaTalk.ConflictAerie#4.2","LOCALS",1)~
    == ~EU#LENAJ~   @4121
END
COPY_TRANS ~EU#LENAJ~ EU#LenaTalk.LoveTalk15

//: LT30 conflict, player chose Aerie
CHAIN IF ~!Global("EU#LenaTalk.ConflictAerie#4.1","LOCALS",1)
    Global("EU#LenaRomanceConflictAerie#4","LOCALS",1)~ THEN ~EU#LENAJ~ EU#LenaTalk.ConflictAerie#4.1
    @4123
    DO ~SetGlobal("EU#LenaRomanceActive","GLOBAL",3)
        SetGlobal("EU#LenaTalk.ConflictAerie#4.1","LOCALS",1)~
    == ~BAERIE~     @4122
EXIT

//-------- Jaheira --------------------------------------------------------------------------------------------------------------------------------------------

//: LT12 jaheira nightmare about khalid (second)
INTERJECT ~BJAHEIR~ 188 EU#LenaTalk.ConflictJaheira#1 
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @4124
    == ~BJAHEIR~    @4125
    == ~EU#LENAJ~   @4126
    == ~BJAHEIR~    @4127
COPY_TRANS ~BJAHEIR~ 188

//: LT22 lena cooking
INTERJECT ~EU#LENAJ~ EU#LenaTalk.LoveTalk11#20-1 EU#LenaTalk.ConflictJaheira#2
    == ~BJAHEIR~ IF ~InParty("Jaheira")
        !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @4128
    == ~EU#LENAJ~   @4129
    == ~BJAHEIR~    @4130
    == ~EU#LENAJ~   @4131
COPY_TRANS ~EU#LENAJ~ EU#LenaTalk.LoveTalk11#20-1

//: LT26 duel
INTERJECT ~EU#LENAJ~ EU#LenaTalk.LoveTalk14#1 EU#LenaTalk.ConflictJaheira#3
    == ~BJAHEIR~ IF ~InParty("Jaheira")
        !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @4132
    == ~EU#LENAJ~   @4133
    == ~BJAHEIR~    @4134
COPY_TRANS ~EU#LENAJ~ EU#LenaTalk.LoveTalk14#1

//-------- Viconia --------------------------------------------------------------------------------------------------------------------------------------------

//: LT20 any thief of your heart
INTERJECT ~BVICONI~ 64 EU#LenaTalk.ConflictViconia#1
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @4135
    == ~BVICONI~    @4136
    == ~EU#LENAJ~   @4137
COPY_TRANS ~BVICONI~ 64

//: LT38 brother's sacrifice
INTERJECT ~BVICONI~ 323 EU#LenaTalk.ConflictViconia#2
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @4138
    == ~BVICONI~    @4139
    == ~EU#LENAJ~   @4140
COPY_TRANS ~BVICONI~ 323

//: LT24 drawing
INTERJECT ~EU#LENAJ~ EU#LenaTalk.LoveTalk12 EU#LenaTalk.ConflictViconia#3
    == ~BVICONI~ IF ~InParty("Viconia")
        !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @4141
    =               @4142
    == ~EU#LENAJ~   @4143
    == ~BVICONI~    @4144
    == ~EU#LENAJ~   @4145
COPY_TRANS ~EU#LENAJ~ EU#LenaTalk.LoveTalk12

//: LT26 duel
INTERJECT ~EU#LENAJ~ EU#LenaTalk.LoveTalk14#1 EU#LenaTalk.ConflictViconia#4
    == ~BVICONI~ IF ~InParty("Viconia")
        !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @4146
    == ~EU#LENAJ~   @4147
    == ~BVICONI~    @4148
    == ~EU#LENAJ~   @4149
COPY_TRANS ~EU#LENAJ~ EU#LenaTalk.LoveTalk14#1

////////////////////////////////////////
//:.  Lena's talkings in conflicts  .://
////////////////////////////////////////

APPEND_EARLY ~EU#LENAJ~

    //: player likes Aerie
    IF ~~ BEGIN EU#LenaTalk.ConflictAerie#2.1
        SAY @4110
        COPY_TRANS ~BAERIE~ 233
    END

END

////////////////////////////////////////////////
//:.  Phaere Conflict (here because a NPC)  .://
////////////////////////////////////////////////

//: Player can say "Lena" to Phaere if she forces why he cant
EXTEND_TOP ~UDPHAE01~ 106
  IF ~OR(2)
       Global("EU#LenaRomanceActive","GLOBAL",1)
       Global("EU#LenaRomanceActive","GLOBAL",2)~ THEN REPLY @4200 GOTO 110
END

//: demon lord new option
EXTEND_TOP ~UDDEMON~ 7 
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)
        Dead("Phaere")
        PartyHasItem("MISC9T")
        Alignment(Player1,MASK_EVIL)~ THEN REPLY #55905 
    EXTERN ~EU#LENAJ~ EU#LenaTalk.GiveEggsToUDDemon
END

//: Lena takes revenge from phaere, phaere burns
INTERJECT_COPY_TRANS2 ~UDPHAE01~ 161 EU#LenaTalk.PhaereDeath
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)
        Global("EU#LenaRomanceActive","GLOBAL",2)
        Global("PhaereInnuendo","GLOBAL",2)~ THEN @4246
END

//: Lena revenge
INTERJECT ~UDDEMON~ 20 EU#LenaTalk.PhaereRevenge
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)
        Global("EU#LenaRomanceActive","GLOBAL",2)
        Global("PhaereInnuendo","GLOBAL",2)
        !Global("EU#LenaSexWithPhaereForgive","LOCALS",1)~ THEN @4247
END
IF ~~ DO ~SetGlobal("EU#LenaSexWithPhaereRevenge","LOCALS",1)~ EXTERN ~UDDEMON~ EU#DemonTalk.PhaereRevenge

APPEND_EARLY ~UDDEMON~

    IF ~Global("EU#LenaSexWithPhaereRevenge","LOCALS",1)~ BEGIN EU#DemonTalk.PhaereRevenge
        SAY @4248
        IF ~~ THEN REPLY @4251  EXTERN ~EU#LENAJ~ EU#LenaTalk.PhaereRevenge.1-1
        IF ~~ THEN REPLY #52144 EXTERN ~EU#LENAJ~ EU#LenaTalk.PhaereRevenge.1-2
        IF ~~ THEN REPLY #52143 EXTERN ~UDDEMON~  EU#DemonTalk.PhaereRevenge#Interrupt
    END

    IF ~Global("EU#LenaSexWithPhaereRevenge","LOCALS",1)~ BEGIN EU#DemonTalk.PhaereRevenge.2-2
        SAY #52136
        IF ~~ DO ~
            TakePartyItem("MISC9t")
            SetGlobal("EggsDie","GLOBAL",1)
            EraseJournalEntry(5810)
            EraseJournalEntry(6535)
            EraseJournalEntry(16529)
            EraseJournalEntry(6943)
            EraseJournalEntry(16339)
            EraseJournalEntry(9649)
            EraseJournalEntry(6405)
            EraseJournalEntry(6403)
            EraseJournalEntry(6590)
            EraseJournalEntry(7147)
            EraseJournalEntry(7148)
            EraseJournalEntry(15793)
            EraseJournalEntry(15792)
            EraseJournalEntry(15797)
            EraseJournalEntry(23424)
            ActionOverride(Player1, ReallyForceSpellRES("EU#UDDMN",Player1))
            SetGlobalTimer("udEscape","GLOBAL",180)
            Unlock("Door02")
            Unlock("Door01")
            Wait(1)
            SetGlobal("EU#LenaSexWithPhaereRevenge","LOCALS",0)
            DisplayStringHead(Myself, @4255)
            Wait(2)
            DestroySelf()
            ~ EXTERN ~EU#LENAJ~ EU#LenaTalk.PhaereRevenge.3
    END

    IF ~~ BEGIN EU#DemonTalk.PhaereRevenge#Interrupt
        SAY @4254
        IF ~~ DO ~
            EraseJournalEntry(5810)
            EraseJournalEntry(6535)
            EraseJournalEntry(16529)
            EraseJournalEntry(6943)
            EraseJournalEntry(16339)
            EraseJournalEntry(9649)
            EraseJournalEntry(6405)
            EraseJournalEntry(6403)
            EraseJournalEntry(6590)
            EraseJournalEntry(7147)
            EraseJournalEntry(7148)
            EraseJournalEntry(15793)
            EraseJournalEntry(15792)
            EraseJournalEntry(23424)
            SetGlobalTimer("udEscape","GLOBAL",120)
            SetGlobal("EU#LenaSexWithPhaereRevenge","LOCALS",0)
            Enemy()~ EXIT
    END

END

//: Lena's speech about Phaere
APPEND_EARLY ~EU#LENAJ~

    IF ~Global("EU#LenaSexWithPhaereRevenge","LOCALS",1)~ EU#LenaTalk.PhaereRevenge.3
        SAY @4256
        IF ~~ THEN REPLY @4257 GOTO EU#LenaTalk.PhaereRevenge.3.1
        IF ~~ THEN REPLY @4259 GOTO EU#LenaTalk.PhaereRevenge.3.2
        IF ~~ THEN REPLY @4258 GOTO EU#LenaTalk.PhaereRevenge.3.3
    END

    IF ~Global("EU#LenaSexWithPhaereRevenge","LOCALS",1)~ BEGIN EU#LenaTalk.PhaereRevenge.3.1
        SAY @4262
        IF ~~ THEN REPLY @4264 DO ~SetGlobal("EU#LenaSexWithPhaereRevenge","LOCALS",0)~ EXIT
        IF ~~ THEN REPLY @4263 GOTO EU#LenaTalk.PhaereRevenge.3.3
    END

    IF ~Global("EU#LenaSexWithPhaereRevenge","LOCALS",1)~ BEGIN EU#LenaTalk.PhaereRevenge.3.2
        SAY @4261
        IF ~~ GOTO EU#LenaTalk.PhaereRevenge.3.1
    END

    IF ~Global("EU#LenaSexWithPhaereRevenge","LOCALS",1)~ BEGIN EU#LenaTalk.PhaereRevenge.3.3
        SAY @4260
        IF ~~ DO ~SetGlobal("EU#LenaSexWithPhaereRevenge","LOCALS",0)
            SetGlobal("EU#LenaOnLeave","LOCALS",1)~ EXIT
    END

    IF ~Global("EU#LenaSexWithPhaereRevenge","LOCALS",1)~ EU#LenaTalk.PhaereRevenge.1-1
        SAY @4252
        = @4249
        IF ~~ THEN REPLY #52144 EXTERN ~UDDEMON~ EU#DemonTalk.PhaereRevenge.2-2
        IF ~~ THEN REPLY #52143 EXTERN ~UDDEMON~ EU#DemonTalk.PhaereRevenge#Interrupt
    END

    IF ~Global("EU#LenaSexWithPhaereRevenge","GLOBAL",1)~ EU#LenaTalk.PhaereRevenge.1-2
        SAY @4249
        IF ~~ THEN REPLY @4251 EXTERN ~EU#LENAJ~ EU#LenaTalk.PhaereRevenge.2-1
        IF ~~ THEN REPLY #52144 EXTERN ~UDDEMON~ EU#DemonTalk.PhaereRevenge.2-2
        IF ~~ THEN REPLY #52143 EXTERN ~UDDEMON~ EU#DemonTalk.PhaereRevenge#Interrupt
    END

    IF ~Global("EU#LenaSexWithPhaereRevenge","LOCALS",1)~ EU#LenaTalk.PhaereRevenge.2-1
        SAY @4252
        IF ~~ EXTERN ~UDDEMON~ EU#DemonTalk.PhaereRevenge.2-2
    END

    IF WEIGHT #-1 ~Global("EU#LenaSexWithPhaereTalk","LOCALS",1)
                Global("PhaereInnuendo","GLOBAL",2)
                Global("EU#LenaRomanceActive","GLOBAL",1)~ BEGIN EU#LenaTalk.PhaereConflict#Slept#1
        SAY @4201
        IF ~~ THEN REPLY @4202 GOTO EU#LenaTalk.PhaereConflict#Slept#1.1
        IF ~~ THEN REPLY @4203 GOTO EU#LenaTalk.PhaereConflict#Slept#1.2
        IF ~~ THEN REPLY @4204 GOTO EU#LenaTalk.PhaereConflict#Slept#1.3
    END

    IF ~~ BEGIN EU#LenaTalk.PhaereConflict#Slept#1.1
        SAY @4205
        = @4206
        IF ~~ GOTO EU#LenaTalk.PhaereConflict#Slept#1.4
    END

    IF ~~ BEGIN EU#LenaTalk.PhaereConflict#Slept#1.2
        SAY @4207
        IF ~~ GOTO EU#LenaTalk.PhaereConflict#Slept#1.4
    END

    IF ~~ BEGIN EU#LenaTalk.PhaereConflict#Slept#1.3
        SAY @4208
        IF ~~ DO ~IncrementGlobal("EU#LenaLike","LOCALS",-1)
            SetGlobal("EU#LenaSexWithPhaereTalk","LOCALS",2)~ EXIT
    END

    IF ~~ BEGIN EU#LenaTalk.PhaereConflict#Slept#1.4
        SAY @4209
        IF ~~ DO ~SetGlobal("EU#LenaSexWithPhaereTalk","LOCALS",2)~ EXIT
    END

    IF WEIGHT #-1 ~Global("EU#LenaSexWithPhaereTalk","LOCALS",1)
                Global("PhaereInnuendo","GLOBAL",2)
                Global("EU#LenaRomanceActive","GLOBAL",2)~ BEGIN EU#LenaTalk.PhaereConflict#Slept#2
        SAY @4210
        IF ~~ THEN REPLY @4211 GOTO EU#LenaTalk.PhaereConflict#Slept#2.1
        IF ~~ THEN REPLY @4212  GOTO EU#LenaTalk.PhaereConflict#Slept#2.2
        IF ~GlobalGT("EU#LenaLike","LOCALS",10)~ THEN REPLY @4213 GOTO EU#LenaTalk.PhaereConflict#Slept#2.3-1
        IF ~GlobalLT("EU#LenaLike","LOCALS",11)~ THEN REPLY @4213 GOTO EU#LenaTalk.PhaereConflict#Slept#2.3-2
        IF ~~ THEN REPLY @4214 GOTO EU#LenaTalk.PhaereConflict#Slept#2.4
    END

    IF ~~ BEGIN EU#LenaTalk.PhaereConflict#Slept#2.1
        SAY @4215
        = @4216
        IF ~~ DO ~SetGlobal("EU#LenaSexWithPhaereForgive","LOCALS",1)
            SetGlobal("EU#LenaSexWithPhaereTalk","LOCALS",2)~ EXIT
    END

    IF ~~ BEGIN EU#LenaTalk.PhaereConflict#Slept#2.2
        SAY @4217
        IF ~~ GOTO EU#LenaTalk.PhaereConflict#Slept#2.5
    END

    IF ~~ BEGIN EU#LenaTalk.PhaereConflict#Slept#2.3-1
        SAY @4218
        IF ~~ DO ~SetGlobal("EU#LenaSexWithPhaereForgive","LOCALS",1)~ GOTO EU#LenaTalk.PhaereConflict#Slept#2.5
    END

    IF ~~ BEGIN EU#LenaTalk.PhaereConflict#Slept#2.3-2
        SAY @4219
        IF ~~ GOTO EU#LenaTalk.PhaereConflict#Slept#2.5
    END

    IF ~~ BEGIN EU#LenaTalk.PhaereConflict#Slept#2.4
        SAY @4220
        IF ~~ GOTO EU#LenaTalk.PhaereConflict#Slept#2.5
    END

    IF ~~ BEGIN EU#LenaTalk.PhaereConflict#Slept#2.5
        SAY @4221
        IF ~~ DO ~SetGlobal("EU#LenaSexWithPhaereTalk","LOCALS",2)~ EXIT
    END

    IF WEIGHT #-1 ~Global("EU#LenaSexWithPhaereTalk","LOCALS",1)
                Global("PhaereInnuendo","GLOBAL",3)
                Global("EU#LenaRomanceActive","GLOBAL",1)~ BEGIN EU#LenaTalk.PhaereConflict#Avoid#1
        SAY @4222
        IF ~~ THEN REPLY @4223 GOTO EU#LenaTalk.PhaereConflict#Avoid#1.1
        IF ~~ THEN REPLY @4224 GOTO EU#LenaTalk.PhaereConflict#Avoid#1.2
        IF ~~ THEN REPLY @4225 GOTO EU#LenaTalk.PhaereConflict#Avoid#1.3
    END

    IF ~~ BEGIN EU#LenaTalk.PhaereConflict#Avoid#1.1
        SAY @4226
        IF ~~ GOTO EU#LenaTalk.PhaereConflict#Avoid#1.4
    END

    IF ~~ BEGIN EU#LenaTalk.PhaereConflict#Avoid#1.2
        SAY @4227
        IF ~~ GOTO EU#LenaTalk.PhaereConflict#Avoid#1.4
    END

    IF ~~ BEGIN EU#LenaTalk.PhaereConflict#Avoid#1.3
        SAY @4228
        IF ~~ GOTO EU#LenaTalk.PhaereConflict#Avoid#1.4
    END

    IF ~~ BEGIN EU#LenaTalk.PhaereConflict#Avoid#1.4
        SAY @4229
        IF ~~ DO ~SetGlobal("EU#LenaSexWithPhaereTalk","LOCALS",2)~ EXIT
    END

    IF WEIGHT #-1 ~Global("EU#LenaSexWithPhaereTalk","LOCALS",1)
                Global("PhaereInnuendo","GLOBAL",3)
                Global("EU#LenaRomanceActive","GLOBAL",2)~ BEGIN EU#LenaTalk.PhaereConflict#Avoid#2
        SAY @4230
        IF ~~ THEN REPLY @4231 GOTO EU#LenaTalk.PhaereConflict#Avoid#2.1
        IF ~~ THEN REPLY @4232 GOTO EU#LenaTalk.PhaereConflict#Avoid#2.2
        IF ~~ THEN REPLY @4233 GOTO EU#LenaTalk.PhaereConflict#Avoid#2.3
    END

    IF ~~ BEGIN EU#LenaTalk.PhaereConflict#Avoid#2.4
        SAY @4234
        IF ~~ DO ~SetGlobal("EU#LenaSexWithPhaereTalk","LOCALS",2)~ EXIT
    END

    IF ~~ BEGIN EU#LenaTalk.PhaereConflict#Avoid#2.1
        SAY @4235
        IF ~~ GOTO EU#LenaTalk.PhaereConflict#Avoid#2.4
    END

    IF ~~ BEGIN EU#LenaTalk.PhaereConflict#Avoid#2.2
        SAY @4236
        IF ~~ GOTO EU#LenaTalk.PhaereConflict#Avoid#2.4
    END
    
    IF ~~ BEGIN EU#LenaTalk.PhaereConflict#Avoid#2.3
        SAY @4237
        IF ~~ THEN REPLY @4238 GOTO EU#LenaTalk.PhaereConflict#Avoid#2.3.1
        IF ~~ THEN REPLY @4239 GOTO EU#LenaTalk.PhaereConflict#Avoid#2.3.2
        IF ~~ THEN REPLY @4240 GOTO EU#LenaTalk.PhaereConflict#Avoid#2.3.3
    END

    IF ~~ BEGIN EU#LenaTalk.PhaereConflict#Avoid#2.3.1
        SAY @4241
        IF ~~ DO ~SetGlobal("EU#LenaSexWithPhaereTalk","LOCALS",2)~ EXIT
    END

    IF ~~ BEGIN EU#LenaTalk.PhaereConflict#Avoid#2.3.2
        SAY @4242
        = @4243
        IF ~~ DO ~SetGlobal("EU#LenaSexWithPhaereTalk","LOCALS",2)
            IncrementGlobal("EU#LenaLike","LOCALS",-1)~ EXIT
    END

    IF ~~ BEGIN EU#LenaTalk.PhaereConflict#Avoid#2.3.3
        SAY @4244
        IF ~~ DO ~SetGlobal("EU#LenaSexWithPhaereTalk","LOCALS",2)~ EXIT
    END

END

APPEND ~EU#LENAJ~

    IF ~~ BEGIN EU#LenaTalk.GiveEggsToUDDemon
        SAY @4245
        IF ~True()~ EXTERN UDDEMON 22
        IF ~InParty("Minsc")
            !StateCheck("Minsc",CD_STATE_NOTVALID)~     EXTERN MINSCJ 170
        IF ~InParty("Jaheira")
            !StateCheck("Jaheira",CD_STATE_NOTVALID)~   EXTERN JAHEIRAJ 470
        IF ~InParty("Anomen")
            !StateCheck("Anomen",CD_STATE_NOTVALID)
            Alignment("Anomen",LAWFUL_GOOD)~            EXTERN ANOMENJ 271
        IF ~InParty("Mazzy")
            !StateCheck("Mazzy",CD_STATE_NOTVALID)~     EXTERN MAZZYJ 175
        IF ~InParty("Valygar")
            !StateCheck("Valygar",CD_STATE_NOTVALID)~   EXTERN VALYGARJ 85
        //: not going to happen, keldorn & lena does not get along well
        IF ~InParty("Keldorn")
            !StateCheck("Keldorn",CD_STATE_NOTVALID)~   EXTERN KELDORJ 201
        IF ~InParty("Aerie")
            !StateCheck("Aerie",CD_STATE_NOTVALID)~     EXTERN AERIEJ 149
        IF ~InParty("Cernd")
            !StateCheck("Cernd",CD_STATE_NOTVALID)~     EXTERN CERNDJ 112
        IF ~InParty("Nalia")
            !StateCheck("Nalia",CD_STATE_NOTVALID)~     EXTERN NALIAJ 280
    END

END

////////////////////////////////////
//:.  Crooked Crane (lvl1 Inn)  .://
////////////////////////////////////

/* due to dialogue structure we have to disable some dialogue options first and add our "interjectable" Lena banters */
ADD_TRANS_TRIGGER ~CROBAR01~ 1 ~False()~ DO 0
ADD_TRANS_TRIGGER ~CROBAR01~ 2 ~False()~ DO 0

EXTEND_TOP ~CROBAR01~ 1
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN REPLY #45347 DO ~SetGlobal("EU#LenaCrookedCrane","LOCALS",1)~ EXTERN ~EU#LENAJ~ EU#LenaTalk.CrookedCrane
    IF ~OR(2) 
        !InParty("EU#LENA") 
        StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN REPLY #45347 DO ~StartStore("crobar01",LastTalkedToBy())~ EXIT
END

EXTEND_TOP ~CROBAR01~ 2
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN REPLY #45352 DO ~SetGlobal("EU#LenaCrookedCrane","LOCALS",1)~ EXTERN ~EU#LENAJ~ EU#LenaTalk.CrookedCrane
    IF ~OR(2) 
        !InParty("EU#LENA") 
        StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN REPLY #45352 DO ~StartStore("crobar01",LastTalkedToBy())~ EXIT
END

CHAIN IF ~Global("EU#LenaCrookedCrane","LOCALS",1)~ THEN ~EU#LENAJ~ EU#LenaTalk.CrookedCrane
    @5029
    DO ~SetGlobal("EU#LenaCrookedCrane","LOCALS",0)~ // reset
    == ~CROBAR01~   @5030
    == ~EU#LENAJ~   @5031
EXIT

////////////////////////////////////////////////
//:.  Non Joinable NPC Interjections (SOA)  .://
////////////////////////////////////////////////

//: mugger interjections, x4
INTERJECT_COPY_TRANS2 ~MUGGER1~ 1 EU#LenaTalk.InterjectMugger1
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        Global("EU#LenaInterject.Mugger","LOCALS",0)
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5013 
        DO ~SetGlobal("EU#LenaInterject.Mugger","LOCALS",1)~
END
INTERJECT_COPY_TRANS2 ~MUGGER1~ 3 EU#LenaTalk.InterjectMugger2
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        Global("EU#LenaInterject.Mugger","LOCALS",0)
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5013 
        DO ~SetGlobal("EU#LenaInterject.Mugger","LOCALS",1)~
END
INTERJECT_COPY_TRANS2 ~MUGGER3~ 1 EU#LenaTalk.InterjectMugger3
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        Global("EU#LenaInterject.Mugger","LOCALS",0)
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5013 
        DO ~SetGlobal("EU#LenaInterject.Mugger","LOCALS",1)~
END
INTERJECT_COPY_TRANS2 ~MUGGER3~ 4 EU#LenaTalk.InterjectMugger4
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        Global("EU#LenaInterject.Mugger","LOCALS",0)
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5013 
        DO ~SetGlobal("EU#LenaInterject.Mugger","LOCALS",1)~
END

//: Gaal
INTERJECT_COPY_TRANS ~CSGAAL~ 1 EU#LenaTalk.InterjectGaal
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5014 
END

//: temple high clerics for cleric stronghold quest, x3
INTERJECT_COPY_TRANS ~BHARVAL~ 17 EU#LenaTalk.InterjectArval
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5015
END
INTERJECT_COPY_TRANS ~BHNALLA~ 16 EU#LenaTalk.InterjectNallabir
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5015
END
INTERJECT_COPY_TRANS ~BHOISIG~ 19 EU#LenaTalk.InterjectOisig
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5015
END

//: Maevar orders Embarl death
INTERJECT_COPY_TRANS ~MAEVAR~ 31 EU#LenaTalk.InterjectMaevar
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5016
END

//: Embarl
INTERJECT_COPY_TRANS2 ~EMBARL~ 1 EU#LenaTalk.InterjectEmbarl1
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5018
        DO ~IncrementGlobal("EU#LenaLike","LOCALS",1)~
END
INTERJECT_COPY_TRANS2 ~EMBARL~ 6 EU#LenaTalk.InterjectEmbarl2
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5017
        DO ~IncrementGlobal("EU#LenaLike","LOCALS",-1)~
END

//: Renal
INTERJECT_COPY_TRANS ~RENAL~ 45 EU#LenaTalk.InterjectRenal1
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5019
        DO ~IncrementGlobal("EU#LenaLike","LOCALS",1)~
END
INTERJECT_COPY_TRANS ~RENAL~ 93 EU#LenaTalk.InterjectRenal1
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5020
END

//: Edwin giving quest to kill Rayic
INTERJECT ~EDWIN~ 4 EU#LenaTalk.InterjectEdwin
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5021
    == ~EDWIN~      @5022
    == ~EU#LENAJ~   @5023
COPY_TRANS ~EDWIN~ 8

//: Khellon (evil way in trademeet)
INTERJECT_COPY_TRANS ~TREVIL01~ 24 EU#LenaTalk.InterjectKhellon
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5024
END

//: Mencar
INTERJECT ~SEVPAT01~ 1 EU#LenaTalk.InterjectMencar
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5025
    == ~SEVPAT01~   @5026
END
IF ~~ EXTERN ~SEVPAT01~ 9

//: Svirfneblin Patrol Leader
INTERJECT_COPY_TRANS2 ~UDSVIR08~ 1 EU#LenaTalk.InterjectSvirfneblinPL
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5027
END

//: Solafein when we are about to kill but not kill
INTERJECT_COPY_TRANS ~UDSOLA01~ 122 EU#LenaTalk.InterjectSolafein
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5028
END

//: Imoen at spellhold PC abandons her
INTERJECT_COPY_TRANS ~IMOEN2~ 22 EU#LenaTalk.InterjectImoen
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5032
END

//: prelate in order of radiant heart (NOT PRELATE but Sir Ryan Trawl)
//: KAYL2 does not have a script so we forces Lena to talk
APPEND ~KAYL2~

    IF WEIGHT #-1 ~Global("EU#LenaInOrderOfRadiantHeart","LOCALS",1)~ BEGIN EU#LenaTalk.InterjectPrelate
        SAY @5033
        IF ~~ DO ~SetGlobal("EU#LenaInOrderOfRadiantHeart","LOCALS",2)~ EXTERN ~EU#LENAJ~ EU#LenaTalk.InterjectPrelate.2
    END
    
END

APPEND_EARLY ~EU#LENAJ~
    
    IF ~Global("EU#LenaInOrderOfRadiantHeart","LOCALS",2)~ BEGIN EU#LenaTalk.InterjectPrelate.2
        SAY @5034
        IF ~ReputationLT([PC],10)~ THEN REPLY @5035 DO ~
            SetGlobal("EU#LenaInOrderOfRadiantHeart","LOCALS",3)
            IncrementGlobal("EU#LenaLike","LOCALS",-1)~ EXTERN ~KAYL2~ 24
        IF ~ReputationGT([PC],9)
            Global("KaylFallenPaladinPlot","GLOBAL",0)
            Global("Kayl1Done","GLOBAL",0)~ THEN REPLY @5035 DO ~
            SetGlobal("EU#LenaInOrderOfRadiantHeart","LOCALS",3)
            IncrementGlobal("EU#LenaLike","LOCALS",-1)~ EXTERN ~KAYL2~ 5
        IF ~~ THEN REPLY @5036 DO ~SetGlobal("EU#LenaInterjectPrelate","LOCALS",1)
            SetGlobal("EU#LenaInOrderOfRadiantHeart","LOCALS",3)~ EXTERN ~EU#LENAJ~ EU#LenaTalk.InterjectPrelate.3
    END

END

CHAIN IF ~Global("EU#LenaInterjectPrelate","LOCALS",2)~ THEN ~EU#LENAJ~ EU#LenaTalk.InterjectPrelate.3
    @5037
    DO ~SetGlobal("EU#LenaInterjectPrelate","LOCALS",1)~
    == ~KAYL2~   @5038
END
IF ~ReputationLT([PC],10)~ EXTERN ~KAYL2~ 24
IF ~ReputationGT([PC],9)
    Global("KaylFallenPaladinPlot","GLOBAL",0)
    Global("Kayl1Done","GLOBAL",0)~ EXTERN ~KAYL2~ 5

//: Drizzt, Lena provokes

INTERJECT ~C6DRIZZ1~ 40 EU#LenaTalk.InterjectDrizzt
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5040
        DO ~SetGlobal("EU#LenaMetDrizzt","LOCALS",1)~
    == ~C6DRIZZ1~   @5041
END
IF ~~ THEN REPLY @5042 EXTERN ~EU#LENAJ~ EU#LenaTalk.InterjectDrizzt.2
IF ~~ THEN REPLY @5043 EXTERN ~EU#LENAJ~ EU#LenaTalk.InterjectDrizzt.3

CHAIN IF ~Global("EU#LenaMetDrizzt","LOCALS",1)~ THEN ~EU#LENAJ~ EU#LenaTalk.InterjectDrizzt.2
    @5044
        DO ~SetGlobal("EU#LenaMetDrizzt","LOCALS",2)~
    == ~C6DRIZZ1~   @5045
COPY_TRANS ~C6DRIZZ1~ 40

CHAIN IF ~Global("EU#LenaMetDrizzt","LOCALS",1)~ THEN ~EU#LENAJ~ EU#LenaTalk.InterjectDrizzt.3
    @5046
        DO ~SetGlobal("EU#LenaMetDrizzt","LOCALS",2)~
    == ~C6DRIZZ1~   @5047
COPY_TRANS ~C6DRIZZ1~ 41

//: side with Bodhi, C2
INTERJECT_COPY_TRANS ~BODHI~ 6 EU#LenaTalk.InterjectBodhi
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5048
END

//: side with Aran, C3
INTERJECT_COPY_TRANS ~GAELAN~ 66 EU#LenaTalk.InterjectGaelan
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5049
END

//: Neeber
INTERJECT ~NEEBER~ 2 EU#LenaTalk.InterjectNeeber
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5050
    == ~NEEBER~     @5051
END
IF ~~ DO ~AddXPObject(Player1,1000)
          AddXPObject(Player2,1000)
          AddXPObject(Player3,1000)
          AddXPObject(Player4,1000)
          AddXPObject(Player5,1000)
          AddXPObject(Player6,1000)
          EscapeArea()~ EXIT

//: Aegisfield
INTERJECT_COPY_TRANS ~INSPECT~ 46 EU#LenaTalk.InterjectAegisfield
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5052
END

//: Saemon in spellhold, offer exit from spellhold
INTERJECT_COPY_TRANS ~PPSAEM2~ 24 EU#LenaTalk.InterjectSaemon
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5053
END

//: Mayor speech in umar hills
INTERJECT_COPY_TRANS ~UHMAY01~ 136 EU#LenaTalk.InterjectMLloyd
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5054
END

//: Shadow Dragon, Thaxll'ssillyia
ADD_STATE_TRIGGER ~SHADRA01~ 0 ~OR(4)
    !InParty("EU#LENA")
    StateCheck("EU#LENA",CD_STATE_NOTVALID)
    !HasItemEquiped("EU#G003","EU#LENA")
    !See("EU#LENA")~

APPEND ~SHADRA01~

    IF WEIGHT #-1 ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)
        HasItemEquiped("EU#G003","EU#LENA")
        See("EU#LENA")~ BEGIN EU#LenaTalk.InterjectShadowDragon
        SAY @5055
        IF ~~ DO ~SetGlobal("EU#LenaAwakenShadowDragon","LOCALS",1)~ EXTERN ~EU#LENAJ~ EU#LenaTalk.InterjectShadowDragon.2
    END
    
END

CHAIN ~EU#LENAJ~ EU#LenaTalk.InterjectShadowDragon.2
    @5056
    == ~SHADRA01~   @5057
END
IF ~~ DO ~Enemy()~ EXIT

//: Raelis Shai first play
INTERJECT_COPY_TRANS ~RAELIS~ 33 EU#LenaTalk.InterjectRaelis
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5058
END

//: Lucette, Xzar's killer
INTERJECT_COPY_TRANS2 ~LUSETTE~ 11 EU#LenaTalk.InterjectLucette
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5059
    == ~BJAHEIR~  IF ~InParty("Jaheira")
        !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @5060
END

//: lost child in Docks
INTERJECT_COPY_TRANS2 ~DLOST~ 3 EU#LenaTalk.InterjectLostChild1
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5062
END
INTERJECT_COPY_TRANS2 ~DLOST~ 4 EU#LenaTalk.InterjectLostChild2
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5063
END

//: dragon in Suldannessar
INTERJECT_COPY_TRANS2 ~DRAGBLAC~ 2 EU#LenaTalk.InterjectSuldannessarDragon
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5078
END

//: Corneil, magic license
INTERJECT_COPY_TRANS ~CORNEIL~ 11 EU#LenaTalk.InterjectCorneil
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5087
END

//////////////////////////////////////////////
//:.  Familiar Demon Interjections (SOA)  .://
//////////////////////////////////////////////

//: Lea'liyl
ADD_STATE_TRIGGER ~OBSDEM01~ 0 ~OR(3)
    !InParty("EU#LENA")
    StateCheck("EU#LENA",CD_STATE_NOTVALID)
    !See("EU#LENA")~

APPEND ~OBSDEM01~

    IF WEIGHT #-1 ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ BEGIN EU#LenaTalk.InterjectLaelyil
        SAY @5079
        IF ~~ EXTERN ~EU#LENAJ~ EU#LenaTalk.InterjectLaelyil.2
    END
    
END

CHAIN ~EU#LENAJ~ EU#LenaTalk.InterjectLaelyil.2
    @5080
    == ~OBSDEM01~   @5081
EXIT

//: Warden at planar prison
INTERJECT_COPY_TRANS ~PWARDEN~ 3 EU#LenaTalk.InterjectWarden
    == ~PWARDEN~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5082
    == ~EU#LENAJ~   @5083
    == ~PWARDEN~    @5084
END

//: Empathic Manifestation
INTERJECT_COPY_TRANS2 ~RIFTCR04~ 0 EU#LenaTalk.InterjectHatredDemon
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5085
END

/////////////////////////////////////////////////////
//:.  Non Joinable NPC Interjections v0.4 (SOA)  .://
/////////////////////////////////////////////////////

//: Amalas & Ruffians if PC is coward, 2 cases
INTERJECT_COPY_TRANS ~RUFPAL2~ 2 EU#LenaTalk.InterjectAmalasProvoke.1
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5088
    == ~RUFFIAN~    @5089
    == ~RUFPAL1~    @5090
    == ~RUFPAL2~    @5091
    == ~EU#LENAJ~   @5092 DO ~Attack("Amalas")~
END
INTERJECT_COPY_TRANS ~RUFPAL2~ 4 EU#LenaTalk.InterjectAmalasProvoke.2
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5088
    == ~RUFFIAN~    @5089
    == ~RUFPAL1~    @5090
    == ~RUFPAL2~    @5091
    == ~EU#LENAJ~   @5092 DO ~Attack("Amalas")~
END

//: Frankie, copper coronet match greeter
INTERJECT_COPY_TRANS ~COPGREET~ 6 EU#LenaTalk.InterjectFrankie
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5093
END

//: Renfeld
INTERJECT_COPY_TRANS2 ~RENFELD~ 6 EU#LenaTalk.InterjectRenfeld
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5095
END

//: Tirdir
INTERJECT_COPY_TRANS2 ~TIRDIR~ 11 EU#LenaTalk.InterjectTirdir
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5096
END

//: Teos
INTERJECT_COPY_TRANS ~MGTEOS01~ 17 EU#LenaTalk.InterjectTeos
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5098
END

//: Delcia
INTERJECT_COPY_TRANS2 ~DELCIA~ 16 EU#LenaTalk.InterjectDelcia.1
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)
        Global("EU#LenaRomanceActive","GLOBAL",2)~ THEN @5100
END
INTERJECT_COPY_TRANS2 ~DELCIA~ 16 EU#LenaTalk.InterjectDelcia.2
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)
        !Global("EU#LenaRomanceActive","GLOBAL",2)~ THEN @5099
END

//: Marcus, thief stronghold quest, Lena autokill
INTERJECT ~MARCUS~ 0 EU#LenaTalk.InterjectMarcus
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)
        IsGabber("EU#LENA")~ THEN @5102 
END
IF ~~ DO ~Wait(1) 
    ActionOverride("Marcus",Kill(Myself))
    SetGlobal("EU#LenaKilledMarcus","AR0313",1)~ EXIT

//: Raelis Shai, disable option about race, add 2, 1 for lena, 1 for non lena (same)
ADD_TRANS_TRIGGER ~RAELIS~ 38 ~False()~ DO 2
EXTEND_BOTTOM ~RAELIS~ 38 
    IF ~InParty("EU#LENA") 
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ 
        THEN REPLY #29965 
        EXTERN ~EU#LENAJ~ EU#LenaTalk.InterjectRaelis.2
    IF ~OR(2) 
        !InParty("EU#LENA") 
        StateCheck("EU#LENA",CD_STATE_NOTVALID)~ 
        THEN REPLY #29965
        EXTERN ~RAELIS~ 44
END

APPEND_EARLY ~RAELIS~

    IF ~~ BEGIN EU#RaelisTalk.InterjectRaelis.2
        SAY @5104
        IF ~~ THEN REPLY #29979 EXTERN ~RAELIS~ 41
        IF ~~ THEN REPLY #29980 EXTERN ~RAELIS~ 45
    END

END

APPEND_EARLY ~EU#LENAJ~

    IF ~~ BEGIN EU#LenaTalk.InterjectRaelis.2
        SAY @5103
        IF ~~ EXTERN ~RAELIS~ EU#RaelisTalk.InterjectRaelis.2
    END

END

//: Ryan, quest for Anarg
//: when setting refuse variable, if wait for Refuse() case then it does not work, (.5 does not trigger) instead i set variable Refuse() so only set Accept() when accepts (no trigger anyway)
INTERJECT ~KAYL2~ 12 EU#LenaTalk.InterjectPrelate.4
    == ~KAYL2~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5105 DO ~SetGlobal("EU#LenaPlayerRefusedAnargQuest","LOCALS",1)~
    == ~EU#LENAJ~   @5106
    == ~KAYL2~      @5107
END
IF ~~ THEN REPLY #31816 DO ~SetGlobal("EU#LenaPlayerRefusedAnargQuest","LOCALS",0)
    ActionOverride("EU#Lena",IncrementGlobal("EU#LenaLike","LOCALS",1))~ EXTERN ~KAYL2~ 14
IF ~~ THEN REPLY #31817 DO ~SetGlobal("EU#LenaPlayerRefusedAnargQuest","LOCALS",1)
    ActionOverride("EU#Lena",IncrementGlobal("EU#LenaLike","LOCALS",-1))~ EXTERN ~KAYL2~ 7

INTERJECT_COPY_TRANS ~KAYL2~ 7 EU#LenaTalk.InterjectPrelate.5
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        Global("EU#LenaPlayerRefusedAnargQuest","LOCALS",1)
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5109
END

INTERJECT_COPY_TRANS ~KAYL2~ 14 EU#LenaTalk.InterjectPrelate.6
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5108
END
    
//: Tanner Smelly Room
APPEND_EARLY ~EU#LENAJ~

    IF ~Global("EU#LenaInTanner","LOCALS",1)~ BEGIN EU#LenaTalk.InTanner
        SAY @5097
        IF ~~ DO ~SetGlobal("EU#LenaInTanner","LOCALS",2)~ EXIT
    END

END

//: Paladins at Windspear, 4 case
INTERJECT_COPY_TRANS2 ~PALKNI05~ 1 EU#LenaTalk.InterjectWSPaladins.1
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5110 DO ~SetGlobal("EU#LenaKilledWSPaladins","AR1200",1)~
END
INTERJECT_COPY_TRANS2 ~PALKNI05~ 2 EU#LenaTalk.InterjectWSPaladins.2
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5110 DO ~SetGlobal("EU#LenaKilledWSPaladins","AR1200",1)~
END
INTERJECT_COPY_TRANS2 ~PALKNI05~ 3 EU#LenaTalk.InterjectWSPaladins.3
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5110 DO ~SetGlobal("EU#LenaKilledWSPaladins","AR1200",1)~
END
INTERJECT_COPY_TRANS2 ~PALKNI05~ 4 EU#LenaTalk.InterjectWSPaladins.4
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5110 DO ~SetGlobal("EU#LenaKilledWSPaladins","AR1200",1)~
END

//: Firkraag, PC decide to fight
INTERJECT_COPY_TRANS2 ~FIRKRA02~ 25 EU#LenaTalk.InterjectFirkraag.1
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5112
END

//: Firkraag, PC decide to back off
INTERJECT ~FIRKRA02~ 21 EU#LenaTalk.InterjectFirkraag.2
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5113 DO ~SetGlobal("Firmag01Move","GLOBAL",1)
        ActionOverride("firmag01",ForceSpell(Myself,DRYAD_TELEPORT))~ 
END
IF ~NumInPartyGT(2)~ THEN REPLY @5114 UNSOLVED_JOURNAL #22917 EXTERN ~EU#LENAJ~ EU#LenaTalk.InterjectFirkraag.2.1#1
IF ~NumInPartyLT(3)~ THEN REPLY @5114 UNSOLVED_JOURNAL #22917 EXTERN ~EU#LENAJ~ EU#LenaTalk.InterjectFirkraag.2.1#2
IF ~~ THEN REPLY @5115 UNSOLVED_JOURNAL #22917 EXTERN ~EU#LENAJ~ EU#LenaTalk.InterjectFirkraag.2.2
IF ~Global("EU#LenaAwakenShadowDragon","LOCALS",1)~ THEN REPLY @5116 UNSOLVED_JOURNAL #22917 EXTERN ~EU#LENAJ~ EU#LenaTalk.InterjectFirkraag.2.3

APPEND_EARLY ~EU#LENAJ~

    IF ~~ BEGIN EU#LenaTalk.InterjectFirkraag.2.1#1
        SAY @5117
        IF ~~ EXIT
    END

    IF ~~ BEGIN EU#LenaTalk.InterjectFirkraag.2.1#2
        SAY @5118
        IF ~~ EXIT
    END

    IF ~~ BEGIN EU#LenaTalk.InterjectFirkraag.2.2
        SAY @5119
        IF ~~ EXIT
    END

    IF ~~ BEGIN EU#LenaTalk.InterjectFirkraag.2.3
        SAY @5120
        IF ~~ EXIT
    END
END

//: Galvena festhall entrance, Front
EXTEND_BOTTOM ~PIRMUR03~ 1
    IF ~InParty("EU#LENA")
        PartyHasItem("miscAN")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN REPLY @5121 EXTERN ~EU#LENAJ~ EU#LenaTalk.InterjectFront
END

CHAIN IF ~Global("EU#LenaNewCourtesanInGalvena","LOCALS",2)~ THEN ~EU#LENAJ~ EU#LenaTalk.InterjectFront.5
    @5131
    DO ~SetGlobal("EU#LenaNewCourtesanInGalvena","LOCALS",3)~
    == ~BVICONI~    @5132
    == ~EU#LENAJ~   @5133
EXIT

APPEND_EARLY ~EU#LENAJ~

    IF ~~ BEGIN EU#LenaTalk.InterjectFront
        SAY @5122
        IF ~~ DO ~SetGlobal("EU#LenaNewCourtesanInGalvena","LOCALS",1)~ EXTERN ~PIRMUR03~ 7
    END

    IF ~Global("EU#LenaNewCourtesanInGalvena","LOCALS",2)~ BEGIN EU#LenaTalk.InterjectFront.2
        SAY @5123
        IF ~~ THEN REPLY @5124 GOTO EU#LenaTalk.InterjectFront.3
        IF ~~ THEN REPLY @5125 GOTO EU#LenaTalk.InterjectFront.3
        IF ~~ THEN REPLY @5126 GOTO EU#LenaTalk.InterjectFront.4
        IF ~InParty("Viconia")
            !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN REPLY @5127 GOTO EU#LenaTalk.InterjectFront.5
        IF ~OR(2)
            !InParty("Viconia")
            StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN REPLY @5127 GOTO EU#LenaTalk.InterjectFront.6
    END

    IF ~~ BEGIN EU#LenaTalk.InterjectFront.3
        SAY @5128
        IF ~~ DO ~SetGlobal("EU#LenaNewCourtesanInGalvena","LOCALS",3)~ EXIT
    END

    IF ~~ BEGIN EU#LenaTalk.InterjectFront.4
        SAY @5129
        IF ~~ DO ~SetGlobal("EU#LenaNewCourtesanInGalvena","LOCALS",3)~ EXIT
    END

    IF ~~ BEGIN EU#LenaTalk.InterjectFront.6
        SAY @5130
        IF ~~ DO ~SetGlobal("EU#LenaNewCourtesanInGalvena","LOCALS",3)~ EXIT
    END

END

//: Saemon offers to release mages at spellhold
INTERJECT_COPY_TRANS2 ~PPSAEM2~ 8 EU#LenaTalk.InterjectSaemon.2
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5134
END
    
//: Adalon, agreed peacefully
INTERJECT_COPY_TRANS2 ~UDSILVER~ 37 EU#LenaTalk.InterjectAdalon.1
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5137
END

//: Lasaonar, underdark fighter, lena provokes
INTERJECT ~UDLESA~ 0 EU#LenaTalk.InterjectLasaonar.1
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5138
        DO ~SetGlobal("duelStarts","AR2202",2)
            SetGlobal("DuelOn","AR2202",0)~
    == ~UDLESA~     @5139
    == ~EU#LENAJ~   @5140
    == ~UDLESA~     @5141
END
IF ~Global("EU#LenaPartySlot","LOCALS",1)~ DO ~SetGlobal("EU#LenaDuelingLasaonar","LOCALS",1) SetGlobal("PlayerDuelingLesaonar","GLOBAL",1)~ EXTERN ~UDDROW16~ 10
IF ~Global("EU#LenaPartySlot","LOCALS",2)~ DO ~SetGlobal("EU#LenaDuelingLasaonar","LOCALS",1) SetGlobal("PlayerDuelingLesaonar","GLOBAL",2)~ EXTERN ~UDDROW16~ 10
IF ~Global("EU#LenaPartySlot","LOCALS",3)~ DO ~SetGlobal("EU#LenaDuelingLasaonar","LOCALS",1) SetGlobal("PlayerDuelingLesaonar","GLOBAL",3)~ EXTERN ~UDDROW16~ 10
IF ~Global("EU#LenaPartySlot","LOCALS",4)~ DO ~SetGlobal("EU#LenaDuelingLasaonar","LOCALS",1) SetGlobal("PlayerDuelingLesaonar","GLOBAL",4)~ EXTERN ~UDDROW16~ 10
IF ~Global("EU#LenaPartySlot","LOCALS",5)~ DO ~SetGlobal("EU#LenaDuelingLasaonar","LOCALS",1) SetGlobal("PlayerDuelingLesaonar","GLOBAL",5)~ EXTERN ~UDDROW16~ 10
IF ~Global("EU#LenaPartySlot","LOCALS",6)~ DO ~SetGlobal("EU#LenaDuelingLasaonar","LOCALS",1) SetGlobal("PlayerDuelingLesaonar","GLOBAL",6)~ EXTERN ~UDDROW16~ 10

//: drow near lasaonar
INTERJECT ~UDDROW16~ 11 EU#LenaTalk.InterjectLasaonar.3
    == ~EU#LENAJ~ IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN @5142
    == ~UDDROW16~   @5143
END
IF ~~ DO ~
    StartCutSceneMode()
    SetGlobal("LesaNoFightYet","GLOBAL",0)
    SetGlobal("EU#LenaDuelingLesaonar","LOCALS",1)
    StartCombatCounter()
    SetGlobal("DuelOn","AR2202",1)
    ActionOverride("udlesa",Enemy())
    FadeToColor([20.0],0)
    Wait(2)
    ActionOverride("udlesa",JumpToPoint([744.1305]))
    ActionOverride("EU#Lena",JumpToPoint([949.1338]))
    MoveViewPoint([949.1338],100)
    Wait(1)
    FadeFromColor([20.0],0)
    SetGlobal("DuelOn","AR2202",1)
    EndCutSceneMode()~ EXIT
