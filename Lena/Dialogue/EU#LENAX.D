/////////////////////////////////////
//:.  Cespenar Upgrade Dialogue  .://
/////////////////////////////////////

//: Cespenar can upgrade armor & weapon
EXTEND_BOTTOM ~BOTSMITH~ 4
    //: upgrade weapon
    IF ~PartyHasItem("EU#WP1")
        Global("EU#LenaFifthCespenarBanter","LOCALS",3)
        InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)
        !Global("EU#LenaWeaponUpgrade","LOCALS",1)~ 
    DO ~SetGlobal("EU#LenaWeaponUpgradeTalk","LOCALS",1)~ 
    EXTERN ~BOTSMITH~ EU#LenaTalk.Cespenar#Weapon

    //: upgrade armor
    IF ~PartyHasItem("EU#ARM1")
        InParty("EU#LENA")
        Global("EU#LenaFifthCespenarBanter","LOCALS",3)
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)
        !Global("EU#LenaArmorUpgrade","LOCALS",1)~ 
    DO ~SetGlobal("EU#LenaArmorUpgradeTalk","LOCALS",1)~ 
    EXTERN ~BOTSMITH~ EU#LenaTalk.Cespenar#Armor
END

///////////////////////////////
//:.  weapon upgrade talk  .://
///////////////////////////////

//: initial talk
CHAIN IF ~Global("EU#LenaWeaponUpgradeTalk","LOCALS",1)~ THEN ~BOTSMITH~ EU#LenaTalk.Cespenar#Weapon
    @4013
    == ~EU#LENAJ~   @4014
    == ~BOTSMITH~   @4015
END
IF ~PartyHasItem("COMPON04")~   EXTERN ~BOTSMITH~ EU#LenaTalk.Cespenar#Weapon#HasCompound
IF ~!PartyHasItem("COMPON04")~  EXTERN ~BOTSMITH~ EU#LenaTalk.Cespenar#Weapon#LackCompound

//--

//: has component, check other conditions
CHAIN IF ~Global("EU#LenaWeaponUpgradeTalk","LOCALS",1)~ THEN ~BOTSMITH~ EU#LenaTalk.Cespenar#Weapon#HasCompound
    @4016
END
IF ~~                   THEN REPLY @4006 EXTERN ~EU#LENAJ~ EU#LenaTalk.Cespenar#Weapon#PlayerReject
IF ~PartyGoldLT(10000)~ THEN REPLY @4011 EXTERN ~BOTSMITH~ EU#LenaTalk.Cespenar#Weapon#Gold
IF ~PartyGoldGT(9999)~  THEN REPLY @4008 EXTERN ~EU#LENAJ~ EU#LenaTalk.Cespenar#Weapon#PlayerConfirm

//--

//: gold and compound available but player denies
CHAIN IF ~Global("EU#LenaWeaponUpgradeTalk","LOCALS",1)~ THEN ~EU#LENAJ~ EU#LenaTalk.Cespenar#Weapon#PlayerReject
    @4007
    DO ~SetGlobal("EU#LenaWeaponUpgradeTalk","LOCALS",0)~
END
COPY_TRANS ~BOTSMITH~ 4

//--

//: Lena confirms upgrade, Cespenar starts
CHAIN IF ~Global("EU#LenaWeaponUpgradeTalk","LOCALS",1)~ THEN ~EU#LENAJ~ EU#LenaTalk.Cespenar#Weapon#PlayerConfirm
    @4017
    == ~BOTSMITH~   @4010
END
IF ~~ DO ~
    SetGlobal("EU#LenaWeaponUpgradeTalk","LOCALS",0)
    SetGlobal("ItemMaker","GLOBAL",73242)
    TakePartyGold(10000)
    TakePartyItemNum("EU#WP1",1)
    TakePartyItemNum("compon04",1)
    DestroyItem("EU#WP1")
    DestroyItem("compon04")
    DestroyGold(10000)
    StartCutSceneMode()
    StartCutScene("cutsmith")~ EXIT

//--

//: party missing compound
CHAIN IF ~Global("EU#LenaWeaponUpgradeTalk","LOCALS",1)~ THEN ~BOTSMITH~ EU#LenaTalk.Cespenar#Weapon#LackCompound
    @4018
    DO ~SetGlobal("EU#LenaWeaponUpgradeTalk","LOCALS",0)~
END
COPY_TRANS ~BOTSMITH~ 4

//--

//: player does not have much gold
CHAIN IF ~Global("EU#LenaWeaponUpgradeTalk","LOCALS",1)~ THEN ~BOTSMITH~ EU#LenaTalk.Cespenar#Weapon#Gold
    @4019
    DO ~SetGlobal("EU#LenaWeaponUpgradeTalk","LOCALS",0)~
END
COPY_TRANS ~BOTSMITH~ 4

//////////////////////////////
//:.  armor upgrade talk  .://
//////////////////////////////

//: initial talk
CHAIN IF ~Global("EU#LenaArmorUpgradeTalk","LOCALS",1)~ THEN ~BOTSMITH~ EU#LenaTalk.Cespenar#Armor
    @4002
    == ~EU#LENAJ~   @4003
    == ~BOTSMITH~   @4004
END
IF ~PartyHasItem("COMPON06")~   EXTERN ~BOTSMITH~ EU#LenaTalk.Cespenar#Armor#HasCompound
IF ~!PartyHasItem("COMPON06")~  EXTERN ~BOTSMITH~ EU#LenaTalk.Cespenar#Armor#LackCompound

//--

//: party missing compound
CHAIN IF ~Global("EU#LenaArmorUpgradeTalk","LOCALS",1)~ THEN ~BOTSMITH~ EU#LenaTalk.Cespenar#Armor#LackCompound
    @4012
    DO ~SetGlobal("EU#LenaArmorUpgradeTalk","LOCALS",0)~
END
COPY_TRANS ~BOTSMITH~ 4
IF ~PartyHasItem("EU#WP1")
    InParty("EU#LENA")
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    !Global("EU#LenaWeaponUpgrade","LOCALS",1)~ 
    DO ~SetGlobal("EU#LenaWeaponUpgradeTalk","LOCALS",1)~ 
    EXTERN ~BOTSMITH~ EU#LenaTalk.Cespenar#Weapon

//--

//: Lena confirms upgrade, Cespenar starts
CHAIN IF ~Global("EU#LenaArmorUpgradeTalk","LOCALS",1)~ THEN ~EU#LENAJ~ EU#LenaTalk.Cespenar#Armor#PlayerConfirm
    @4009
    == ~BOTSMITH~   @4010
END
IF ~~ DO ~
    SetGlobal("EU#LenaArmorUpgradeTalk","LOCALS",0)
    SetGlobal("ItemMaker","GLOBAL",73241)
    TakePartyGold(10000)
    TakePartyItemNum("EU#ARM1",1)
    TakePartyItemNum("compon06",1)
    DestroyItem("EU#ARM1")
    DestroyItem("compon06")
    DestroyGold(10000)
    StartCutSceneMode()
    StartCutScene("cutsmith")~ EXIT

//--

//: gold and compound available but player denies
CHAIN IF ~Global("EU#LenaArmorUpgradeTalk","LOCALS",1)~ THEN ~EU#LENAJ~ EU#LenaTalk.Cespenar#Armor#PlayerReject
    @4007
    DO ~SetGlobal("EU#LenaArmorUpgradeTalk","LOCALS",0)~
END
COPY_TRANS ~BOTSMITH~ 4
IF ~PartyHasItem("EU#WP1")
    InParty("EU#LENA")
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    !Global("EU#LenaWeaponUpgrade","LOCALS",1)~ 
    DO ~SetGlobal("EU#LenaWeaponUpgradeTalk","LOCALS",1)~ 
    EXTERN ~BOTSMITH~ EU#LenaTalk.Cespenar#Weapon

//--

//: has component, check other conditions
CHAIN IF ~Global("EU#LenaArmorUpgradeTalk","LOCALS",1)~ THEN ~BOTSMITH~ EU#LenaTalk.Cespenar#Armor#HasCompound
    @4005
END
IF ~~                   THEN REPLY @4006 EXTERN ~EU#LENAJ~ EU#LenaTalk.Cespenar#Armor#PlayerReject
IF ~PartyGoldLT(10000)~ THEN REPLY @4011 EXTERN ~BOTSMITH~ EU#LenaTalk.Cespenar#Armor#Gold
IF ~PartyGoldGT(9999)~  THEN REPLY @4008 EXTERN ~EU#LENAJ~ EU#LenaTalk.Cespenar#Armor#PlayerConfirm

//--

//: player does not have much gold
CHAIN IF ~Global("EU#LenaArmorUpgradeTalk","LOCALS",1)~ THEN ~BOTSMITH~ EU#LenaTalk.Cespenar#Armor#Gold
    @4019
    DO ~SetGlobal("EU#LenaArmorUpgradeTalk","LOCALS",0)~
END
COPY_TRANS ~BOTSMITH~ 4
IF ~PartyHasItem("EU#WP1")
    InParty("EU#LENA")
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    !Global("EU#LenaWeaponUpgrade","LOCALS",1)~ 
    DO ~SetGlobal("EU#LenaWeaponUpgradeTalk","LOCALS",1)~ 
    EXTERN ~BOTSMITH~ EU#LenaTalk.Cespenar#Weapon

//////////////////////////////
//:.  TOB Keldorn Issues  .://
//////////////////////////////

//: TOB, keldorn raised by fate of spirit, case 1
ADD_TRANS_TRIGGER ~KELDO25A~ 1 ~False()~ DO 0
EXTEND_TOP ~KELDO25A~ 1
    IF ~InParty("EU#LENA") 
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ 
        THEN REPLY #65390
        EXTERN ~EU#LENAJ~ EU#LenaTalk.KeldornTOBJoin#1
    IF ~OR(2) 
        !InParty("EU#LENA") 
        StateCheck("EU#LENA",CD_STATE_NOTVALID)~ 
        THEN REPLY #65390
        EXTERN ~KELDO25A~ 5
END

//: TOB, keldorn raised by fate of spirit, case 2
ADD_TRANS_TRIGGER ~KELDO25A~ 2 ~False()~ DO 0
EXTEND_TOP ~KELDO25A~ 2
    IF ~InParty("EU#LENA") 
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ 
        THEN REPLY #65396
        EXTERN ~EU#LENAJ~ EU#LenaTalk.KeldornTOBJoin#1
    IF ~OR(2) 
        !InParty("EU#LENA") 
        StateCheck("EU#LENA",CD_STATE_NOTVALID)~ 
        THEN REPLY #65396
        EXTERN ~KELDO25A~ 5
END

//: TOB, keldorn raised by fate of spirit, retalk after spawned, case 3
ADD_TRANS_TRIGGER ~KELDO25A~ 7 ~False()~ DO 0
EXTEND_TOP ~KELDO25A~ 7
    IF ~InParty("EU#LENA") 
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ 
        THEN REPLY #65412
        EXTERN ~EU#LENAJ~ EU#LenaTalk.KeldornTOBJoin#2
    IF ~OR(2) 
        !InParty("EU#LENA") 
        StateCheck("EU#LENA",CD_STATE_NOTVALID)~ 
        THEN REPLY #65412
        EXTERN ~KELDO25A~ 5
END

//-------- Lena Dialogue --------------------------------------------------------------------------------------------------------------------------------------

APPEND ~EU#LENAJ~

    IF ~~ BEGIN EU#LenaTalk.KeldornTOBJoin#2
        SAY @4500
        IF ~~ THEN REPLY @4505 GOTO EU#LenaTalk.KeldornTOBJoin#2.1  // LENA
        IF ~~ THEN REPLY @4506 GOTO EU#LenaTalk.KeldornTOBJoin#1.2  // KELDORN
    END

    IF ~~ BEGIN EU#LenaTalk.KeldornTOBJoin#2.1
        SAY @4501
        IF ~~ EXTERN ~KELDO25A~ 8
    END

    IF ~~ BEGIN EU#LenaTalk.KeldornTOBJoin#1
        SAY @4500
        IF ~~ THEN REPLY @4505 GOTO EU#LenaTalk.KeldornTOBJoin#1.1  // LENA
        IF ~~ THEN REPLY @4506 GOTO EU#LenaTalk.KeldornTOBJoin#1.2  // KELDORN
    END

    IF ~~ BEGIN EU#LenaTalk.KeldornTOBJoin#1.1
        SAY @4501
        IF ~~ EXTERN ~KELDO25A~ 6
    END

    IF ~~ BEGIN EU#LenaTalk.KeldornTOBJoin#1.2
        SAY @4503
        IF ~~ DO ~SetGlobal("EU#LenaOnLeave","LOCALS",1)~ EXTERN ~KELDO25A~ 5
    END

END

//////////////////////////////////
//:.  Fifth related Dialogue  .://
//////////////////////////////////

EXTEND_TOP ~EU#LENAJ~ 16 #19 // EU#LenaTalk.Flirt, weidu cannot find "flirt" node by itself
    //: call fifth to pack
    IF ~Global("EU#LenaSpawnedFifth","LOCALS",1)
        OR(2)
            !See("EU#LEFFT")
            !NotStateCheck("EU#LEFFT",CD_STATE_NOTVALID)~ THEN REPLY @4700 GOTO EU#LenaTalk.CallFifth#2
    IF ~Global("EU#LenaSpawnedFifth","LOCALS",1)
        See("EU#LEFFT")
        !StateCheck("EU#LEFFT",CD_STATE_NOTVALID)~ THEN REPLY @4700 GOTO EU#LenaTalk.CallFifth#1
END

APPEND ~EU#LENAJ~

    IF ~~ BEGIN EU#LenaTalk.CallFifth#1
        SAY @4701
        IF ~~ DO ~SetGlobal("EU#LenaCalledFifthTalk","LOCALS",1)~ EXTERN ~EU#LEFFT~ EU#FifthTalk.CallFifth
    END

    IF ~~ BEGIN EU#LenaTalk.CallFifth#2
        SAY @4706
        IF ~~ DO ~SetGlobal("EU#LenaCalledFifth","LOCALS",1)~ EXIT
    END

END

//: lena calls fifth
CHAIN IF ~Global("EU#LenaCalledFifthTalk","LOCALS",1)~ THEN ~EU#LEFFT~ EU#FifthTalk.CallFifth
    @4702
    DO ~SetGlobal("EU#LenaCalledFifth","LOCALS",1)
        SetGlobal("EU#LenaCalledFifthTalk","LOCALS",0)~
EXIT

//: first time introduction player vs fifth
CHAIN IF ~Global("EU#LenaSpawnedFifthFirstTime","LOCALS",1)~ THEN ~EU#LENAJ~ EU#LenaTalk.FifthIntroduction
    @4707
    == ~EU#LENAJ~   @4708
    == ~EU#LEFFT~   @4709
    == ~EU#LENAJ~   @4710
    == ~EU#LEFFT~   @4711
    == ~EU#LENAJ~   @4712
    == ~EU#LEFFT~   @4713
    == ~EU#LENAJ~   @4714
END
IF ~~ THEN REPLY @4715 EXTERN ~EU#LENAJ~ EU#LenaTalk.FifthIntroduction.1
IF ~~ THEN REPLY @4718 EXTERN ~EU#LENAJ~ EU#LenaTalk.FifthIntroduction.2
IF ~~ THEN REPLY @4731 EXTERN ~EU#LENAJ~ EU#LenaTalk.FifthIntroduction.3

//: first time introduction player vs fifth, .1
CHAIN IF ~Global("EU#LenaSpawnedFifthFirstTime","LOCALS",1)~ THEN ~EU#LENAJ~ EU#LenaTalk.FifthIntroduction.1
    @4716
END
IF ~~ EXTERN ~EU#LENAJ~ EU#LenaTalk.FifthIntroduction#2

//: first time introduction player vs fifth, .2
CHAIN IF ~Global("EU#LenaSpawnedFifthFirstTime","LOCALS",1)~ THEN ~EU#LENAJ~ EU#LenaTalk.FifthIntroduction.2
    @4719
END
IF ~~ EXTERN ~EU#LENAJ~ EU#LenaTalk.FifthIntroduction#1

//: first time introduction player vs fifth, .3
CHAIN IF ~Global("EU#LenaSpawnedFifthFirstTime","LOCALS",1)~ THEN ~EU#LENAJ~ EU#LenaTalk.FifthIntroduction.3
    @4732
END
IF ~~ EXTERN ~EU#LENAJ~ EU#LenaTalk.FifthIntroduction#2

//: first time introduction player vs fifth, #2
CHAIN IF ~Global("EU#LenaSpawnedFifthFirstTime","LOCALS",1)~ THEN ~EU#LENAJ~ EU#LenaTalk.FifthIntroduction#2
    @4717
END
IF ~~ EXTERN ~EU#LENAJ~ EU#LenaTalk.FifthIntroduction#1

//: first time introduction player vs fifth, #1
CHAIN IF ~Global("EU#LenaSpawnedFifthFirstTime","LOCALS",1)~ THEN ~EU#LENAJ~ EU#LenaTalk.FifthIntroduction#1
    @4720
    == ~EU#LEFFT~   @4721
    == ~EU#LENAJ~   @4722
END
IF ~~ THEN REPLY @4723 EXTERN ~EU#LENAJ~ EU#LenaTalk.FifthIntroduction#1.1
IF ~~ THEN REPLY @4725 EXTERN ~EU#LENAJ~ EU#LenaTalk.FifthIntroduction#1.2
IF ~~ THEN REPLY @4729 EXTERN ~EU#LENAJ~ EU#LenaTalk.FifthIntroduction#1.3

//: first time introduction player vs fifth, #1.1
CHAIN IF ~Global("EU#LenaSpawnedFifthFirstTime","LOCALS",1)~ THEN ~EU#LENAJ~ EU#LenaTalk.FifthIntroduction#1.1
    @4724
END
IF ~~ EXTERN ~EU#LENAJ~ EU#LenaTalk.FifthIntroduction#3

//: first time introduction player vs fifth, #1.3
CHAIN IF ~Global("EU#LenaSpawnedFifthFirstTime","LOCALS",1)~ THEN ~EU#LENAJ~ EU#LenaTalk.FifthIntroduction#1.3
    @4730
END
IF ~~ EXTERN ~EU#LENAJ~ EU#LenaTalk.FifthIntroduction#3

//: first time introduction player vs fifth, #1.2
CHAIN IF ~Global("EU#LenaSpawnedFifthFirstTime","LOCALS",1)~ THEN ~EU#LENAJ~ EU#LenaTalk.FifthIntroduction#1.2
    @4726
END
IF ~~ EXTERN ~EU#LENAJ~ EU#LenaTalk.FifthIntroduction#3

//: first time introduction player vs fifth, #3
CHAIN IF ~Global("EU#LenaSpawnedFifthFirstTime","LOCALS",1)~ THEN ~EU#LENAJ~ EU#LenaTalk.FifthIntroduction#3
    @4727
    == ~EU#LEFFT~   @4728
END
IF ~~ DO ~SetGlobal("EU#LenaSpawnedFifthFirstTime","LOCALS",2)~ EXIT

//: fifth & lena enchant banter
CHAIN IF ~Global("EU#LenaFifthEnchantBanter","LOCALS",1)~ THEN ~EU#LENAJ~ EU#LenaTalk.FifthEnchant
    @4733
    DO ~SetGlobal("EU#LenaFifthEnchantBanter","LOCALS",2)~
    == ~EU#LEFFT~   @4734
    == ~EU#LENAJ~   @4735
    == ~EU#LEFFT~   @4736
    == ~EU#LENAJ~   @4737
    == ~EU#LEFFT~   @4738
EXIT

//: cespenar & fifth banter
CHAIN IF ~Global("EU#LenaFifthCespenarBanter","LOCALS",2)~ THEN ~EU#LEFFT~ EU#FifthTalk.FifthRecipe
    @4739
    DO ~SetGlobal("EU#LenaFifthCespenarBanter","LOCALS",3)~ 
    == ~BOTSMITH~   @4740
    == ~EU#LEFFT~   @4741
    == ~BOTSMITH~   @4742
    == ~EU#LEFFT~   @4743
    == ~BOTSMITH~   @4744
    == ~EU#LEFFT~   @4745
    == ~BOTSMITH~   @4746
    == ~EU#LEFFT~   @4747
EXIT
        
//: fifth & player & lena
CHAIN IF ~Global("EU#LenaFifthPlayerBanter","LOCALS",1)~ THEN ~EU#LEFFT~ EU#FifthTalk.ThreatenPlayer
    @4748
END
IF ~~ THEN REPLY @4749 EXTERN ~EU#LEFFT~ EU#FifthTalk.ThreatenPlayer.1
IF ~~ THEN REPLY @4751 EXTERN ~EU#LEFFT~ EU#FifthTalk.ThreatenPlayer.2
IF ~~ THEN REPLY @4760 EXTERN ~EU#LEFFT~ EU#FifthTalk.ThreatenPlayer.3

//: fifth & player & lena, .1
CHAIN IF ~Global("EU#LenaFifthPlayerBanter","LOCALS",1)~ THEN ~EU#LEFFT~ EU#FifthTalk.ThreatenPlayer.1
    @4750
    DO ~SetGlobal("EU#LenaFifthPlayerBanter","LOCALS",2)~ 
EXIT

//: fifth & player & lena, .2
CHAIN IF ~Global("EU#LenaFifthPlayerBanter","LOCALS",1)~ THEN ~EU#LEFFT~ EU#FifthTalk.ThreatenPlayer.2
    @4752
    == ~EU#LENAJ~   @4753
END
IF ~~ THEN REPLY @4754 EXTERN ~EU#LENAJ~ EU#FifthTalk.ThreatenPlayer.2.1
IF ~~ THEN REPLY @4757 EXTERN ~EU#LENAJ~ EU#FifthTalk.ThreatenPlayer.2.2

//: fifth & player & lena, .2.1
CHAIN IF ~Global("EU#LenaFifthPlayerBanter","LOCALS",1)~ THEN ~EU#LENAJ~ EU#FifthTalk.ThreatenPlayer.2.1
    @4755
    DO ~SetGlobal("EU#LenaFifthPlayerBanter","LOCALS",2)~
    == ~EU#LEFFT~   @4756
EXIT

//: fifth & player & lena, .2.2
CHAIN IF ~Global("EU#LenaFifthPlayerBanter","LOCALS",1)~ THEN ~EU#LENAJ~ EU#FifthTalk.ThreatenPlayer.2.2
    @4758
    DO ~SetGlobal("EU#LenaFifthPlayerBanter","LOCALS",2)~
    == ~EU#LEFFT~   @4759
EXIT

//: fifth & player & lena, .3
CHAIN IF ~Global("EU#LenaFifthPlayerBanter","LOCALS",1)~ THEN ~EU#LEFFT~ EU#FifthTalk.ThreatenPlayer.3
    @4761
    DO ~SetGlobal("EU#LenaFifthPlayerBanter","LOCALS",2)~ 
    == ~EU#LENAJ~   @4762
    == ~EU#LEFFT~   @4763
EXIT

////////////////////////////////////
//:.  Valen's Dialogue (Wrath)  .://
////////////////////////////////////

//: interject into MasterWrath
INTERJECT ~HGWRA01~ 18 EU#LenaTalk.MasterWraith
    == ~HGWRA01~ IF ~Global("EU#LenaRomanceActive","GLOBAL",2)
        InParty("EU#Lena")
        !StateCheck("EU#Lena",CD_STATE_NOTVALID)~ THEN @6006
        DO ~SetGlobal("EU#LenaTOBLovedOne","LOCALS",1)~
    == ~EU#LENAJ~ @6007
END ~HGWRA01~ 24

//: add the cutscene dialogue
EXTEND_BOTTOM ~HGWRA01~ 24
    IF ~Global("EU#LenaTOBLovedOne","LOCALS",1)~ DO ~ClearAllActions()
        StartCutSceneMode()
        StartCutScene("EU#LEVLN")~ EXIT
END

/////////////////////////////
//:.  ToB Interjections  .://
/////////////////////////////

//: Lena suspicious of Garlena
INTERJECT_COPY_TRANS ~GORGAR1~ 3 EU#LenaTalk.InterjectGarlena
    == ~EU#LENAJ~ IF ~InParty("EU#Lena")
        !StateCheck("EU#Lena",CD_STATE_NOTVALID)~ THEN @5501
    == ~GORGAR1~    @5502
    == ~EU#LENAJ~   @5503
    == ~GORGAR1~    @5504
    == ~GORODR1~    @5505
END

//: first time in Watcher's keep
CHAIN IF ~Global("EU#LenaInWatchersKeep","LOCALS",1)~ THEN ~EU#LENAJ~ EU#LenaTalk.InterjectWatchersKeep
    @5506
    DO ~SetGlobal("EU#LenaInWatchersKeep","LOCALS",2)~
END
IF ~~ THEN REPLY @5507 EXTERN ~EU#LENAJ~ EU#LenaTalk.InterjectWatchersKeep.1
IF ~~ THEN REPLY @5508 EXTERN ~EU#LENAJ~ EU#LenaTalk.InterjectWatchersKeep.2
IF ~~ THEN REPLY @5509 EXTERN ~EU#LENAJ~ EU#LenaTalk.InterjectWatchersKeep.3

APPEND_EARLY ~EU#LENAJ~

    IF ~~ BEGIN EU#LenaTalk.InterjectWatchersKeep.1
        SAY @5510
        IF ~~ THEN REPLY @5515 GOTO EU#LenaTalk.InterjectWatchersKeep.4
        IF ~~ THEN REPLY @5516 GOTO EU#LenaTalk.InterjectWatchersKeep.4
        IF ~~ THEN REPLY @5517 GOTO EU#LenaTalk.InterjectWatchersKeep.5
    END

    IF ~~ BEGIN EU#LenaTalk.InterjectWatchersKeep.2
        SAY @5511
        = @5512
        IF ~~ THEN REPLY @5515 GOTO EU#LenaTalk.InterjectWatchersKeep.4
        IF ~~ THEN REPLY @5516 GOTO EU#LenaTalk.InterjectWatchersKeep.4
        IF ~~ THEN REPLY @5517 GOTO EU#LenaTalk.InterjectWatchersKeep.5
    END

    IF ~~ BEGIN EU#LenaTalk.InterjectWatchersKeep.3
        SAY @5513
        = @5514
        IF ~~ THEN REPLY @5515 GOTO EU#LenaTalk.InterjectWatchersKeep.4
        IF ~~ THEN REPLY @5516 GOTO EU#LenaTalk.InterjectWatchersKeep.4
        IF ~~ THEN REPLY @5517 GOTO EU#LenaTalk.InterjectWatchersKeep.5
    END

    IF ~~ BEGIN EU#LenaTalk.InterjectWatchersKeep.5
        SAY @5519
        IF ~~ GOTO EU#LenaTalk.InterjectWatchersKeep.4
    END

    IF ~~ BEGIN EU#LenaTalk.InterjectWatchersKeep.4
        SAY @5518
        IF ~~ EXIT
    END
END

//: chromatic demon, agree and decline answers
INTERJECT_COPY_TRANS ~GORCHR~ 4 EU#LenaTalk.InterjectChromaticDemon.1
    == ~EU#LENAJ~ IF ~InParty("EU#Lena")
        !StateCheck("EU#Lena",CD_STATE_NOTVALID)~ THEN @5521
END
INTERJECT_COPY_TRANS2 ~GORCHR~ 9 EU#LenaTalk.InterjectChromaticDemon.2
    == ~EU#LENAJ~ IF ~InParty("EU#Lena")
        !StateCheck("EU#Lena",CD_STATE_NOTVALID)~ THEN @5520
END

//: yakman
INTERJECT ~GORMAD1~ 8 EU#LenaTalk.InterjectYakman.1
    == ~EU#LENAJ~ IF ~InParty("EU#Lena")
        !StateCheck("EU#Lena",CD_STATE_NOTVALID)~ THEN @5522
EXTERN ~GORMAD1~ 13

INTERJECT ~GORMAD1~ 20 EU#LenaTalk.InterjectYakman.2
    == ~EU#LENAJ~ IF ~InParty("EU#Lena")
        !StateCheck("EU#Lena",CD_STATE_NOTVALID)~ THEN @5523
    == ~GORMAD1~    @5524
END
IF ~~ THEN REPLY #63393 EXTERN ~GORMAD1~ 12
IF ~~ THEN REPLY #63394 EXTERN ~GORMAD1~ 14
IF ~~ THEN REPLY #63395 EXTERN ~GORMAD1~ 16
IF ~~ THEN REPLY #63396 EXTERN ~GORMAD1~ 19

//: succubus
INTERJECT ~GORSUC01~ 3 EU#LenaTalk.InterjectWKSuccubus
    == ~EU#LENAJ~ IF ~InParty("EU#Lena")
        !StateCheck("EU#Lena",CD_STATE_NOTVALID)~ THEN @5525
    == ~GORSUC01~   @5526
    == ~GORSUC01~   @5527
END
IF ~~ DO ~SetGlobal("SuccubusLeave","GLOBAL",1)~ EXIT

//: karashur devil, all interjections
APPEND_EARLY ~GORBAT1~

    IF WEIGHT #-1 ~InParty("EU#Lena")
        !StateCheck("EU#Lena",CD_STATE_NOTVALID)
        Global("BatEnemy","GLOBAL",0)
        Global("zGorBat1Job","GLOBAL",0)~ BEGIN EU#KarashurTalk.LenaFirstMeeting
        SAY @5528
        IF ~~ EXTERN ~EU#LENAJ~ EU#LenaTalk.KarashurFirstMeeting
    END

    IF ~~ BEGIN EU#KarashurTalk.LenaFirstMeeting.2
        SAY @5530
        IF ~~ THEN REPLY #63170 EXTERN ~GORBAT1~ 3
        IF ~~ THEN REPLY #63172 EXTERN ~GORBAT1~ 3
        IF ~~ THEN REPLY #63173 EXTERN ~GORBAT1~ 4
        IF ~~ THEN REPLY #63194 EXTERN ~GORBAT1~ 14
    END

END

APPEND_EARLY ~EU#LENAJ~
    
    IF ~~ BEGIN EU#LenaTalk.KarashurFirstMeeting
        SAY @5529
        IF ~~ EXTERN ~GORBAT1~ EU#KarashurTalk.LenaFirstMeeting.2
    END

END

INTERJECT_COPY_TRANS2 ~GORBAT1~ 3 EU#LenaTalk.InterjectKarashur.1
    == ~EU#LENAJ~ IF ~InParty("EU#Lena")
        !StateCheck("EU#Lena",CD_STATE_NOTVALID)~ THEN @5531
END

INTERJECT_COPY_TRANS2 ~GORBAT1~ 10 EU#LenaTalk.InterjectKarashur.2
    == ~EU#LENAJ~ IF ~InParty("EU#Lena")
        !StateCheck("EU#Lena",CD_STATE_NOTVALID)~ THEN @5531
END

INTERJECT_COPY_TRANS2 ~GORBAT1~ 14 EU#LenaTalk.InterjectKarashur.3
    == ~EU#LENAJ~ IF ~InParty("EU#Lena")
        !StateCheck("EU#Lena",CD_STATE_NOTVALID)~ THEN @5532
END

INTERJECT_COPY_TRANS2 ~GORBAT1~ 10 EU#LenaTalk.InterjectKarashur.4
    == ~EU#LENAJ~ IF ~InParty("EU#Lena")
        !StateCheck("EU#Lena",CD_STATE_NOTVALID)~ THEN @5532
END

//: tahazzar demon, all interjections
APPEND_EARLY ~GORTAN1~

    IF WEIGHT #-1 ~Global("zGorBat1Job","GLOBAL",1)~ BEGIN EU#TahazzarTalk.LenaWithDevils
        SAY @5537
        IF ~~ DO ~SetGlobal("TanEnemy","GLOBAL",1)~ EXTERN ~EU#LENAJ~ EU#LenaTalk.TahazzarHostile
    END
 
    IF WEIGHT #-1 ~InParty("EU#Lena")
        !StateCheck("EU#Lena",CD_STATE_NOTVALID)
        Global("TanEnemy","GLOBAL",0)
        Global("zGorTan1Job","GLOBAL",0)~ BEGIN EU#TahazzarTalk.LenaFirstMeeting
        SAY @5533
        IF ~~ EXTERN ~EU#LENAJ~ EU#LenaTalk.TahazzarFirstMeeting
    END

    IF ~~ BEGIN EU#TahazzarTalk.LenaFirstMeeting.2
        SAY @5535
        IF ~~ THEN REPLY #63112 EXTERN ~GORTAN1~ 2
        IF ~~ THEN REPLY #63113 EXTERN ~GORTAN1~ 2
        IF ~~ THEN REPLY #63116 EXTERN ~GORTAN1~ 3
        IF ~~ THEN REPLY #63149 EXTERN ~GORTAN1~ 13
    END

END

APPEND_EARLY ~EU#LENAJ~

    IF ~~ BEGIN EU#LenaTalk.TahazzarFirstMeeting
        SAY @5534
        IF ~~ EXTERN ~GORTAN1~ EU#TahazzarTalk.LenaFirstMeeting.2
    END

    IF ~~ BEGIN EU#LenaTalk.TahazzarHostile
        SAY @5538
        IF ~~ EXIT
    END

END

INTERJECT_COPY_TRANS2 ~GORTAN1~ 2 EU#LenaTalk.InterjectTahazzar.1
    == ~EU#LENAJ~ IF ~InParty("EU#Lena")
        !StateCheck("EU#Lena",CD_STATE_NOTVALID)~ THEN @5536
END

INTERJECT_COPY_TRANS2 ~GORTAN1~ 13 EU#LenaTalk.InterjectTahazzar.2
    == ~EU#LENAJ~ IF ~InParty("EU#Lena")
        !StateCheck("EU#Lena",CD_STATE_NOTVALID)~ THEN @5536
END

INTERJECT_COPY_TRANS2 ~GORTAN1~ 5 EU#LenaTalk.InterjectTahazzar.3
    == ~EU#LENAJ~ IF ~InParty("EU#Lena")
        !StateCheck("EU#Lena",CD_STATE_NOTVALID)~ THEN @5536
END

INTERJECT_COPY_TRANS2 ~GORTAN1~ 9 EU#LenaTalk.InterjectTahazzar.4
    == ~EU#LENAJ~ IF ~InParty("EU#Lena")
        !StateCheck("EU#Lena",CD_STATE_NOTVALID)~ THEN @5536
END

//: Aesgareth, cambion in WK

INTERJECT_COPY_TRANS2 ~HAERD25J~ 11 EU#LenaTalk.InterjectHaerDalisAsgarethIntro.1
    == ~EU#LENAJ~ IF ~InParty("EU#Lena")
        !StateCheck("EU#Lena",CD_STATE_NOTVALID)~ THEN @5539
END
/* : fails if some mods are not installed, skipping
INTERJECT_COPY_TRANS2 ~HAERDAJ~ 155 EU#LenaTalk.InterjectHaerDalisAsgarethIntro.2
    == ~EU#LENAJ~ IF ~InParty("EU#Lena")
        !StateCheck("EU#Lena",CD_STATE_NOTVALID)~ THEN @5539
END
*/
ADD_TRANS_ACTION ~GORCAMB~ BEGIN 1 END BEGIN 0 1 2 END ~SetGlobal("Eu#LenaTalkAesgareth","AR3015",1)~
APPEND_EARLY ~GORCAMB~ 

    IF WEIGHT #-1 ~!Global("Eu#LenaTalkAesgareth","AR3015",1)
        InParty("EU#Lena")
        !StateCheck("EU#Lena",CD_STATE_NOTVALID)
        OR(2)
            !InParty("HaerDalis")
            StateCheck("HaerDalis",CD_STATE_NOTVALID)~ BEGIN EU#AesgarethTalk.IntroLena
        SAY @5540
        IF ~~ DO ~SetGlobal("Eu#LenaTalkAesgareth","AR3015",1)~ EXTERN ~EU#LENAJ~ EU#LenaTalk.Aesgareth
    END

END

APPEND_EARLY ~EU#LENAJ~

    IF ~~ BEGIN EU#LenaTalk.Aesgareth
        SAY @5541
        IF ~~ EXTERN ~GORCAMB~ 1
    END

END

//: Carston's apprentice
ADD_TRANS_TRIGGER ~GORAPR~ 8 ~OR(2) 
    !InParty("EU#LENA")
    StateCheck("EU#LENA",CD_STATE_NOTVALID)~ DO 2
EXTEND_BOTTOM ~GORAPR~ 8
    IF ~InParty("EU#LENA") 
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ 
        THEN REPLY #62915
        EXTERN ~EU#LENAJ~ EU#LenaTalk.CarstonApprentice
END

APPEND_EARLY ~EU#LENAJ~

    IF ~~ BEGIN EU#LenaTalk.CarstonApprentice
        SAY @5542
        IF ~~ THEN REPLY @5543 GOTO EU#LenaTalk.CarstonApprentice.1
        IF ~!Global("EU#LenaRomanceActive","GLOBAL",2)~ THEN REPLY @5544 GOTO EU#LenaTalk.CarstonApprentice.1
        IF ~Global("EU#LenaRomanceActive","GLOBAL",2)~ THEN REPLY @5545 GOTO EU#LenaTalk.CarstonApprentice.2
    END

    IF ~~ BEGIN EU#LenaTalk.CarstonApprentice.1
        SAY @5546
        IF ~~ EXTERN ~GORAPR~ 9
    END

    IF ~~ BEGIN EU#LenaTalk.CarstonApprentice.2
        SAY @5547
        IF ~~ EXTERN ~GORAPR~ 9
    END
END

//: Imprisoned one
EXTEND_TOP ~GORDEMO~ 1 #1
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ 
    EXTERN ~EU#LENAJ~ EU#LenaTalk.ImprisonedOne.1
END

EXTEND_BOTTOM ~KELDO25J~ 6 #1
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ 
    EXTERN ~EU#LENAJ~ EU#LenaTalk.ImprisonedOne.1
END

EXTEND_BOTTOM ~VICON25J~ 26 #1
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ 
    EXTERN ~EU#LENAJ~ EU#LenaTalk.ImprisonedOne.1
END

EXTEND_BOTTOM ~ANOME25J~ 25 #1
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ 
    EXTERN ~EU#LENAJ~ EU#LenaTalk.ImprisonedOne.1
END

EXTEND_BOTTOM ~AERIE25J~ 25 #1
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ 
    EXTERN ~EU#LENAJ~ EU#LenaTalk.ImprisonedOne.1
END

/* : these states does not exist unless some mods are installed
EXTEND_BOTTOM ~KELDORJ~ 253 #1
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ 
    EXTERN ~EU#LENAJ~ EU#LenaTalk.ImprisonedOne.1
END

EXTEND_BOTTOM ~VICONIJ~ 183 #1
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ 
    EXTERN ~EU#LENAJ~ EU#LenaTalk.ImprisonedOne.1
END

EXTEND_BOTTOM ~ANOMENJ~ 311 #1
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ 
    EXTERN ~EU#LENAJ~ EU#LenaTalk.ImprisonedOne.1
END

EXTEND_BOTTOM ~AERIEJ~ 219 #1
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ 
    EXTERN ~EU#LENAJ~ EU#LenaTalk.ImprisonedOne.1
END
*/

APPEND_EARLY ~EU#LENAJ~

    IF ~~ BEGIN EU#LenaTalk.ImprisonedOne.1
        SAY @5548
        IF ~~ EXTERN ~GORDEMO~ 2
    END

END

//: Odren mentioning Demogorgon free
INTERJECT_COPY_TRANS ~GORODR1~ 36 EU#LenaTalk.InterjectOdrenDemogorgonFreedom
    == ~EU#LENAJ~ IF ~InParty("EU#Lena")
        Global("EU#LenaKilledDemogorgon","LOCALS",1)
        !StateCheck("EU#Lena",CD_STATE_NOTVALID)~ THEN @5550
END

//: Volo
EXTEND_TOP ~SARVOLO~ 9 #1
    IF ~InParty("EU#LENA")~ THEN REPLY @5551 EXTERN ~SARVOLO~ EU#VoloTalk.AboutLena
END

CHAIN ~SARVOLO~ EU#VoloTalk.AboutLena
    @5552
    == ~EU#LENAJ~ IF ~!StateCheck("EU#Lena",CD_STATE_NOTVALID)~  @5553
END
IF ~~ EXTERN ~SARVOLO~ 9

//: Solar Finale

//: solar
EXTEND_TOP ~FINSOL01~ 27 #1 //EU#LenaTalk.SolarFinale.S
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN EXTERN ~EU#LENAJ~ EU#LenaTalk.SolarFinale
END

//: companions
EXTEND_TOP ~VALYG25J~ 2 #1
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN EXTERN ~EU#LENAJ~ EU#LenaTalk.SolarFinale
END

EXTEND_TOP ~ANOME25J~ 10 #1
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN EXTERN ~EU#LENAJ~ EU#LenaTalk.SolarFinale
END

EXTEND_TOP ~VICON25J~ 7 #1
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN EXTERN ~EU#LENAJ~ EU#LenaTalk.SolarFinale
END

EXTEND_TOP ~AERIE25J~ 8 #1
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN EXTERN ~EU#LENAJ~ EU#LenaTalk.SolarFinale
END

EXTEND_TOP ~JAHEI25J~ 8 #1
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN EXTERN ~EU#LENAJ~ EU#LenaTalk.SolarFinale
END

EXTEND_TOP ~IMOEN25J~ 16 #1
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN EXTERN ~EU#LENAJ~ EU#LenaTalk.SolarFinale
END

EXTEND_TOP ~SAREV25J~ 3 #1
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN EXTERN ~EU#LENAJ~ EU#LenaTalk.SolarFinale
END

EXTEND_TOP ~SAREV25J~ 2 #1
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN EXTERN ~EU#LENAJ~ EU#LenaTalk.SolarFinale
END

EXTEND_TOP ~MINSC25J~ 1 #1
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN EXTERN ~EU#LENAJ~ EU#LenaTalk.SolarFinale
END

EXTEND_TOP ~NALIA25J~ 2 #1
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN EXTERN ~EU#LENAJ~ EU#LenaTalk.SolarFinale
END

EXTEND_TOP ~HAERD25J~ 2 #1
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN EXTERN ~EU#LENAJ~ EU#LenaTalk.SolarFinale
END

EXTEND_TOP ~JAN25J~ 11 #1
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN EXTERN ~EU#LENAJ~ EU#LenaTalk.SolarFinale
END

EXTEND_TOP ~CERND25J~ 1 #1
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN EXTERN ~EU#LENAJ~ EU#LenaTalk.SolarFinale
END

EXTEND_TOP ~MAZZY25J~ 1 #1
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN EXTERN ~EU#LENAJ~ EU#LenaTalk.SolarFinale
END

EXTEND_TOP ~EDWIN25J~ 0 #1
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN EXTERN ~EU#LENAJ~ EU#LenaTalk.SolarFinale
END

EXTEND_TOP ~KORGA25J~ 3 #1
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN EXTERN ~EU#LENAJ~ EU#LenaTalk.SolarFinale
END

EXTEND_TOP ~KELDO25J~ 1 #1 //: Lena and Keldorn in same party?
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN EXTERN ~EU#LENAJ~ EU#LenaTalk.SolarFinale
END

//: after choice
EXTEND_TOP ~FINSOL01~ 32 #1
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN EXTERN ~EU#LENAJ~ EU#LenaTalk.SolarFinale.Mortal
END
EXTEND_TOP ~SAREV25J~ 5 7 #1
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN EXTERN ~EU#LENAJ~ EU#LenaTalk.SolarFinale.Mortal
END
EXTEND_TOP ~IMOEN25J~ 20 #1
    IF ~InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN EXTERN ~EU#LENAJ~ EU#LenaTalk.SolarFinale.Mortal
END

//: neutral god ???
EXTEND_TOP ~FINSOL01~ 30 #1
    IF ~GlobalGT("PPEvilChoices","GLOBAL",1)
        GlobalLT("PPEvilChoices","GLOBAL",4)
        InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN EXTERN ~EU#LENAJ~ EU#LenaTalk.SolarFinale.Neutral
END
EXTEND_TOP ~SAREV25J~ 4 6 #1
    IF ~GlobalGT("PPEvilChoices","GLOBAL",1)
        GlobalLT("PPEvilChoices","GLOBAL",4)
        InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN EXTERN ~EU#LENAJ~ EU#LenaTalk.SolarFinale.Neutral
END
EXTEND_TOP ~IMOEN25J~ 18 #1
    IF ~GlobalGT("PPEvilChoices","GLOBAL",1)
        GlobalLT("PPEvilChoices","GLOBAL",4)
        InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN EXTERN ~EU#LENAJ~ EU#LenaTalk.SolarFinale.Neutral
END

//: good god
EXTEND_TOP ~FINSOL01~ 31 #1
    IF ~GlobalLT("PPEvilChoices","GLOBAL",2)
        InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN EXTERN ~EU#LENAJ~ EU#LenaTalk.SolarFinale.Good
END
EXTEND_TOP ~SAREV25J~ 4 6 #1
    IF ~GlobalLT("PPEvilChoices","GLOBAL",2)
        InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN EXTERN ~EU#LENAJ~ EU#LenaTalk.SolarFinale.Good
END
EXTEND_TOP ~IMOEN25J~ 18 #1
    IF ~GlobalLT("PPEvilChoices","GLOBAL",2)
        InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN EXTERN ~EU#LENAJ~ EU#LenaTalk.SolarFinale.Good
END

//: evil god
EXTEND_TOP ~FINSOL01~ 29 #1
    IF ~GlobalGT("PPEvilChoices","GLOBAL",3)
        GlobalLT("PPEvilChoices","GLOBAL",6)
        InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN EXTERN ~EU#LENAJ~ EU#LenaTalk.SolarFinale.Evil
END
EXTEND_TOP ~SAREV25J~ 4 6 #1
    IF ~GlobalGT("PPEvilChoices","GLOBAL",3)
        GlobalLT("PPEvilChoices","GLOBAL",6)
        InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN EXTERN ~EU#LENAJ~ EU#LenaTalk.SolarFinale.Evil
END
EXTEND_TOP ~IMOEN25J~ 18 #1
    IF ~GlobalGT("PPEvilChoices","GLOBAL",3)
        GlobalLT("PPEvilChoices","GLOBAL",6)
        InParty("EU#LENA")
        !StateCheck("EU#LENA",CD_STATE_NOTVALID)~ THEN EXTERN ~EU#LENAJ~ EU#LenaTalk.SolarFinale.Evil
END


APPEND_EARLY ~EU#LENAJ~

    IF ~~ BEGIN EU#LenaTalk.SolarFinale
        SAY @5559
        IF ~~ THEN REPLY @5560 GOTO EU#LenaTalk.SolarFinale.1
        IF ~~ THEN REPLY @5562 GOTO EU#LenaTalk.SolarFinale.2
        IF ~~ THEN REPLY @5564 GOTO EU#LenaTalk.SolarFinale.3
    END

    IF ~~ BEGIN EU#LenaTalk.SolarFinale.1
        SAY @5561
        IF ~~ GOTO EU#LenaTalk.SolarFinale.X
    END

    IF ~~ BEGIN EU#LenaTalk.SolarFinale.2
        SAY @5563
        IF ~~ GOTO EU#LenaTalk.SolarFinale.X
    END

    IF ~~ BEGIN EU#LenaTalk.SolarFinale.3
        SAY @5565
        IF ~~ GOTO EU#LenaTalk.SolarFinale.X
    END

    IF ~~ BEGIN EU#LenaTalk.SolarFinale.X
        SAY @5566
        IF ~~ EXTERN ~FINSOL01~ 28
    END

    IF ~~ BEGIN EU#LenaTalk.SolarFinale.Mortal
        SAY @5558
        IF ~~ EXTERN ~FINSOL01~ 33
    END

    IF ~~ BEGIN EU#LenaTalk.SolarFinale.Good
        SAY @5554
        IF ~~ EXTERN ~FINSOL01~ 33
    END

    IF ~~ BEGIN EU#LenaTalk.SolarFinale.Neutral
        SAY @5555
        IF ~~ EXTERN ~FINSOL01~ 33
    END

    IF ~~ BEGIN EU#LenaTalk.SolarFinale.Evil
        SAY @5557
        IF ~~ EXTERN ~FINSOL01~ 33
    END

END

// EXTERN ~FINSOL01~ 31 // good god
// EXTERN ~FINSOL01~ 30 // neutral god
// EXTERN ~FINSOL01~ 29 // evil god
// EXTERN ~FINSOL01~ 32 // mortal
// EXTERN ~FINSOL01~ 33 // end