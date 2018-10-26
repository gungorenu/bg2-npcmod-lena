APPEND ~EU#LENAJ~

/////////////////////////////////////////////////
//:.  Reputation Check and Dialogue Starter  .://
/////////////////////////////////////////////////

IF ~Global("EU#LenaReputationHigh","LOCALS",1)~ BEGIN EU#LenaTalk.Reputation
    SAY @141
    IF ~~ DO ~SetGlobal("EU#LenaReputationHigh","LOCALS",2)
        SetGlobal("EU#LenaOnLeave","LOCALS",1)~ EXIT
END

///////////////////////////////////////////
//:.  Party got Demon Heart with Lena  .://
///////////////////////////////////////////

IF ~Global("EU#LenaGotDemonHeart","AR0414",1)
    AreaCheck("AR0414")~ BEGIN EU#LenaTalk.DemonHeart
    SAY @201
    = @202
    = @203
    IF ~~ DO ~SetGlobal("EU#LenaGotDemonHeart","AR0414",2)~ EXIT
END

////////////////////////////////////////////
//:.  Lena in Sphere, convince to stay  .://
////////////////////////////////////////////

//: with demon heart
IF ~AreaCheck("AR0411")
    Global("EU#LenaStay","LOCALS",0)
    PartyHasItem("MISC6M")
    Global("EU#LenaInSphere","AR0411",2)~ BEGIN EU#LenaTalk.Stay
    SAY @401
    IF ~~ THEN REPLY @402 GOTO EU#LenaTalk.Stay.1
    IF ~~ THEN REPLY @404 GOTO EU#LenaTalk.Stay#1
    IF ~~ THEN REPLY @412 GOTO EU#LenaTalk.Stay#1
    IF ~~ THEN REPLY @413 GOTO EU#LenaTalk.Stay#4
    IF ~~ THEN REPLY @415 GOTO EU#LenaTalk.Stay.5
END

//: without demon heart
IF ~AreaCheck("AR0411")
    Global("EU#LenaStay","LOCALS",0)
    !PartyHasItem("MISC6M")
    Global("EU#LenaInSphere","AR0411",2)~ BEGIN EU#LenaTalk.Stay
    SAY @417
    IF ~~ THEN REPLY @402 GOTO EU#LenaTalk.Stay.1
    IF ~~ THEN REPLY @404 GOTO EU#LenaTalk.Stay#1
    IF ~~ THEN REPLY @412 GOTO EU#LenaTalk.Stay#1
    IF ~~ THEN REPLY @413 GOTO EU#LenaTalk.Stay#4
    IF ~~ THEN REPLY @415 GOTO EU#LenaTalk.Stay.5
END

IF ~~ BEGIN EU#LenaTalk.Stay.1
    SAY @403
    IF ~~ THEN REPLY @404 GOTO EU#LenaTalk.Stay#1
    IF ~~ THEN REPLY @412 GOTO EU#LenaTalk.Stay#1
    IF ~~ THEN REPLY @413 GOTO EU#LenaTalk.Stay#4
END

IF ~~ BEGIN EU#LenaTalk.Stay.2.1
    SAY @407
    IF ~~ DO ~SetGlobal("EU#LenaStay","LOCALS",1)
        SetGlobal("EU#LenaInSphere","AR0411",3)
        SetGlobal("EU#LenaInitializeRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.Stay.2.2
    SAY @409
    IF ~~ DO ~SetGlobal("EU#LenaStay","LOCALS",1)
        SetGlobal("EU#LenaInSphere","AR0411",3)
        SetGlobal("EU#LenaInitializeRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.Stay.2.3
    SAY @411
    IF ~~ DO ~SetGlobal("EU#LenaStay","LOCALS",1)
        SetGlobal("EU#LenaInSphere","AR0411",3)
        SetGlobal("EU#LenaInitializeRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.Stay.5
    SAY @416
    IF ~~ DO ~SetGlobal("EU#LenaOnLeave","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.Stay#1
    SAY @405
    IF ~~ THEN REPLY @406 GOTO EU#LenaTalk.Stay.2.1
    IF ~~ THEN REPLY @408 GOTO EU#LenaTalk.Stay.2.2
    IF ~~ THEN REPLY @410 GOTO EU#LenaTalk.Stay.2.3
END

IF ~~ BEGIN EU#LenaTalk.Stay#4
    SAY @414
    IF ~~ DO ~SetGlobal("EU#LenaOnLeave","LOCALS",1)~ EXIT
END

////////////////////////////////////
//:.  First time out of Sphere  .://
////////////////////////////////////

IF ~Global("EU#LenaFirstTimeOutSphere","AR0400",1)
    AreaCheck("AR0400")~ BEGIN EU#LenaTalk.FirstTimeOutofSphere
    SAY @5012
    IF ~~ DO ~SetGlobal("EU#LenaFirstTimeOutSphere","AR0400",2)~ EXIT
END

///////////////////////////////////////////////////////////////
//:.  Keldorn Conflict, Lena wake up and Keldorn in party  .://
///////////////////////////////////////////////////////////////

IF ~InParty("Keldorn")~ BEGIN EU#LenaTalk.KeldornInParty
    SAY @4502
    = @4503
    IF ~~ DO ~SetGlobal("EU#LenaOnLeave","LOCALS",1)~ EXIT
END

////////////////////////////////////////
//:.  Player initiated talk/flirts  .://
////////////////////////////////////////

IF ~IsGabber(Player1)
    Global("EU#LenaStay","LOCALS",1)
    CombatCounter(0)~ BEGIN EU#LenaTalk.Flirt
    SAY @601

    //: leave her alone
    IF ~Global("PlayerLooksLikeDrow","GLOBAL",1)~ THEN REPLY @771 EXIT
    IF ~!Global("PlayerLooksLikeDrow","GLOBAL",1)~ THEN REPLY @771 DO ~ChangeAnimation("EU#LENA")
        Polymorph(FIGHTER_FEMALE_HUMAN)~ EXIT

    //: descriptions
    IF ~!Global("PlayerLooksLikeDrow","GLOBAL",1)~ THEN REPLY @602 GOTO EU#LenaTalk.Flirt.1
    IF ~Global("PlayerLooksLikeDrow","GLOBAL",1)~ THEN REPLY @772 GOTO EU#LenaTalk.Flirt.2

    //: flirts
    IF ~Gender(Player1,MALE)
        OR(2)
            Global("EU#LenaRomanceActive","GLOBAL",1)
            Global("EU#LenaRomanceActive","GLOBAL",2)~ THEN REPLY @706 GOTO EU#LenaTalk.Flirt.6

    //: How are you?
    IF ~HPLT("EU#LENA",30)~ THEN REPLY @611 GOTO EU#LenaTalk.Flirt.3-1
    IF ~!HPLT("EU#LENA",30)
        TimeOfDay(DAY)
        AreaType(OUTDOOR)~ THEN REPLY @611 GOTO EU#LenaTalk.Flirt.3-2
    IF ~!HPLT("EU#LENA",30)
        OR(2)
            !TimeOfDay(DAY)
            !AreaType(OUTDOOR)
        Global("EU#LenaRomanceActive","GLOBAL",2)
        RandomNum(4,1)~ THEN REPLY @611 GOTO EU#LenaTalk.Flirt.3-7
    IF ~!HPLT("EU#LENA",30)
        OR(2)
            !TimeOfDay(DAY)
            !AreaType(OUTDOOR)
        Global("EU#LenaRomanceActive","GLOBAL",2)
        RandomNum(4,2)~ THEN REPLY @611 GOTO EU#LenaTalk.Flirt.3-8
    IF ~!HPLT("EU#LENA",30)
        OR(2)
            !TimeOfDay(DAY)
            !AreaType(OUTDOOR)
        Global("EU#LenaRomanceActive","GLOBAL",2)
        RandomNum(4,3)~ THEN REPLY @611 GOTO EU#LenaTalk.Flirt.3-9
    IF ~!HPLT("EU#LENA",30)
        OR(2)
            !TimeOfDay(DAY)
            !AreaType(OUTDOOR)
        Global("EU#LenaRomanceActive","GLOBAL",2)
        RandomNum(4,4)~ THEN REPLY @611 GOTO EU#LenaTalk.Flirt.3-10
    IF ~!HPLT("EU#LENA",30)
        OR(2)
            !TimeOfDay(DAY)
            !AreaType(OUTDOOR)
        !Global("EU#LenaRomanceActive","GLOBAL",2)
        RandomNum(4,1)~ THEN REPLY @611 GOTO EU#LenaTalk.Flirt.3-3
    IF ~!HPLT("EU#LENA",30)
        OR(2)
            !TimeOfDay(DAY)
            !AreaType(OUTDOOR)
        !Global("EU#LenaRomanceActive","GLOBAL",2)
        RandomNum(4,2)~ THEN REPLY @611 GOTO EU#LenaTalk.Flirt.3-4
    IF ~!HPLT("EU#LENA",30)
        OR(2)
            !TimeOfDay(DAY)
            !AreaType(OUTDOOR)
        !Global("EU#LenaRomanceActive","GLOBAL",2)
        RandomNum(4,3)~ THEN REPLY @611 GOTO EU#LenaTalk.Flirt.3-5
    IF ~!HPLT("EU#LENA",30)
        OR(2)
            !TimeOfDay(DAY)
            !AreaType(OUTDOOR)
        !Global("EU#LenaRomanceActive","GLOBAL",2)
        RandomNum(4,4)~ THEN REPLY @611 GOTO EU#LenaTalk.Flirt.3-6
 
    //: compliment her  
    IF ~Gender(Player1,MALE)
        Global("EU#LenaRomanceActive","GLOBAL",1)~ THEN REPLY @622 GOTO EU#LenaTalk.Flirt.4-1
    IF ~Gender(Player1,MALE)
        Global("EU#LenaRomanceActive","GLOBAL",2)~ THEN REPLY @622 GOTO EU#LenaTalk.Flirt.4-2

    //: string fixer
    IF ~~ THEN REPLY @54 GOTO EU#LenaTalk.StringFixer

    //: questions
    IF ~~ THEN REPLY @673 GOTO EU#LenaTalk.Flirt.5

    //: romance killers for bored/unwanted lovetalks etc...
    IF ~Gender(Player1,MALE)
        Global("EU#LenaRomanceActive","GLOBAL",2)~ THEN REPLY @767 GOTO EU#LenaTalk.Flirt.7
    IF ~Gender(Player1,MALE)
        Global("EU#LenaRomanceActive","GLOBAL",1)~ THEN REPLY @769 GOTO EU#LenaTalk.Flirt.8
END

IF ~~ BEGIN EU#LenaTalk.StringFixer
    SAY @55
    IF ~~ DO ~
SetName(@56) 
SetPlayerSound(Myself , @12 , MORALE) 
SetPlayerSound(Myself , @13 , HAPPY)
SetPlayerSound(Myself , @14 , UNHAPPY_ANNOYED)
SetPlayerSound(Myself , @15 , UNHAPPY_SERIOUS)
SetPlayerSound(Myself , @16 , UNHAPPY_BREAKING_POINT)
SetPlayerSound(Myself , @17 , LEADER)
SetPlayerSound(Myself , @18 , TIRED)
SetPlayerSound(Myself , @19 , BORED)
SetPlayerSound(Myself , @20 , BATTLE_CRY1)
SetPlayerSound(Myself , @21 , BATTLE_CRY2)
SetPlayerSound(Myself , @22 , BATTLE_CRY3)
SetPlayerSound(Myself , @23 , BATTLE_CRY4)
SetPlayerSound(Myself , @24 , BATTLE_CRY5)
SetPlayerSound(Myself , @25 , DAMAGE)
SetPlayerSound(Myself , @26 , DYING)
SetPlayerSound(Myself , @27 , HURT )
SetPlayerSound(Myself , @28 , AREA_FOREST)
SetPlayerSound(Myself , @29 , AREA_CITY )
SetPlayerSound(Myself , @30 , AREA_DUNGEON)
SetPlayerSound(Myself , @31 , AREA_DAY)
SetPlayerSound(Myself , @32 , AREA_NIGHT)
SetPlayerSound(Myself , @33 , SELECT_COMMON1)
SetPlayerSound(Myself , @34 , SELECT_COMMON2)
SetPlayerSound(Myself , @35 , SELECT_COMMON3)
SetPlayerSound(Myself , @36 , SELECT_COMMON4)
SetPlayerSound(Myself , @37 , SELECT_COMMON5)
SetPlayerSound(Myself , @38 , SELECT_COMMON6)
SetPlayerSound(Myself , @39 , SELECT_ACTION1)
SetPlayerSound(Myself , @40 , SELECT_ACTION2)
SetPlayerSound(Myself , @41 , SELECT_ACTION3)
SetPlayerSound(Myself , @42 , SELECT_ACTION4)
SetPlayerSound(Myself , @43 , SELECT_ACTION5)
SetPlayerSound(Myself , @44 , SELECT_ACTION6)
SetPlayerSound(Myself , @45 , SELECT_ACTION7)
SetPlayerSound(Myself , @47 , SELECT_RARE1)
SetPlayerSound(Myself , @48 , SELECT_RARE2)
SetPlayerSound(Myself , @49 , CRITICAL_HIT)
SetPlayerSound(Myself , @50 , CRITICAL_MISS)
SetPlayerSound(Myself , @51 , TARGET_IMMUNE)
SetPlayerSound(Myself , @52 , INVENTORY_FULL)
SetPlayerSound(Myself , @53 , SPELL_DISRUPTED)
Polymorph(FIGHTER_FEMALE_HUMAN)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.1
    SAY @603
    = @604
    = @605
    = @606
    = @607
    = @608
    = @609
    IF ~~ THEN REPLY @610 EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.2
    SAY @773
    = @774
    = @775
    = @776
    IF ~~ THEN REPLY @777 GOTO EU#LenaTalk.Flirt.2.1
    IF ~~ THEN REPLY @779 GOTO EU#LenaTalk.Flirt.2.2
END

IF ~~ BEGIN EU#LenaTalk.Flirt.2.1
    SAY @778
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.2.2
    SAY @780
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.3-1
    SAY @612
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.3-2
    SAY @613
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.3-3
    SAY @614
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.3-4
    SAY @615
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.3-5
    SAY @616
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.3-6
    SAY @617
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.3-7
    SAY @618
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.3-8
    SAY @619
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.3-9
    SAY @620
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.3-10
    SAY @621
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.3-11
    SAY @781
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.4-1
    SAY @623

    IF ~RandomNum(3,1)~ THEN REPLY @624 GOTO EU#LenaTalk.Flirt.4.1-1-1
    IF ~RandomNum(3,2)~ THEN REPLY @624 GOTO EU#LenaTalk.Flirt.4.1-1-2
    IF ~RandomNum(3,3)~ THEN REPLY @624 GOTO EU#LenaTalk.Flirt.4.1-1-3
    IF ~RandomNum(3,1)~ THEN REPLY @629 GOTO EU#LenaTalk.Flirt.4.2-1-1
    IF ~RandomNum(3,2)~ THEN REPLY @629 GOTO EU#LenaTalk.Flirt.4.2-1-2
    IF ~RandomNum(3,3)~ THEN REPLY @629 GOTO EU#LenaTalk.Flirt.4.2-1-3
    IF ~RandomNum(3,1)~ THEN REPLY @634 GOTO EU#LenaTalk.Flirt.4.3-1-1
    IF ~RandomNum(3,2)~ THEN REPLY @634 GOTO EU#LenaTalk.Flirt.4.3-1-2
    IF ~RandomNum(3,3)~ THEN REPLY @634 GOTO EU#LenaTalk.Flirt.4.3-1-3
    IF ~RandomNum(3,1)~ THEN REPLY @639 GOTO EU#LenaTalk.Flirt.4.4-1-1
    IF ~RandomNum(3,2)~ THEN REPLY @639 GOTO EU#LenaTalk.Flirt.4.4-1-2
    IF ~RandomNum(3,3)~ THEN REPLY @639 GOTO EU#LenaTalk.Flirt.4.4-1-3
    IF ~RandomNum(3,1)~ THEN REPLY @644 GOTO EU#LenaTalk.Flirt.4.5-1-1
    IF ~RandomNum(3,2)~ THEN REPLY @644 GOTO EU#LenaTalk.Flirt.4.5-1-2
    IF ~RandomNum(3,3)~ THEN REPLY @644 GOTO EU#LenaTalk.Flirt.4.5-1-3
    IF ~RandomNum(3,1)~ THEN REPLY @653 GOTO EU#LenaTalk.Flirt.4.6-1-1
    IF ~RandomNum(3,2)~ THEN REPLY @653 GOTO EU#LenaTalk.Flirt.4.6-1-2
    IF ~RandomNum(3,3)~ THEN REPLY @653 GOTO EU#LenaTalk.Flirt.4.6-1-3
    IF ~RandomNum(3,1)~ THEN REPLY @658 GOTO EU#LenaTalk.Flirt.4.7-1-1
    IF ~RandomNum(3,2)~ THEN REPLY @658 GOTO EU#LenaTalk.Flirt.4.7-1-2
    IF ~RandomNum(3,3)~ THEN REPLY @658 GOTO EU#LenaTalk.Flirt.4.7-1-3
    IF ~RandomNum(3,1)~ THEN REPLY @663 GOTO EU#LenaTalk.Flirt.4.8-1-1
    IF ~RandomNum(3,2)~ THEN REPLY @663 GOTO EU#LenaTalk.Flirt.4.8-1-2
    IF ~RandomNum(3,3)~ THEN REPLY @663 GOTO EU#LenaTalk.Flirt.4.8-1-3
    IF ~RandomNum(3,1)~ THEN REPLY @668 GOTO EU#LenaTalk.Flirt.4.9-1-1
    IF ~RandomNum(3,2)~ THEN REPLY @668 GOTO EU#LenaTalk.Flirt.4.9-1-2
    IF ~RandomNum(3,3)~ THEN REPLY @668 GOTO EU#LenaTalk.Flirt.4.9-1-3
END

IF ~~ BEGIN EU#LenaTalk.Flirt.4-2
    SAY @623

    IF ~RandomNum(4,1)~ THEN REPLY @624 GOTO EU#LenaTalk.Flirt.4.1-1-1
    IF ~RandomNum(4,2)~ THEN REPLY @624 GOTO EU#LenaTalk.Flirt.4.1-1-2
    IF ~RandomNum(4,3)~ THEN REPLY @624 GOTO EU#LenaTalk.Flirt.4.1-1-3
    IF ~RandomNum(4,4)~ THEN REPLY @624 GOTO EU#LenaTalk.Flirt.4.1-2-4
    IF ~RandomNum(4,1)~ THEN REPLY @629 GOTO EU#LenaTalk.Flirt.4.2-1-1
    IF ~RandomNum(4,2)~ THEN REPLY @629 GOTO EU#LenaTalk.Flirt.4.2-1-2
    IF ~RandomNum(4,3)~ THEN REPLY @629 GOTO EU#LenaTalk.Flirt.4.2-1-3
    IF ~RandomNum(4,4)~ THEN REPLY @629 GOTO EU#LenaTalk.Flirt.4.2-2-4
    IF ~RandomNum(4,1)~ THEN REPLY @634 GOTO EU#LenaTalk.Flirt.4.3-1-1
    IF ~RandomNum(4,2)~ THEN REPLY @634 GOTO EU#LenaTalk.Flirt.4.3-1-2
    IF ~RandomNum(4,3)~ THEN REPLY @634 GOTO EU#LenaTalk.Flirt.4.3-1-3
    IF ~RandomNum(4,4)~ THEN REPLY @634 GOTO EU#LenaTalk.Flirt.4.3-2-4
    IF ~RandomNum(4,1)~ THEN REPLY @639 GOTO EU#LenaTalk.Flirt.4.4-1-1
    IF ~RandomNum(4,2)~ THEN REPLY @639 GOTO EU#LenaTalk.Flirt.4.4-1-2
    IF ~RandomNum(4,3)~ THEN REPLY @639 GOTO EU#LenaTalk.Flirt.4.4-1-3
    IF ~RandomNum(4,4)~ THEN REPLY @639 GOTO EU#LenaTalk.Flirt.4.4-2-4
    IF ~RandomNum(4,1)~ THEN REPLY @644 GOTO EU#LenaTalk.Flirt.4.5-1-1
    IF ~RandomNum(4,2)~ THEN REPLY @644 GOTO EU#LenaTalk.Flirt.4.5-1-2
    IF ~RandomNum(4,3)~ THEN REPLY @644 GOTO EU#LenaTalk.Flirt.4.5-1-3
    IF ~RandomNum(4,4)~ THEN REPLY @644 GOTO EU#LenaTalk.Flirt.4.5-2-4
    IF ~RandomNum(4,1)~ THEN REPLY @653 GOTO EU#LenaTalk.Flirt.4.6-1-1
    IF ~RandomNum(4,2)~ THEN REPLY @653 GOTO EU#LenaTalk.Flirt.4.6-1-2
    IF ~RandomNum(4,3)~ THEN REPLY @653 GOTO EU#LenaTalk.Flirt.4.6-1-3
    IF ~RandomNum(4,4)~ THEN REPLY @653 GOTO EU#LenaTalk.Flirt.4.6-2-4
    IF ~RandomNum(4,1)~ THEN REPLY @658 GOTO EU#LenaTalk.Flirt.4.7-1-1
    IF ~RandomNum(4,2)~ THEN REPLY @658 GOTO EU#LenaTalk.Flirt.4.7-1-2
    IF ~RandomNum(4,3)~ THEN REPLY @658 GOTO EU#LenaTalk.Flirt.4.7-1-3
    IF ~RandomNum(4,4)~ THEN REPLY @658 GOTO EU#LenaTalk.Flirt.4.7-2-4
    IF ~RandomNum(4,1)~ THEN REPLY @663 GOTO EU#LenaTalk.Flirt.4.8-1-1
    IF ~RandomNum(4,2)~ THEN REPLY @663 GOTO EU#LenaTalk.Flirt.4.8-1-2
    IF ~RandomNum(4,3)~ THEN REPLY @663 GOTO EU#LenaTalk.Flirt.4.8-1-3
    IF ~RandomNum(4,4)~ THEN REPLY @663 GOTO EU#LenaTalk.Flirt.4.8-2-4
    IF ~RandomNum(4,1)~ THEN REPLY @668 GOTO EU#LenaTalk.Flirt.4.9-1-1
    IF ~RandomNum(4,2)~ THEN REPLY @668 GOTO EU#LenaTalk.Flirt.4.9-1-2
    IF ~RandomNum(4,3)~ THEN REPLY @668 GOTO EU#LenaTalk.Flirt.4.9-1-3
    IF ~RandomNum(4,4)~ THEN REPLY @668 GOTO EU#LenaTalk.Flirt.4.9-2-4
END

IF ~~ BEGIN EU#LenaTalk.Flirt.4.9-1-1
    SAY @669
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.4.9-1-2
    SAY @670
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.4.9-1-3
    SAY @671
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.4.9-2-4
    SAY @672
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.4.8-1-1
    SAY @664
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.4.8-1-2
    SAY @665
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.4.8-1-3
    SAY @666
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.4.8-2-4
    SAY @667
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.4.7-1-1
    SAY @659
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.4.7-1-2
    SAY @660
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.4.7-1-3
    SAY @661
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.4.7-2-4
    SAY @662
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.4.6-1-1
    SAY @654
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.4.6-1-2
    SAY @655
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.4.6-1-3
    SAY @656
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.4.6-2-4
    SAY @657
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.4.5-1-1
    SAY @645
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.4.5-1-2
    SAY @646
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.4.5-1-3
    SAY @647
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.4.5-2-4
    SAY @648
    IF ~~ THEN REPLY @649 GOTO EU#LenaTalk.Flirt.4.5-2-4.1
    IF ~~ THEN REPLY @651 GOTO EU#LenaTalk.Flirt.4.5-2-4.2
END

IF ~~ BEGIN EU#LenaTalk.Flirt.4.5-2-4.1
    SAY @650
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.4.5-2-4.2
    SAY @652
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.4.4-1-1
    SAY @640
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.4.4-1-2
    SAY @641
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.4.4-1-3
    SAY @642
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.4.4-2-4
    SAY @643
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.4.3-1-1
    SAY @635
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.4.3-1-2
    SAY @636
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.4.3-1-3
    SAY @637
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.4.3-2-4
    SAY @638
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.4.2-1-1
    SAY @630
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.4.2-1-2
    SAY @631
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.4.2-1-3
    SAY @632
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.4.2-2-4
    SAY @633
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.4.1-1-1
    SAY @625
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.4.1-1-2
    SAY @626
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.4.1-1-3
    SAY @627
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.4.1-2-4
    SAY @628
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.5
    SAY @674
    IF ~~ THEN REPLY @675 GOTO EU#LenaTalk.Flirt.5.1
    //: commented because asking question the answer is obvious
    //IF ~Global("EU#LenaRomanceActive","GLOBAL",2)~ THEN REPLY @679 GOTO EU#LenaTalk.Flirt.5.2-1
    //IF ~!Global("EU#LenaRomanceActive","GLOBAL",2)~ THEN REPLY @679 GOTO EU#LenaTalk.Flirt.5.2-2
    IF ~~ THEN REPLY @695 GOTO EU#LenaTalk.Flirt.5.3
    IF ~~ THEN REPLY @697 GOTO EU#LenaTalk.Flirt.5.4
    IF ~~ THEN REPLY @699 GOTO EU#LenaTalk.Flirt.5.5
    IF ~~ THEN REPLY @701 GOTO EU#LenaTalk.Flirt.5.6
    IF ~GlobalGT("EU#LenaLoveTalk","LOCALS",41)
        GlobalLT("CHAPTER","GLOBAL",%bg2_chapter_8%)~ THEN REPLY @703 GOTO EU#LenaTalk.Flirt.5.7-1
    IF ~OR(2)
        GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_7%)
        !GlobalGT("EU#LenaLoveTalk","LOCALS",41)~ THEN REPLY @703 GOTO EU#LenaTalk.Flirt.5.7-2
END

IF ~~ BEGIN EU#LenaTalk.Flirt.5.1
    SAY @676
    IF ~Race(Player1,ELF)~ THEN GOTO EU#LenaTalk.Flirt.5.1.1
    IF ~!Race(Player1,ELF)~ THEN GOTO EU#LenaTalk.Flirt.5.1.2
END

IF ~~ BEGIN EU#LenaTalk.Flirt.5.1.1
    SAY @677
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.5.1.2
    SAY @678
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.5.2-1
    SAY @680
    IF ~GlobalGT("EU#LenaLike","LOCALS",17)~ THEN REPLY @681 DO ~IncrementGlobal("EU#LenaLike","LOCALS",-1)~ GOTO EU#LenaTalk.Flirt.5.2-1.1
    IF ~!GlobalGT("EU#LenaLike","LOCALS",17)~ THEN REPLY @681 DO ~IncrementGlobal("EU#LenaLike","LOCALS",-1)~ GOTO EU#LenaTalk.Flirt.5.2-1.2
    IF ~~ THEN REPLY @684 DO ~IncrementGlobal("EU#LenaLike","LOCALS",-1)~ GOTO EU#LenaTalk.Flirt.5.2.2
    IF ~~ THEN REPLY @686 GOTO EU#LenaTalk.Flirt.5.2.3
END

IF ~~ BEGIN EU#LenaTalk.Flirt.5.2-1.1
    SAY @682
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.5.2-1.2
    SAY @683
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.5.2-2
    SAY @688
    IF ~~ THEN REPLY @689 DO ~IncrementGlobal("EU#LenaLike","LOCALS",-1)~ GOTO EU#LenaTalk.Flirt.5.2-2.1
    IF ~~ THEN REPLY @691 DO ~IncrementGlobal("EU#LenaLike","LOCALS",-1)~ GOTO EU#LenaTalk.Flirt.5.2-2.2
    IF ~~ THEN REPLY @693 GOTO EU#LenaTalk.Flirt.5.2-2.3
END

IF ~~ BEGIN EU#LenaTalk.Flirt.5.2-2.1
    SAY @690
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.5.2-2.2
    SAY @692
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.5.2-2.3
    SAY @694
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.5.2.2
    SAY @685
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.5.2.3
    SAY @687
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.5.3
    SAY @696
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.5.4
    SAY @698
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.5.5
    SAY @700
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.5.6
    SAY @702
    IF ~~ THEN EXIT
END
         
IF ~~ BEGIN EU#LenaTalk.Flirt.5.7-1
    SAY @704
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.5.7-2
    SAY @705
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.6
    SAY @707

    //: hand
    IF ~Global("EU#LenaRomanceActive","GLOBAL",2)
        RandomNum(6,1)~ THEN REPLY @708 GOTO EU#LenaTalk.Flirt.6.1-1
    IF ~Global("EU#LenaRomanceActive","GLOBAL",1)
        RandomNum(4,1)~ THEN REPLY @708 GOTO EU#LenaTalk.Flirt.6.1-1
    IF ~Global("EU#LenaRomanceActive","GLOBAL",2)
        RandomNum(6,2)~ THEN REPLY @708 GOTO EU#LenaTalk.Flirt.6.1-2
    IF ~Global("EU#LenaRomanceActive","GLOBAL",1)
        RandomNum(4,2)~ THEN REPLY @708 GOTO EU#LenaTalk.Flirt.6.1-2
    IF ~Global("EU#LenaRomanceActive","GLOBAL",2)
        RandomNum(6,3)~ THEN REPLY @708 GOTO EU#LenaTalk.Flirt.6.1-3
    IF ~Global("EU#LenaRomanceActive","GLOBAL",1)
        RandomNum(4,3)~ THEN REPLY @708 GOTO EU#LenaTalk.Flirt.6.1-3
    IF ~Global("EU#LenaRomanceActive","GLOBAL",2)
        RandomNum(6,4)~ THEN REPLY @708 GOTO EU#LenaTalk.Flirt.6.1-4
    IF ~Global("EU#LenaRomanceActive","GLOBAL",1)
        RandomNum(4,4)~ THEN REPLY @708 GOTO EU#LenaTalk.Flirt.6.1-4
    IF ~Global("EU#LenaRomanceActive","GLOBAL",2)
        RandomNum(6,5)~ THEN REPLY @708 GOTO EU#LenaTalk.Flirt.6.1-5
    IF ~Global("EU#LenaRomanceActive","GLOBAL",2)
        RandomNum(6,6)~ THEN REPLY @708 GOTO EU#LenaTalk.Flirt.6.1-6

    //: smile
    IF ~Global("EU#LenaRomanceActive","GLOBAL",2)
        RandomNum(6,1)~ THEN REPLY @719 GOTO EU#LenaTalk.Flirt.6.2-1
    IF ~Global("EU#LenaRomanceActive","GLOBAL",1)
        RandomNum(4,1)~ THEN REPLY @719 GOTO EU#LenaTalk.Flirt.6.2-1
    IF ~Global("EU#LenaRomanceActive","GLOBAL",2)
        RandomNum(6,2)~ THEN REPLY @719 GOTO EU#LenaTalk.Flirt.6.2-2
    IF ~Global("EU#LenaRomanceActive","GLOBAL",1)
        RandomNum(4,2)~ THEN REPLY @719 GOTO EU#LenaTalk.Flirt.6.2-2
    IF ~Global("EU#LenaRomanceActive","GLOBAL",2)
        RandomNum(6,3)~ THEN REPLY @719 GOTO EU#LenaTalk.Flirt.6.2-3
    IF ~Global("EU#LenaRomanceActive","GLOBAL",1)
        RandomNum(4,3)~ THEN REPLY @719 GOTO EU#LenaTalk.Flirt.6.2-3
    IF ~Global("EU#LenaRomanceActive","GLOBAL",2)
        RandomNum(6,4)~ THEN REPLY @719 GOTO EU#LenaTalk.Flirt.6.2-4
    IF ~Global("EU#LenaRomanceActive","GLOBAL",1)
        RandomNum(4,4)~ THEN REPLY @719 GOTO EU#LenaTalk.Flirt.6.2-4
    IF ~Global("EU#LenaRomanceActive","GLOBAL",2)
        RandomNum(6,5)~ THEN REPLY @719 GOTO EU#LenaTalk.Flirt.6.2-5
    IF ~Global("EU#LenaRomanceActive","GLOBAL",2)
        RandomNum(6,6)~ THEN REPLY @719 GOTO EU#LenaTalk.Flirt.6.2-6

    //: tail
    IF ~Global("EU#LenaWarnedTail","LOCALS",1)~ THEN REPLY @726 DO ~IncrementGlobal("EU#LenaLike","LOCALS",-1)~ GOTO EU#LenaTalk.Flirt.6.3-1
    IF ~!Global("EU#LenaWarnedTail","LOCALS",1)~ THEN REPLY @726 DO ~SetGlobal("EU#LenaWarnedTail","LOCALS",1)~ GOTO EU#LenaTalk.Flirt.6.3-2

    //: hair
    IF ~Global("EU#LenaRomanceActive","GLOBAL",2)
        RandomNum(6,1)~ THEN REPLY @729 GOTO EU#LenaTalk.Flirt.6.4-1
    IF ~Global("EU#LenaRomanceActive","GLOBAL",1)
        RandomNum(4,1)~ THEN REPLY @729 GOTO EU#LenaTalk.Flirt.6.4-1
    IF ~Global("EU#LenaRomanceActive","GLOBAL",2)
        RandomNum(6,2)~ THEN REPLY @729 GOTO EU#LenaTalk.Flirt.6.4-2
    IF ~Global("EU#LenaRomanceActive","GLOBAL",1)
        RandomNum(4,2)~ THEN REPLY @729 GOTO EU#LenaTalk.Flirt.6.4-2
    IF ~Global("EU#LenaRomanceActive","GLOBAL",2)
        RandomNum(6,3)~ THEN REPLY @729 GOTO EU#LenaTalk.Flirt.6.4-3
    IF ~Global("EU#LenaRomanceActive","GLOBAL",1)
        RandomNum(4,3)~ THEN REPLY @729 GOTO EU#LenaTalk.Flirt.6.4-3
    IF ~Global("EU#LenaRomanceActive","GLOBAL",2)
        RandomNum(6,4)~ THEN REPLY @729 GOTO EU#LenaTalk.Flirt.6.4-4
    IF ~Global("EU#LenaRomanceActive","GLOBAL",1)
        RandomNum(4,4)~ THEN REPLY @729 GOTO EU#LenaTalk.Flirt.6.4-4
    IF ~Global("EU#LenaRomanceActive","GLOBAL",2)
        RandomNum(6,5)~ THEN REPLY @729 GOTO EU#LenaTalk.Flirt.6.4-5
    IF ~Global("EU#LenaRomanceActive","GLOBAL",2)
        RandomNum(6,6)~ THEN REPLY @729 GOTO EU#LenaTalk.Flirt.6.4-6

    //: watch thighs
    IF ~Global("EU#LenaRomanceActive","GLOBAL",2)
        RandomNum(6,1)~ THEN REPLY @737 GOTO EU#LenaTalk.Flirt.6.5-1
    IF ~Global("EU#LenaRomanceActive","GLOBAL",1)
        RandomNum(4,1)~ THEN REPLY @737 GOTO EU#LenaTalk.Flirt.6.5-1
    IF ~Global("EU#LenaRomanceActive","GLOBAL",2)
        RandomNum(6,2)~ THEN REPLY @737 GOTO EU#LenaTalk.Flirt.6.5-2
    IF ~Global("EU#LenaRomanceActive","GLOBAL",1)
        RandomNum(4,2)~ THEN REPLY @737 GOTO EU#LenaTalk.Flirt.6.5-2
    IF ~Global("EU#LenaRomanceActive","GLOBAL",2)
        RandomNum(6,3)~ THEN REPLY @737 GOTO EU#LenaTalk.Flirt.6.5-3
    IF ~Global("EU#LenaRomanceActive","GLOBAL",1)
        RandomNum(4,3)~ THEN REPLY @737 GOTO EU#LenaTalk.Flirt.6.5-3
    IF ~Global("EU#LenaRomanceActive","GLOBAL",2)
        RandomNum(6,4)~ THEN REPLY @737 GOTO EU#LenaTalk.Flirt.6.5-4
    IF ~Global("EU#LenaRomanceActive","GLOBAL",1)
        RandomNum(4,4)~ THEN REPLY @737 GOTO EU#LenaTalk.Flirt.6.5-4
    IF ~Global("EU#LenaRomanceActive","GLOBAL",2)
        RandomNum(6,5)~ THEN REPLY @737 GOTO EU#LenaTalk.Flirt.6.5-5
    IF ~Global("EU#LenaRomanceActive","GLOBAL",2)
        RandomNum(6,6)~ THEN REPLY @737 GOTO EU#LenaTalk.Flirt.6.5-6

    //: fondle thighs
    IF ~Global("EU#LenaRomanceActive","GLOBAL",2)
        RandomNum(6,1)~ THEN REPLY @744 GOTO EU#LenaTalk.Flirt.6.6-1
    IF ~Global("EU#LenaRomanceActive","GLOBAL",1)
        RandomNum(4,1)~ THEN REPLY @744 GOTO EU#LenaTalk.Flirt.6.6-1
    IF ~Global("EU#LenaRomanceActive","GLOBAL",2)
        RandomNum(6,2)~ THEN REPLY @744 GOTO EU#LenaTalk.Flirt.6.6-2
    IF ~Global("EU#LenaRomanceActive","GLOBAL",1)
        RandomNum(4,2)~ THEN REPLY @744 GOTO EU#LenaTalk.Flirt.6.6-2
    IF ~Global("EU#LenaRomanceActive","GLOBAL",2)
        RandomNum(6,3)~ THEN REPLY @744 GOTO EU#LenaTalk.Flirt.6.6-3
    IF ~Global("EU#LenaRomanceActive","GLOBAL",1)
        RandomNum(4,3)~ THEN REPLY @744 GOTO EU#LenaTalk.Flirt.6.6-3
    IF ~Global("EU#LenaRomanceActive","GLOBAL",2)
        RandomNum(6,4)~ THEN REPLY @744 GOTO EU#LenaTalk.Flirt.6.6-4
    IF ~Global("EU#LenaRomanceActive","GLOBAL",1)
        RandomNum(4,4)~ THEN REPLY @744 GOTO EU#LenaTalk.Flirt.6.6-4
    IF ~Global("EU#LenaRomanceActive","GLOBAL",2)
        RandomNum(6,5)~ THEN REPLY @744 GOTO EU#LenaTalk.Flirt.6.6-5
    IF ~Global("EU#LenaRomanceActive","GLOBAL",2)
        RandomNum(6,6)~ THEN REPLY @744 GOTO EU#LenaTalk.Flirt.6.6-6
END

IF ~~ BEGIN EU#LenaTalk.Flirt.6.1-1
    SAY @709
    = @710
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.6.1-2
    SAY @711
    = @712
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.6.1-3
    SAY @713
    = @714
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.6.1-4
    SAY @715
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.6.1-5
    SAY @716
    = @717
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.6.1-6
    SAY @718
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.6.2-1
    SAY @720
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.6.2-2
    SAY @721
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.6.2-3
    SAY @722
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.6.2-4
    SAY @723
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.6.2-5
    SAY @724
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.6.2-6
    SAY @725
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.6.3-1
    SAY @728
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.6.3-2
    SAY @727
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.6.4-1
    SAY @730
    = @731
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.6.4-2
    SAY @732
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.6.4-3
    SAY @733
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.6.4-4
    SAY @734
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.6.4-5
    SAY @735
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.6.4-6
    SAY @736
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.6.5-1
    SAY @738
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.6.5-2
    SAY @739
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.6.5-3
    SAY @740
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.6.5-4
    SAY @741
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.6.5-5
    SAY @742
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.6.5-6
    SAY @743
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.6.6-1
    SAY @745
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.6.6-2
    SAY @746
    IF ~~ THEN REPLY @747 GOTO EU#LenaTalk.Flirt.6.6-2.1
    IF ~~ THEN REPLY @752 EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.6.6-2.1
    SAY @748
    IF ~~ THEN REPLY @749 GOTO EU#LenaTalk.Flirt.6.6-2.1.1
    IF ~~ THEN REPLY @752 EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.6.6-2.1.1
    SAY @750
    = @751
    IF ~~ THEN EXIT
END   

IF ~~ BEGIN EU#LenaTalk.Flirt.6.6-3
    SAY @753
    IF ~~ THEN REPLY @754 GOTO EU#LenaTalk.Flirt.6.6-3.1
    IF ~~ THEN REPLY @752 EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.6.6-3.1
    SAY @755
    IF ~~ THEN REPLY @756 GOTO EU#LenaTalk.Flirt.6.6-3.1
    IF ~~ THEN REPLY @757 GOTO EU#LenaTalk.Flirt.6.6-3.1
    IF ~~ THEN REPLY @758 GOTO EU#LenaTalk.Flirt.6.6-3.1
    IF ~~ THEN REPLY @759 EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.6.6-4
    SAY @760
    = @761
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.6.6-5
    SAY @762
    = @763
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.6.6-6
    SAY @764
    = @765
    = @766
    IF ~~ THEN EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.7
    SAY @768
    IF ~~ DO ~SetGlobal("EU#LenaKillRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.Flirt.8
    SAY @770
    IF ~~ DO ~SetGlobal("EU#LenaKillRomance","LOCALS",1)~ EXIT
END

END