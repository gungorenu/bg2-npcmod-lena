BEGIN ~BEU#LE25~

/////////////////
//:.  Nalia  .://
/////////////////

CHAIN IF ~
    GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_7%)
    InParty("EU#LENA")
    InParty("Nalia")
    See("Nalia")
    !StateCheck("Nalia",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanterTOB.Nalia#1","LOCALS",0)~ 
THEN ~BEU#LE25~ EU#LenaBanterTOB.Nalia#1
    @3620 DO ~SetGlobal("EU#LenaBanterTOB.Nalia#1","LOCALS",1)~
    == ~BNALIA25~   @3621
    == ~BEU#LE25~   @3622
    == ~BNALIA25~   @3623
    == ~BEU#LE25~   @3624
    == ~BNALIA25~   @3625
    =               @3626
    BRANCH ~Gender(Player1,MALE) 
        Global("EU#LenaRomanceActive","GLOBAL",2)~ BEGIN
        == ~BNALIA25~   @3627
        == ~BEU#LE25~   @3628
        == ~BNALIA25~   @3629
    END
    BRANCH  ~OR(2) 
        !Gender(Player1,MALE) 
        !Global("EU#LenaRomanceActive","GLOBAL",2)~ BEGIN
        == ~BEU#LE25~ @3630
    END
EXIT    

//////////////////////
//:.  Haer'Dalis  .://
//////////////////////

CHAIN IF ~
    GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_7%)
    InParty("EU#LENA")
    InParty("HaerDalis")
    See("HaerDalis")
    !StateCheck("HaerDalis",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanterTOB.HaerDalis#1","LOCALS",0)~ 
THEN ~BEU#LE25~ EU#LenaBanterTOB.HaerDalis#1
    @3649 DO ~SetGlobal("EU#LenaBanterTOB.HaerDalis#1","LOCALS",1)~
    == ~BHAERD25~   @3650
    == ~BEU#LE25~   @3651
    == ~BHAERD25~   @3652
    == ~BEU#LE25~   @3653
    == ~BHAERD25~   @3654
    =               @3655
    =               @3656
    == ~BEU#LE25~   @3657
    == ~BHAERD25~   @3658
EXIT

/////////////////
//:.  Aerie  .://
/////////////////

CHAIN IF ~
    GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_7%)
    InParty("EU#LENA")
    InParty("Aerie")
    See("EU#LENA")
    !StateCheck("Aerie",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanterTOB.Aerie#1","LOCALS",0)~ 
THEN ~BAERIE25~ EU#LenaBanterTOB.Aerie#1
    @3674 DO ~SetGlobal("EU#LenaBanterTOB.Aerie#1","LOCALS",1)~
    == ~BEU#LE25~   @3675
    == ~BAERIE25~   @3676
    =               @3677
    == ~BEU#LE25~   @3678
    == ~BAERIE25~   @3679
    == ~BEU#LE25~   @3680
    == ~BAERIE25~   @3681
EXIT

/////////////////
//:.  Mazzy  .://
/////////////////

CHAIN IF ~
    GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_7%)
    InParty("EU#LENA")
    InParty("Mazzy")
    See("EU#LENA")
    !StateCheck("Mazzy",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanterTOB.Mazzy#1","LOCALS",0)~ 
THEN ~BMAZZY25~ EU#LenaBanterTOB.Mazzy#1
    @3697 DO ~SetGlobal("EU#LenaBanterTOB.Mazzy#1","LOCALS",1)~
    == ~BEU#LE25~   @3698
    == ~BMAZZY25~   @3699
    == ~BEU#LE25~   @3701
    == ~BMAZZY25~   @3702
    == ~BEU#LE25~   @3703
    == ~BMAZZY25~   @3704
    == ~BEU#LE25~   @3705
EXIT

///////////////////
//:.  Jaheira  .://
///////////////////

CHAIN IF ~
    GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_7%)
    InParty("EU#LENA")
    InParty("Jaheira")
    See("Jaheira")
    !StateCheck("Jaheira",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanterTOB.Jaheira#1","LOCALS",0)~ 
THEN ~BEU#LE25~ EU#LenaBanterTOB.Jaheira#1
    @3720 DO ~SetGlobal("EU#LenaBanterTOB.Jaheira#1","LOCALS",1)~
    == ~BJAHEI25~   @3721
    == ~BEU#LE25~   @3722
    == ~BJAHEI25~   @3723
    == ~BEU#LE25~   @3724
    == ~BJAHEI25~   @3725
    == ~BEU#LE25~   @3726
    == ~BJAHEI25~   @3727
    == ~BEU#LE25~   @3728
    == ~BJAHEI25~   @3729
EXIT

///////////////////
//:.  Sarevok  .://
///////////////////

CHAIN IF ~
    InParty("EU#LENA")
    InParty("Sarevok")
    See("EU#LENA")
    !StateCheck("Sarevok",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanterTOB.Sarevok#1","LOCALS",0)~ 
THEN ~BSAREV25~ EU#LenaBanterTOB.Sarevok#1
    @3730 DO ~SetGlobal("EU#LenaBanterTOB.Sarevok#1","LOCALS",1)~
    =               @3731
    == ~BEU#LE25~   @3732
    == ~BSAREV25~   @3733
    == ~BEU#LE25~   @3734
    == ~BSAREV25~   @3735
EXIT

//--

CHAIN IF ~
    False() //: this talk became obsolete
    InParty("EU#LENA")
    InParty("Sarevok")
    See("Sarevok")
    !StateCheck("Sarevok",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanterTOB.Sarevok#2","LOCALS",0)~ 
THEN ~BEU#LE25~ EU#LenaBanterTOB.Sarevok#2
    @3736 DO ~SetGlobal("EU#LenaBanterTOB.Sarevok#2","LOCALS",1)~
    == ~BSAREV25~   @3737
    == ~BEU#LE25~   @3738
    == ~BSAREV25~   @3739
    =               @3740
    == ~BEU#LE25~   @3741
    == ~BSAREV25~   @3742
    =               @3743
    == ~BEU#LE25~   @3744
    == ~BSAREV25~   @3745
EXIT

//--

CHAIN IF ~
    InParty("EU#LENA")
    InParty("Sarevok")
    See("EU#LENA")
    !StateCheck("Sarevok",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanterTOB.Sarevok#3","LOCALS",0)~ 
THEN ~BSAREV25~ EU#LenaBanterTOB.Sarevok#3
    @3989 DO ~SetGlobal("EU#LenaBanterTOB.Sarevok#3","LOCALS",1)~
    == ~BEU#LE25~   @3990
    == ~BSAREV25~   @3991
    == ~BEU#LE25~   @3992
    == ~BSAREV25~   @3993
    == ~BEU#LE25~   @3994
    == ~BSAREV25~   @3995
    == ~BEU#LE25~   @3996
    == ~BSAREV25~   @3997
    == ~BEU#LE25~   @3998
EXIT

///////////////////
//:.  Viconia  .://
///////////////////

CHAIN IF ~
    GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_7%)
    InParty("EU#LENA")
    InParty("Viconia")
    See("Viconia")
    !StateCheck("Viconia",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanterTOB.Viconia#1","LOCALS",0)~ 
THEN ~BEU#LE25~ EU#LenaBanterTOB.Viconia#1
    @3762 DO ~SetGlobal("EU#LenaBanterTOB.Viconia#1","LOCALS",1)~
    == ~BVICON25~   @3763
    == ~BEU#LE25~   @3764
    == ~BVICON25~   @3765
    == ~BEU#LE25~   @3766
    == ~BVICON25~   @3767
    == ~BEU#LE25~   @3768
    == ~BVICON25~   @3769
EXIT

/////////////////
//:.  Imoen  .://
/////////////////

CHAIN IF ~
    GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_7%)
    InParty("EU#LENA")
    InParty("Imoen2")
    See("Imoen2")
    !StateCheck("Imoen2",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanterTOB.Imoen#1","LOCALS",0)~ 
THEN ~BEU#LE25~ EU#LenaBanterTOB.Imoen#1
    @3784 DO ~SetGlobal("EU#LenaBanterTOB.Imoen#1","LOCALS",1)~
    == ~BIMOEN25~   @3785
    == ~BEU#LE25~   @3786
    == ~BIMOEN25~   @3787
    == ~BEU#LE25~   @3788
    == ~BIMOEN25~   @3789
    == ~BEU#LE25~   @3790
    == ~BIMOEN25~   @3791
    == ~BEU#LE25~   @3792
    == ~BIMOEN25~   @3793
EXIT

/////////////////
//:.  Minsc  .://
/////////////////

CHAIN IF ~
    GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_7%)
    InParty("EU#LENA")
    InParty("Minsc")
    See("Minsc")
    !StateCheck("Minsc",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanterTOB.Minsc#1","LOCALS",0)~ 
THEN ~BEU#LE25~ EU#LenaBanterTOB.Minsc#1
    @3822 DO ~SetGlobal("EU#LenaBanterTOB.Minsc#1","LOCALS",1)~
    == ~BMINSC25~   @3823
    == ~BEU#LE25~   @3824
    == ~BMINSC25~   @3825
    == ~BEU#LE25~   @3826
    == ~BMINSC25~   @3827
    == ~BEU#LE25~   @3828
    == ~BMINSC25~   @3829
EXIT

///////////////////
//:.  Valygar  .://
///////////////////

CHAIN IF ~
    GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_7%)
    InParty("EU#LENA")
    InParty("Valygar")
    See("Valygar")
    !StateCheck("Valygar",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanterTOB.Valygar#1","LOCALS",0)~ 
THEN ~BEU#LE25~ EU#LenaBanterTOB.Valygar#1
    @3844 DO ~SetGlobal("EU#LenaBanterTOB.Valygar#1","LOCALS",1)~
    == ~BVALYG25~   @3845
    == ~BEU#LE25~   @3846
    == ~BVALYG25~   @3847
    =               @3848
    == ~BEU#LE25~   @3849
    == ~BVALYG25~   @3850
EXIT

/////////////////
//:.  Cernd  .://
/////////////////

CHAIN IF ~
    GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_7%)
    InParty("EU#LENA")
    InParty("Cernd")
    See("Cernd")
    !StateCheck("Cernd",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanterTOB.Cernd#1","LOCALS",0)~ 
THEN ~BEU#LE25~ EU#LenaBanterTOB.Cernd#1
    @3869 DO ~SetGlobal("EU#LenaBanterTOB.Cernd#1","LOCALS",1)~
    == ~BCERND25~   @3870
    == ~BEU#LE25~   @3871
    == ~BCERND25~   @3872
    == ~BEU#LE25~   @3873
    == ~BCERND25~   @3874
    == ~BEU#LE25~   @3875
    == ~BCERND25~   @3876
    == ~BEU#LE25~   @3877
    == ~BCERND25~   @3878
    == ~BEU#LE25~   @3879
EXIT

//////////////////
//:.  Korgan  .://
//////////////////

CHAIN IF ~
    GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_7%)
    InParty("EU#LENA")
    InParty("Korgan")
    See("Korgan")
    !StateCheck("Korgan",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanterTOB.Korgan#1","LOCALS",0)~ 
THEN ~BEU#LE25~ EU#LenaBanterTOB.Korgan#1
    @3898 DO ~SetGlobal("EU#LenaBanterTOB.Korgan#1","LOCALS",1)~
    == ~BKORGA25~   @3899
    == ~BEU#LE25~   @3900
    =               @3901
    == ~BKORGA25~   @3902
    == ~BEU#LE25~   @3903
EXIT

/////////////////
//:.  Edwin  .://
/////////////////

CHAIN IF ~
    GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_7%)
    InParty("EU#LENA")
    InParty("Edwin")
    See("Edwin")
    !StateCheck("Edwin",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanterTOB.Edwin#1","LOCALS",0)~ 
THEN ~BEU#LE25~ EU#LenaBanterTOB.Edwin#1
    @3933 DO ~SetGlobal("EU#LenaBanterTOB.Edwin#1","LOCALS",1)~
    == ~BEDWIN25~   @3934
    == ~BEU#LE25~   @3935
    =               @3936
    == ~BEDWIN25~   @3937
    == ~BEU#LE25~   @3938
    == ~BEDWIN25~   @3939
    == ~BEU#LE25~   @3940
    == ~BEDWIN25~   @3941
EXIT

///////////////
//:.  Jan  .://
///////////////

CHAIN IF ~
    GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_7%)
    InParty("EU#LENA")
    InParty("Jan")
    See("Jan")
    !StateCheck("Jan",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanterTOB.Jan#1","LOCALS",0)~ 
THEN ~BEU#LE25~ EU#LenaBanterTOB.Jan#1
    @3953 DO ~SetGlobal("EU#LenaBanterTOB.Jan#1","LOCALS",1)~
    == ~BJAN25~     @3954
    == ~BEU#LE25~   @3955
    == ~BJAN25~     @3956
    == ~BEU#LE25~   @3957
    == ~BJAN25~     @3958
    == ~BEU#LE25~   @3959
    == ~BJAN25~     @3960
    == ~BEU#LE25~   @3961
    == ~BJAN25~     @3962
    == ~BEU#LE25~   @3963
    =               @3964
    == ~BJAN25~     @3965
    == ~BEU#LE25~   @3966
    == ~BJAN25~     @3967
    == ~BEU#LE25~   @3968
EXIT

//////////////////
//:.  Anomen  .://
//////////////////

CHAIN IF ~
    GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_7%)
    InParty("EU#LENA")
    InParty("Anomen")
    See("EU#LENA")
    !StateCheck("Anomen",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanterTOB.Anomen#1","LOCALS",0)~ 
THEN ~BANOME25~ EU#LenaBanterTOB.Anomen#1
    @3981 DO ~SetGlobal("EU#LenaBanterTOB.Anomen#1","LOCALS",1)~
    == ~BEU#LE25~   @3982
    == ~BANOME25~   @3983
    == ~BEU#LE25~   @3984
    == ~BANOME25~   @3985
    == ~BEU#LE25~   @3986
    == ~BANOME25~   @3987
    == ~BEU#LE25~   @3988
EXIT

// ------------------------------------------------------------------------------------------------------------------------------------------------------------

////////////////////////////////////////////////////////////
//:.  SOA Banters for TOB NPCs in case they are missed  .://
////////////////////////////////////////////////////////////

/////////////////
//:.  Nalia  .://
/////////////////

CHAIN IF ~
    GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_7%) // TOB NPC banter
    InParty("EU#LENA")
    InParty("Nalia")
    See("Nalia")
    !StateCheck("Nalia",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Nalia#1","LOCALS",0)~ 
THEN ~BEU#LE25~ EU#LenaBanter.Nalia#1
    @3601 DO ~SetGlobal("EU#LenaBanter.Nalia#1","LOCALS",1)~
    == ~BNALIA25~   @3602
    == ~BEU#LE25~   @3603
    == ~BNALIA25~   @3604
    =               @3605
    =               @3606
    == ~BEU#LE25~   @3607
    == ~BNALIA25~   @3608
    == ~BEU#LE25~   @3609
EXIT

// --

CHAIN IF ~
    GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_7%) // TOB NPC banter
    InParty("EU#LENA")
    InParty("Nalia")
    See("Nalia")
    !StateCheck("Nalia",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Nalia#2","LOCALS",0)~ 
THEN ~BEU#LE25~ EU#LenaBanter.Nalia#2
    @3610 DO ~SetGlobal("EU#LenaBanter.Nalia#2","LOCALS",1)~
    == ~BNALIA25~   @3611
    =               @3612
    =               @3613
    == ~BEU#LE25~   @3614
    == ~BNALIA25~   @3615
    == ~BEU#LE25~   @3616
    =               @3617
    == ~BNALIA25~   @3618
    == ~BEU#LE25~   @3619
EXIT

//////////////////////
//:.  Haer'Dalis  .://
//////////////////////

CHAIN IF ~
    GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_7%) // TOB NPC banter
    InParty("EU#LENA")
    InParty("HaerDalis")
    See("HaerDalis")
    !StateCheck("HaerDalis",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.HaerDalis#1","LOCALS",0)~ 
THEN ~BEU#LE25~ EU#LenaBanter.HaerDalis#1
    @3631 DO ~SetGlobal("EU#LenaBanter.HaerDalis#1","LOCALS",1)~
    == ~BHAERD25~   @3632
    == ~BEU#LE25~   @3633
    == ~BHAERD25~   @3634
    == ~BEU#LE25~   @3635
    == ~BHAERD25~   @3636
    =               @3637
    == ~BEU#LE25~   @3638
    == ~BHAERD25~   @3639
    == ~BEU#LE25~   @3640
    == ~BHAERD25~   @3641
EXIT

// --

CHAIN IF ~
    GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_7%) // TOB NPC banter
    InParty("EU#LENA")
    InParty("HaerDalis")
    See("EU#LENA")
    !StateCheck("HaerDalis",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.HaerDalis#2","LOCALS",0)~ 
THEN ~BHAERD25~ EU#LenaBanter.HaerDalis#2
    @3642 DO ~SetGlobal("EU#LenaBanter.HaerDalis#2","LOCALS",1)~
    == ~BEU#LE25~   @3643
    == ~BHAERD25~   @3644
    == ~BEU#LE25~   @3645
    == ~BHAERD25~   @3646
    == ~BEU#LE25~   @3647
    == ~BHAERD25~   @3648
EXIT


/////////////////
//:.  Aerie  .://
/////////////////

CHAIN IF ~
    GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_7%) // TOB NPC banter
    InParty("EU#LENA")
    InParty("Aerie")
    See("Aerie")
    !StateCheck("Aerie",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Aerie#1","LOCALS",0)~ 
THEN ~BEU#LE25~ EU#LenaBanter.Aerie#1
    @3659 DO ~SetGlobal("EU#LenaBanter.Aerie#1","LOCALS",1)~
    == ~BAERIE25~   @3660
    == ~BEU#LE25~   @3661
    == ~BAERIE25~   @3662
    == ~BEU#LE25~   @3663
    == ~BAERIE25~   @3664
EXIT

// --

CHAIN IF ~
    GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_7%) // TOB NPC banter
    InParty("EU#LENA")
    InParty("Aerie")
    See("Aerie")
    !StateCheck("Aerie",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Aerie#2","LOCALS",0)~ 
THEN ~BEU#LE25~ EU#LenaBanter.Aerie#2
    @3665 DO ~SetGlobal("EU#LenaBanter.Aerie#2","LOCALS",1)~
    == ~BAERIE25~   @3666
    == ~BEU#LE25~   @3667
    == ~BAERIE25~   @3668
    =               @3669
    =               @3670
    == ~BEU#LE25~   @3671
    == ~BAERIE25~   @3672
    == ~BEU#LE25~   @3673
EXIT

/////////////////
//:.  Mazzy  .://
/////////////////

CHAIN IF ~
    GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_7%) // TOB NPC banter
    InParty("EU#LENA")
    InParty("Mazzy")
    See("EU#LENA")
    !StateCheck("Mazzy",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Mazzy#1","LOCALS",0)~ 
THEN ~BMAZZY25~ EU#LenaBanter.Mazzy#1
    @3682 DO ~SetGlobal("EU#LenaBanter.Mazzy#1","LOCALS",1)~
    == ~BEU#LE25~   @3683
    == ~BMAZZY25~   @3684
    == ~BEU#LE25~   @3685
    == ~BMAZZY25~   @3686
    == ~BEU#LE25~   @3687
EXIT

// --

CHAIN IF ~
    GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_7%) // TOB NPC banter
    InParty("EU#LENA")
    InParty("Mazzy")
    See("Mazzy")
    !StateCheck("Mazzy",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Mazzy#2","LOCALS",0)~ 
THEN ~BEU#LE25~ EU#LenaBanter.Mazzy#2
    @3688 DO ~SetGlobal("EU#LenaBanter.Mazzy#2","LOCALS",1)~
    == ~BMAZZY25~   @3689
    == ~BEU#LE25~   @3690
    == ~BMAZZY25~   @3691
    == ~BEU#LE25~   @3692
    == ~BMAZZY25~   @3693
    == ~BEU#LE25~   @3694
    == ~BMAZZY25~   @3695
    == ~BEU#LE25~   @3696
EXIT

///////////////////
//:.  Jaheira  .://
///////////////////

CHAIN IF ~
    GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_7%) // TOB NPC banter
    InParty("EU#LENA")
    InParty("Jaheira")
    See("Jaheira")
    !StateCheck("Jaheira",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Jaheira#1","LOCALS",0)~ 
THEN ~BEU#LE25~ EU#LenaBanter.Jaheira#1
    @3706 DO ~SetGlobal("EU#LenaBanter.Jaheira#1","LOCALS",1)~
    == ~BJAHEI25~   @3707
    == ~BEU#LE25~   @3708
    == ~BJAHEI25~   @3709
    == ~BEU#LE25~   @3710
    == ~BJAHEI25~   @3711
    == ~BEU#LE25~   @3712
EXIT

// --

CHAIN IF ~
    GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_7%) // TOB NPC banter
    InParty("EU#LENA")
    InParty("Jaheira")
    See("EU#LENA")
    !StateCheck("Jaheira",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Jaheira#2","LOCALS",0)~ 
THEN ~BJAHEI25~ EU#LenaBanter.Jaheira#2
    @3713 DO ~SetGlobal("EU#LenaBanter.Jaheira#2","LOCALS",1)~
    == ~BEU#LE25~   @3714
    == ~BJAHEI25~   @3715
    == ~BEU#LE25~   @3716
    == ~BJAHEI25~   @3717
    == ~BEU#LE25~   @3718
    == ~BJAHEI25~   @3719
EXIT

///////////////////
//:.  Viconia  .://
///////////////////

CHAIN IF ~
    GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_7%) // TOB NPC banter
    InParty("EU#LENA")
    InParty("Viconia")
    See("Viconia")
    !StateCheck("Viconia",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Viconia#1","LOCALS",0)~ 
THEN ~BEU#LE25~ EU#LenaBanter.Viconia#1
    @3746 DO ~SetGlobal("EU#LenaBanter.Viconia#1","LOCALS",1)~
    == ~BVICON25~   @3747
    == ~BEU#LE25~   @3748
    == ~BVICON25~   @3749
    == ~BEU#LE25~   @3750
    == ~BVICON25~   @3751
    =               @3752
    == ~BEU#LE25~   @3753
    == ~BVICON25~   @3754
EXIT

// --

CHAIN IF ~
    GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_7%) // TOB NPC banter
    InParty("EU#LENA")
    InParty("Viconia")
    See("Viconia")
    !StateCheck("Viconia",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Viconia#2","LOCALS",0)~ 
THEN ~BEU#LE25~ EU#LenaBanter.Viconia#2
    @3755 DO ~SetGlobal("EU#LenaBanter.Viconia#2","LOCALS",1)~
    == ~BVICON25~   @3756
    == ~BEU#LE25~   @3757
    =               @3758
    == ~BVICON25~   @3759
    == ~BEU#LE25~   @3760
    == ~BVICON25~   @3761
EXIT

/////////////////
//:.  Imoen  .://
/////////////////

CHAIN IF ~
    GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_7%) // TOB NPC banter
    InParty("EU#LENA")
    InParty("Imoen2")
    See("Imoen2")
    !StateCheck("Imoen2",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Imoen#1","LOCALS",0)~ 
THEN ~BEU#LE25~ EU#LenaBanter.Imoen#1
    @3770 DO ~SetGlobal("EU#LenaBanter.Imoen#1","LOCALS",1)~
    == ~BIMOEN25~   @3771
    == ~BEU#LE25~   @3772
    == ~BIMOEN25~   @3773
    =               @3774
    == ~BEU#LE25~   @3775
    == ~BIMOEN25~   @3776
    == ~BEU#LE25~   @3777
    == ~BIMOEN25~   @3778
EXIT

// --

CHAIN IF ~
    GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_7%) // TOB NPC banter
    InParty("EU#LENA")
    InParty("Imoen2")
    See("Imoen2")
    !StateCheck("Imoen2",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Imoen#2","LOCALS",0)~ 
THEN ~BEU#LE25~ EU#LenaBanter.Imoen#2
    @3779 DO ~SetGlobal("EU#LenaBanter.Imoen#2","LOCALS",1)~
    == ~BIMOEN25~   @3780
    == ~BEU#LE25~   @3781
    == ~BIMOEN25~   @3782
    == ~BEU#LE25~   @3783
EXIT

/////////////////
//:.  Minsc  .://
/////////////////

CHAIN IF ~
    GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_7%) // TOB NPC banter
    InParty("EU#LENA")
    InParty("Minsc")
    See("EU#LENA")
    !StateCheck("Minsc",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Minsc#1","LOCALS",0)~ 
THEN ~BMINSC25~ EU#LenaBanter.Minsc#1
    @3794 DO ~SetGlobal("EU#LenaBanter.Minsc#1","LOCALS",1)~
    == ~BEU#LE25~   @3795
    == ~BMINSC25~   @3796
    == ~BEU#LE25~   @3797
    == ~BMINSC25~   @3798
    == ~BEU#LE25~   @3799
    == ~BMINSC25~   @3800
    == ~BEU#LE25~   @3801
EXIT

// --

CHAIN IF ~
    GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_7%) // TOB NPC banter
    InParty("EU#LENA")
    InParty("Minsc")
    See("EU#LENA")
    !StateCheck("Minsc",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Minsc#2","LOCALS",0)~ 
THEN ~BMINSC25~ EU#LenaBanter.Minsc#2
    @3802 DO ~SetGlobal("EU#LenaBanter.Minsc#2","LOCALS",1)~
    == ~BEU#LE25~   @3803
    == ~BMINSC25~   @3804
    == ~BEU#LE25~   @3805
    == ~BMINSC25~   @3806
    == ~BEU#LE25~   @3807
EXIT

// --

CHAIN IF ~
    GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_7%) // TOB NPC banter
    InParty("EU#LENA")
    InParty("Minsc")
    See("Minsc")
    !StateCheck("Minsc",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Minsc#3","LOCALS",0)~ 
THEN ~BEU#LE25~ EU#LenaBanter.Minsc#3
    @3808 DO ~SetGlobal("EU#LenaBanter.Minsc#3","LOCALS",1)~
    == ~BMINSC25~   @3809
    == ~BEU#LE25~   @3810
    == ~BMINSC25~   @3811
    =               @3812
    == ~BEU#LE25~   @3813
    == ~BMINSC25~   @3814
    == ~BEU#LE25~   @3815
    == ~BMINSC25~   @3816
    == ~BEU#LE25~   @3817
    == ~BMINSC25~   @3818
    =               @3819
    == ~BEU#LE25~   @3820
    == ~BMINSC25~   @3821
EXIT

///////////////////
//:.  Valygar  .://
///////////////////

CHAIN IF ~
    GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_7%) // TOB NPC banter
    InParty("EU#LENA")
    InParty("Valygar")
    See("EU#LENA")
    !StateCheck("Valygar",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Valygar#1","LOCALS",0)~ 
THEN ~BVALYG25~ EU#LenaBanter.Valygar#1
    @3830 DO ~SetGlobal("EU#LenaBanter.Valygar#1","LOCALS",1)~
    == ~BEU#LE25~   @3831
    == ~BVALYG25~   @3832
    == ~BEU#LE25~   @3833
    == ~BVALYG25~   @3834
    == ~BEU#LE25~   @3835
    == ~BVALYG25~   @3836
    == ~BEU#LE25~   @3837
EXIT

// --

CHAIN IF ~
    GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_7%) // TOB NPC banter
    InParty("EU#LENA")
    InParty("Valygar")
    See("EU#LENA")
    !StateCheck("Valygar",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Valygar#2","LOCALS",0)~ 
THEN ~BVALYG25~ EU#LenaBanter.Valygar#2
    @3838 DO ~SetGlobal("EU#LenaBanter.Valygar#2","LOCALS",1)~
    == ~BEU#LE25~   @3839
    == ~BVALYG25~   @3840
    == ~BEU#LE25~   @3841
    == ~BVALYG25~   @3842
    == ~BEU#LE25~   @3843
EXIT

/////////////////
//:.  Cernd  .://
/////////////////

CHAIN IF ~
    GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_7%) // TOB NPC banter
    InParty("EU#LENA")
    InParty("Cernd")
    See("Cernd")
    !StateCheck("Cernd",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Cernd#1","LOCALS",0)~ 
THEN ~BEU#LE25~ EU#LenaBanter.Cernd#1
    @3851 DO ~SetGlobal("EU#LenaBanter.Cernd#1","LOCALS",1)~
    == ~BCERND25~   @3852
    == ~BEU#LE25~   @3853
    =               @3854
    == ~BCERND25~   @3855
    == ~BEU#LE25~   @3856
    == ~BCERND25~   @3857
EXIT

// --

CHAIN IF ~
    GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_7%) // TOB NPC banter
    InParty("EU#LENA")
    InParty("Cernd")
    See("EU#LENA")
    !StateCheck("Cernd",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Cernd#2","LOCALS",0)~ 
THEN ~BCERND25~ EU#LenaBanter.Cernd#2
    @3858 DO ~SetGlobal("EU#LenaBanter.Cernd#2","LOCALS",1)~
    == ~BEU#LE25~   @3859
    == ~BCERND25~   @3860
    == ~BEU#LE25~   @3861
    == ~BCERND25~   @3862
    == ~BEU#LE25~   @3863
    == ~BCERND25~   @3864
    == ~BEU#LE25~   @3865
    == ~BCERND25~   @3866
    == ~BEU#LE25~   @3867
    == ~BCERND25~   @3868
EXIT

//////////////////
//:.  Korgan  .://
//////////////////

CHAIN IF ~
    GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_7%) // TOB NPC banter
    InParty("EU#LENA")
    InParty("Korgan")
    See("EU#LENA")
    !StateCheck("Korgan",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Korgan#1","LOCALS",0)~ 
THEN ~BKORGA25~ EU#LenaBanter.Korgan#1
    @3880 DO ~SetGlobal("EU#LenaBanter.Korgan#1","LOCALS",1)~
    == ~BEU#LE25~   @3881
    == ~BKORGA25~   @3882
    == ~BEU#LE25~   @3883
    == ~BKORGA25~   @3884
    == ~BEU#LE25~   @3885
    == ~BKORGA25~   @3886
    == ~BEU#LE25~   @3887
    == ~BKORGA25~   @3888
EXIT

// --

CHAIN IF ~
    GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_7%) // TOB NPC banter
    InParty("EU#LENA")
    InParty("Korgan")
    See("EU#LENA")
    !StateCheck("Korgan",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Korgan#2","LOCALS",0)~ 
THEN ~BKORGA25~ EU#LenaBanter.Korgan#2
    @3889 DO ~SetGlobal("EU#LenaBanter.Korgan#2","LOCALS",1)~
    == ~BEU#LE25~   @3890
    == ~BKORGA25~   @3891
    == ~BEU#LE25~   @3892
    == ~BKORGA25~   @3893
    == ~BEU#LE25~   @3894
    == ~BKORGA25~   @3895
    =               @3896
    == ~BEU#LE25~   @3897
EXIT

/////////////////
//:.  Edwin  .://
/////////////////

CHAIN IF ~
    GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_7%) // TOB NPC banter
    InParty("EU#LENA")
    InParty("Edwin")
    See("EU#LENA")
    !StateCheck("Edwin",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Edwin#1","LOCALS",0)~ 
THEN ~BEDWIN25~ EU#LenaBanter.Edwin#1
    @3919 DO ~SetGlobal("EU#LenaBanter.Edwin#1","LOCALS",1)~
    == ~BEU#LE25~   @3920
    == ~BEDWIN25~   @3921
    == ~BEU#LE25~   @3922
    == ~BEDWIN25~   @3923
    == ~BEU#LE25~   @3924
    == ~BEDWIN25~   @3925
    == ~BEU#LE25~   @3926
EXIT

// --

CHAIN IF ~
    GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_7%) // TOB NPC banter
    InParty("EU#LENA")
    InParty("Edwin")
    See("EU#LENA")
    !StateCheck("Edwin",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Edwin#2","LOCALS",0)~ 
THEN ~BEDWIN25~ EU#LenaBanter.Edwin#2
    @3927 DO ~SetGlobal("EU#LenaBanter.Edwin#2","LOCALS",1)~
    == ~BEU#LE25~   @3928
    == ~BEDWIN25~   @3929
    == ~BEU#LE25~   @3930
    == ~BEDWIN25~   @3931
    == ~BEU#LE25~   @3932
EXIT

///////////////
//:.  Jan  .://
///////////////

CHAIN IF ~
    GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_7%) // TOB NPC banter
    InParty("EU#LENA")
    InParty("Jan")
    See("EU#LENA")
    !StateCheck("Jan",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Jan#1","LOCALS",0)~ 
THEN ~BJAN25~ EU#LenaBanter.Jan#1
    @3942 DO ~SetGlobal("EU#LenaBanter.Jan#1","LOCALS",1)~
    == ~BEU#LE25~   @3943
    == ~BJAN25~     @3944
    =               @3945
    == ~BEU#LE25~   @3946
EXIT

// --

CHAIN IF ~
    GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_7%) // TOB NPC banter
    InParty("EU#LENA")
    InParty("Jan")
    See("Jan")
    !StateCheck("Jan",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Jan#2","LOCALS",0)~ 
THEN ~BEU#LE25~ EU#LenaBanter.Jan#2
    @3947 DO ~SetGlobal("EU#LenaBanter.Jan#2","LOCALS",1)~
    == ~BJAN25~     @3948
    == ~BEU#LE25~   @3949
    == ~BJAN25~     @3950
    =               @3951
    == ~BEU#LE25~   @3952
EXIT

//////////////////
//:.  Anomen  .://
//////////////////

CHAIN IF ~
    GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_7%) // TOB NPC banter
    InParty("EU#LENA")
    InParty("Anomen")
    See("EU#LENA")
    !StateCheck("Anomen",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Anomen#1","LOCALS",0)~ 
THEN ~BANOME25~ EU#LenaBanter.Anomen#1
    @3969 DO ~SetGlobal("EU#LenaBanter.Anomen#1","LOCALS",1)~
    == ~BEU#LE25~   @3970
    == ~BANOME25~   @3971
    == ~BEU#LE25~   @3972
    == ~BANOME25~   @3973
    == ~BEU#LE25~   @3974
    =               @3975
EXIT

// --

CHAIN IF ~
    GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_7%) // TOB NPC banter
    InParty("EU#LENA")
    InParty("Anomen")
    See("Anomen")
    !StateCheck("Anomen",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Anomen#2","LOCALS",0)~ 
THEN ~BEU#LE25~ EU#LenaBanter.Anomen#2
    @3976 DO ~SetGlobal("EU#LenaBanter.Anomen#2","LOCALS",1)~
    == ~BANOME25~   @3977
    == ~BEU#LE25~   @3978
    == ~BANOME25~   @3979
    == ~BEU#LE25~   @3980
EXIT
