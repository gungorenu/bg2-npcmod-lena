BEGIN ~BEU#LENA~

/////////////////
//:.  Nalia  .://
/////////////////

CHAIN IF ~
    InParty("EU#LENA")
    InParty("Nalia")
    See("Nalia")
    !StateCheck("Nalia",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Nalia#1","LOCALS",0)~ 
THEN ~BEU#LENA~ EU#LenaBanter.Nalia#1
    @3601 DO ~SetGlobal("EU#LenaBanter.Nalia#1","LOCALS",1)~
    == ~BNALIA~     @3602
    == ~BEU#LENA~   @3603
    == ~BNALIA~     @3604
    =               @3605
    =               @3606
    == ~BEU#LENA~   @3607
    == ~BNALIA~     @3608
    == ~BEU#LENA~   @3609
EXIT

// --

CHAIN IF ~
    InParty("EU#LENA")
    InParty("Nalia")
    See("Nalia")
    !StateCheck("Nalia",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Nalia#2","LOCALS",0)~ 
THEN ~BEU#LENA~ EU#LenaBanter.Nalia#2
    @3610 DO ~SetGlobal("EU#LenaBanter.Nalia#2","LOCALS",1)~
    == ~BNALIA~     @3611
    =               @3612
    =               @3613
    == ~BEU#LENA~   @3614
    == ~BNALIA~     @3615
    == ~BEU#LENA~   @3616
    =               @3617
    == ~BNALIA~     @3618
    == ~BEU#LENA~   @3619
EXIT

//////////////////////
//:.  Haer'Dalis  .://
//////////////////////

CHAIN IF ~
    InParty("EU#LENA")
    InParty("HaerDalis")
    See("HaerDalis")
    !StateCheck("HaerDalis",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.HaerDalis#1","LOCALS",0)~ 
THEN ~BEU#LENA~ EU#LenaBanter.HaerDalis#1
    @3631 DO ~SetGlobal("EU#LenaBanter.HaerDalis#1","LOCALS",1)~
    == ~BHAERDA~    @3632
    == ~BEU#LENA~   @3633
    == ~BHAERDA~    @3634
    == ~BEU#LENA~   @3635
    == ~BHAERDA~    @3636
    =               @3637
    == ~BEU#LENA~   @3638
    == ~BHAERDA~    @3639
    == ~BEU#LENA~   @3640
    == ~BHAERDA~    @3641
EXIT

// --

CHAIN IF ~
    InParty("EU#LENA")
    InParty("HaerDalis")
    See("EU#LENA")
    !StateCheck("HaerDalis",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.HaerDalis#2","LOCALS",0)~ 
THEN ~BHAERDA~ EU#LenaBanter.HaerDalis#2
    @3642 DO ~SetGlobal("EU#LenaBanter.HaerDalis#2","LOCALS",1)~
    == ~BEU#LENA~   @3643
    == ~BHAERDA~    @3644
    == ~BEU#LENA~   @3645
    == ~BHAERDA~    @3646
    == ~BEU#LENA~   @3647
    == ~BHAERDA~    @3648
EXIT

/////////////////
//:.  Aerie  .://
/////////////////

CHAIN IF ~
    InParty("EU#LENA")
    InParty("Aerie")
    See("Aerie")
    !StateCheck("Aerie",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Aerie#1","LOCALS",0)~ 
THEN ~BEU#LENA~ EU#LenaBanter.Aerie#1
    @3659 DO ~SetGlobal("EU#LenaBanter.Aerie#1","LOCALS",1)~
    == ~BAERIE~     @3660
    == ~BEU#LENA~   @3661
    == ~BAERIE~     @3662
    == ~BEU#LENA~   @3663
    == ~BAERIE~     @3664
EXIT

// --

CHAIN IF ~
    InParty("EU#LENA")
    InParty("Aerie")
    See("Aerie")
    !StateCheck("Aerie",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Aerie#2","LOCALS",0)~ 
THEN ~BEU#LENA~ EU#LenaBanter.Aerie#2
    @3665 DO ~SetGlobal("EU#LenaBanter.Aerie#2","LOCALS",1)~
    == ~BAERIE~     @3666
    == ~BEU#LENA~   @3667
    == ~BAERIE~     @3668
    =               @3669
    =               @3670
    == ~BEU#LENA~   @3671
    == ~BAERIE~     @3672
    == ~BEU#LENA~   @3673
EXIT

/////////////////
//:.  Mazzy  .://
/////////////////

CHAIN IF ~
    InParty("EU#LENA")
    InParty("Mazzy")
    See("EU#LENA")
    !StateCheck("Mazzy",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Mazzy#1","LOCALS",0)~ 
THEN ~BMAZZY~ EU#LenaBanter.Mazzy#1
    @3682 DO ~SetGlobal("EU#LenaBanter.Mazzy#1","LOCALS",1)~
    == ~BEU#LENA~   @3683
    == ~BMAZZY~     @3684
    == ~BEU#LENA~   @3685
    == ~BMAZZY~     @3686
    == ~BEU#LENA~   @3687
EXIT

// --

CHAIN IF ~
    InParty("EU#LENA")
    InParty("Mazzy")
    See("Mazzy")
    !StateCheck("Mazzy",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Mazzy#2","LOCALS",0)~ 
THEN ~BEU#LENA~ EU#LenaBanter.Mazzy#2
    @3688 DO ~SetGlobal("EU#LenaBanter.Mazzy#2","LOCALS",1)~
    == ~BMAZZY~     @3689
    == ~BEU#LENA~   @3690
    == ~BMAZZY~     @3691
    == ~BEU#LENA~   @3692
    == ~BMAZZY~     @3693
    == ~BEU#LENA~   @3694
    == ~BMAZZY~     @3695
    == ~BEU#LENA~   @3696
EXIT

///////////////////
//:.  Jaheira  .://
///////////////////

CHAIN IF ~
    InParty("EU#LENA")
    InParty("Jaheira")
    See("Jaheira")
    !StateCheck("Jaheira",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Jaheira#1","LOCALS",0)~ 
THEN ~BEU#LENA~ EU#LenaBanter.Jaheira#1
    @3706 DO ~SetGlobal("EU#LenaBanter.Jaheira#1","LOCALS",1)~
    == ~BJAHEIR~    @3707
    == ~BEU#LENA~   @3708
    == ~BJAHEIR~    @3709
    == ~BEU#LENA~   @3710
    == ~BJAHEIR~    @3711
    == ~BEU#LENA~   @3712
EXIT

// --

CHAIN IF ~
    InParty("EU#LENA")
    InParty("Jaheira")
    See("EU#LENA")
    !StateCheck("Jaheira",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Jaheira#2","LOCALS",0)~ 
THEN ~BJAHEIR~ EU#LenaBanter.Jaheira#2
    @3713 DO ~SetGlobal("EU#LenaBanter.Jaheira#2","LOCALS",1)~
    == ~BEU#LENA~   @3714
    == ~BJAHEIR~    @3715
    == ~BEU#LENA~   @3716
    == ~BJAHEIR~    @3717
    == ~BEU#LENA~   @3718
    == ~BJAHEIR~    @3719
EXIT

///////////////////
//:.  Viconia  .://
///////////////////

CHAIN IF ~
    InParty("EU#LENA")
    InParty("Viconia")
    See("Viconia")
    !StateCheck("Viconia",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Viconia#1","LOCALS",0)~ 
THEN ~BEU#LENA~ EU#LenaBanter.Viconia#1
    @3746 DO ~SetGlobal("EU#LenaBanter.Viconia#1","LOCALS",1)~
    == ~BVICONI~    @3747
    == ~BEU#LENA~   @3748
    == ~BVICONI~    @3749
    == ~BEU#LENA~   @3750
    == ~BVICONI~    @3751
    =               @3752
    == ~BEU#LENA~   @3753
    == ~BVICONI~    @3754
EXIT

// --

CHAIN IF ~
    InParty("EU#LENA")
    InParty("Viconia")
    See("Viconia")
    !StateCheck("Viconia",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Viconia#2","LOCALS",0)~ 
THEN ~BEU#LENA~ EU#LenaBanter.Viconia#2
    @3755 DO ~SetGlobal("EU#LenaBanter.Viconia#2","LOCALS",1)~
    == ~BVICONI~    @3756
    == ~BEU#LENA~   @3757
    =               @3758
    == ~BVICONI~    @3759
    == ~BEU#LENA~   @3760
    == ~BVICONI~    @3761
EXIT

/////////////////
//:.  Imoen  .://
/////////////////

CHAIN IF ~
    InParty("EU#LENA")
    InParty("Imoen2")
    See("Imoen2")
    !StateCheck("Imoen2",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Imoen#1","LOCALS",0)~ 
THEN ~BEU#LENA~ EU#LenaBanter.Imoen#1
    @3770 DO ~SetGlobal("EU#LenaBanter.Imoen#1","LOCALS",1)~
    == ~BIMOEN2~    @3771
    == ~BEU#LENA~   @3772
    == ~BIMOEN2~    @3773
    =               @3774
    == ~BEU#LENA~   @3775
    == ~BIMOEN2~    @3776
    == ~BEU#LENA~   @3777
    == ~BIMOEN2~    @3778
EXIT

// --

CHAIN IF ~
    InParty("EU#LENA")
    InParty("Imoen2")
    See("Imoen2")
    !StateCheck("Imoen2",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Imoen#2","LOCALS",0)~ 
THEN ~BEU#LENA~ EU#LenaBanter.Imoen#2
    @3779 DO ~SetGlobal("EU#LenaBanter.Imoen#2","LOCALS",1)~
    == ~BIMOEN2~    @3780
    == ~BEU#LENA~   @3781
    == ~BIMOEN2~    @3782
    == ~BEU#LENA~   @3783
EXIT

/////////////////
//:.  Minsc  .://
/////////////////

CHAIN IF ~
    InParty("EU#LENA")
    InParty("Minsc")
    See("EU#LENA")
    !StateCheck("Minsc",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Minsc#1","LOCALS",0)~ 
THEN ~BMINSC~ EU#LenaBanter.Minsc#1
    @3794 DO ~SetGlobal("EU#LenaBanter.Minsc#1","LOCALS",1)~
    == ~BEU#LENA~   @3795
    == ~BMINSC~     @3796
    == ~BEU#LENA~   @3797
    == ~BMINSC~     @3798
    == ~BEU#LENA~   @3799
    == ~BMINSC~     @3800
    == ~BEU#LENA~   @3801
EXIT

// --

CHAIN IF ~
    InParty("EU#LENA")
    InParty("Minsc")
    See("EU#LENA")
    !StateCheck("Minsc",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Minsc#2","LOCALS",0)~ 
THEN ~BMINSC~ EU#LenaBanter.Minsc#2
    @3802 DO ~SetGlobal("EU#LenaBanter.Minsc#2","LOCALS",1)~
    == ~BEU#LENA~   @3803
    == ~BMINSC~     @3804
    == ~BEU#LENA~   @3805
    == ~BMINSC~     @3806
    == ~BEU#LENA~   @3807
EXIT

// --

CHAIN IF ~
    InParty("EU#LENA")
    InParty("Minsc")
    See("Minsc")
    !StateCheck("Minsc",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Minsc#3","LOCALS",0)~ 
THEN ~BEU#LENA~ EU#LenaBanter.Minsc#3
    @3808 DO ~SetGlobal("EU#LenaBanter.Minsc#3","LOCALS",1)~
    == ~BMINSC~     @3809
    == ~BEU#LENA~   @3810
    == ~BMINSC~     @3811
    =               @3812
    == ~BEU#LENA~   @3813
    == ~BMINSC~     @3814
    == ~BEU#LENA~   @3815
    == ~BMINSC~     @3816
    == ~BEU#LENA~   @3817
    == ~BMINSC~     @3818
    =               @3819
    == ~BEU#LENA~   @3820
    == ~BMINSC~     @3821
EXIT

///////////////////
//:.  Valygar  .://
///////////////////

CHAIN IF ~
    InParty("EU#LENA")
    InParty("Valygar")
    See("EU#LENA")
    !StateCheck("Valygar",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Valygar#1","LOCALS",0)~ 
THEN ~BVALYGA~ EU#LenaBanter.Valygar#1
    @3830 DO ~SetGlobal("EU#LenaBanter.Valygar#1","LOCALS",1)~
    == ~BEU#LENA~   @3831
    == ~BVALYGA~    @3832
    == ~BEU#LENA~   @3833
    == ~BVALYGA~    @3834
    == ~BEU#LENA~   @3835
    == ~BVALYGA~    @3836
    == ~BEU#LENA~   @3837
EXIT

// --

CHAIN IF ~
    InParty("EU#LENA")
    InParty("Valygar")
    See("EU#LENA")
    !StateCheck("Valygar",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Valygar#2","LOCALS",0)~ 
THEN ~BVALYGA~ EU#LenaBanter.Valygar#2
    @3838 DO ~SetGlobal("EU#LenaBanter.Valygar#2","LOCALS",1)~
    == ~BEU#LENA~   @3839
    == ~BVALYGA~    @3840
    == ~BEU#LENA~   @3841
    == ~BVALYGA~    @3842
    == ~BEU#LENA~   @3843
EXIT

/////////////////
//:.  Cernd  .://
/////////////////

CHAIN IF ~
    InParty("EU#LENA")
    InParty("Cernd")
    See("Cernd")
    !StateCheck("Cernd",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Cernd#1","LOCALS",0)~ 
THEN ~BEU#LENA~ EU#LenaBanter.Cernd#1
    @3851 DO ~SetGlobal("EU#LenaBanter.Cernd#1","LOCALS",1)~
    == ~BCERND~     @3852
    == ~BEU#LENA~   @3853
    =               @3854
    == ~BCERND~     @3855
    == ~BEU#LENA~   @3856
    == ~BCERND~     @3857
EXIT

// --

CHAIN IF ~
    InParty("EU#LENA")
    InParty("Cernd")
    See("EU#LENA")
    !StateCheck("Cernd",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Cernd#2","LOCALS",0)~ 
THEN ~BCERND~ EU#LenaBanter.Cernd#2
    @3858 DO ~SetGlobal("EU#LenaBanter.Cernd#2","LOCALS",1)~
    == ~BEU#LENA~   @3859
    == ~BCERND~     @3860
    == ~BEU#LENA~   @3861
    == ~BCERND~     @3862
    == ~BEU#LENA~   @3863
    == ~BCERND~     @3864
    == ~BEU#LENA~   @3865
    == ~BCERND~     @3866
    == ~BEU#LENA~   @3867
    == ~BCERND~     @3868
EXIT

//////////////////
//:.  Korgan  .://
//////////////////

CHAIN IF ~
    InParty("EU#LENA")
    InParty("Korgan")
    See("EU#LENA")
    !StateCheck("Korgan",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Korgan#1","LOCALS",0)~ 
THEN ~BKORGAN~ EU#LenaBanter.Korgan#1
    @3880 DO ~SetGlobal("EU#LenaBanter.Korgan#1","LOCALS",1)~
    == ~BEU#LENA~   @3881 
    == ~BKORGAN~    @3882
    == ~BEU#LENA~   @3883
    == ~BKORGAN~    @3884
    == ~BEU#LENA~   @3885
    == ~BKORGAN~    @3886
    == ~BEU#LENA~   @3887
    == ~BKORGAN~    @3888
EXIT

// --

CHAIN IF ~
    InParty("EU#LENA")
    InParty("Korgan")
    See("EU#LENA")
    !StateCheck("Korgan",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Korgan#2","LOCALS",0)~ 
THEN ~BKORGAN~ EU#LenaBanter.Korgan#2
    @3889 DO ~SetGlobal("EU#LenaBanter.Korgan#2","LOCALS",1)~
    == ~BEU#LENA~   @3890 
    == ~BKORGAN~    @3891
    == ~BEU#LENA~   @3892
    == ~BKORGAN~    @3893
    == ~BEU#LENA~   @3894
    == ~BKORGAN~    @3895
    =               @3896
    == ~BEU#LENA~   @3897
EXIT

///////////////////
//:.  Yoshimo  .://
///////////////////

CHAIN IF ~
    InParty("EU#LENA")
    InParty("Yoshimo")
    See("Yoshimo")
    !StateCheck("Yoshimo",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Yoshimo#1","LOCALS",0)~ 
THEN ~BEU#LENA~ EU#LenaBanter.Yoshimo#1
    @3904 DO ~SetGlobal("EU#LenaBanter.Yoshimo#1","LOCALS",1)~
    == ~BYOSHIM~    @3905
    == ~BEU#LENA~   @3906
    == ~BYOSHIM~    @3907
    == ~BEU#LENA~   @3908
    == ~BYOSHIM~    @3909
EXIT

// --

CHAIN IF ~
    InParty("EU#LENA")
    InParty("Yoshimo")
    See("EU#LENA")
    !StateCheck("Yoshimo",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Yoshimo#2","LOCALS",0)~ 
THEN ~BYOSHIM~ EU#LenaBanter.Yoshimo#2
    @3910 DO ~SetGlobal("EU#LenaBanter.Yoshimo#2","LOCALS",1)~
    == ~BEU#LENA~   @3911 
    == ~BYOSHIM~    @3912
    == ~BEU#LENA~   @3913
    == ~BYOSHIM~    @3914
    == ~BEU#LENA~   @3915
    == ~BYOSHIM~    @3916
    == ~BEU#LENA~   @3917
    == ~BYOSHIM~    @3918
EXIT

/////////////////
//:.  Edwin  .://
/////////////////

CHAIN IF ~
    InParty("EU#LENA")
    InParty("Edwin")
    See("EU#LENA")
    !StateCheck("Edwin",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Edwin#1","LOCALS",0)~ 
THEN ~BEDWIN~ EU#LenaBanter.Edwin#1
    @3919 DO ~SetGlobal("EU#LenaBanter.Edwin#1","LOCALS",1)~
    == ~BEU#LENA~   @3920 
    == ~BEDWIN~     @3921
    == ~BEU#LENA~   @3922
    == ~BEDWIN~     @3923
    == ~BEU#LENA~   @3924
    == ~BEDWIN~     @3925
    == ~BEU#LENA~   @3926
EXIT

// --

CHAIN IF ~
    InParty("EU#LENA")
    InParty("Edwin")
    See("EU#LENA")
    !StateCheck("Edwin",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Edwin#2","LOCALS",0)~ 
THEN ~BEDWIN~ EU#LenaBanter.Edwin#2
    @3927 DO ~SetGlobal("EU#LenaBanter.Edwin#2","LOCALS",1)~
    == ~BEU#LENA~   @3928 
    == ~BEDWIN~     @3929
    == ~BEU#LENA~   @3930
    == ~BEDWIN~     @3931
    == ~BEU#LENA~   @3932
EXIT

///////////////
//:.  Jan  .://
///////////////

CHAIN IF ~
    InParty("EU#LENA")
    InParty("Jan")
    See("EU#LENA")
    !StateCheck("Jan",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Jan#1","LOCALS",0)~ 
THEN ~BJAN~ EU#LenaBanter.Jan#1
    @3942 DO ~SetGlobal("EU#LenaBanter.Jan#1","LOCALS",1)~
    == ~BEU#LENA~   @3943 
    == ~BJAN~       @3944
    =               @3945
    == ~BEU#LENA~   @3946
EXIT

// --

CHAIN IF ~
    InParty("EU#LENA")
    InParty("Jan")
    See("Jan")
    !StateCheck("Jan",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Jan#2","LOCALS",0)~ 
THEN ~BEU#LENA~ EU#LenaBanter.Jan#2
    @3947 DO ~SetGlobal("EU#LenaBanter.Jan#2","LOCALS",1)~
    == ~BJAN~       @3948
    == ~BEU#LENA~   @3949
    == ~BJAN~       @3950
    =               @3951
    == ~BEU#LENA~   @3952
EXIT

//////////////////
//:.  Anomen  .://
//////////////////

CHAIN IF ~
    InParty("EU#LENA")
    InParty("Anomen")
    See("EU#LENA")
    !StateCheck("Anomen",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Anomen#1","LOCALS",0)~ 
THEN ~BANOMEN~ EU#LenaBanter.Anomen#1
    @3969 DO ~SetGlobal("EU#LenaBanter.Anomen#1","LOCALS",1)~
    == ~BEU#LENA~   @3970 
    == ~BANOMEN~    @3971
    == ~BEU#LENA~   @3972
    == ~BANOMEN~    @3973
    == ~BEU#LENA~   @3974
    =               @3975
EXIT

// --

CHAIN IF ~
    InParty("EU#LENA")
    InParty("Anomen")
    See("Anomen")
    !StateCheck("Anomen",CD_STATE_NOTVALID)
    !StateCheck("EU#LENA",CD_STATE_NOTVALID)
    CombatCounter(0)
    Global("EU#LenaBanter.Anomen#2","LOCALS",0)~ 
THEN ~BEU#LENA~ EU#LenaBanter.Anomen#2
    @3976 DO ~SetGlobal("EU#LenaBanter.Anomen#2","LOCALS",1)~
    == ~BANOMEN~    @3977
    == ~BEU#LENA~   @3978
    == ~BANOMEN~    @3979
    == ~BEU#LENA~   @3980
EXIT
