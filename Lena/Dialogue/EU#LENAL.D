BEGIN ~EU#LENAJ~

///////////////////////////////////////////
//:.  Lovetalk: Fate & Prophecy (# 1)  .://
///////////////////////////////////////////

IF ~Global("EU#LenaLoveTalk","LOCALS",2)~ BEGIN EU#LenaTalk.LoveTalk01
    SAY @801
    = @802
    IF ~~ THEN REPLY @803 GOTO EU#LenaTalk.LoveTalk01.1
    IF ~~ THEN REPLY @842 GOTO EU#LenaTalk.LoveTalk01.2
    IF ~~ THEN REPLY @844 GOTO EU#LenaTalk.LoveTalk01.3
    IF ~~ THEN REPLY @848 GOTO EU#LenaTalk.LoveTalk01.4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk01.4
    SAY @849
    = @850
    IF ~~ DO ~SetGlobal("EU#LenaKillRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk01.1
    SAY @804
    = @805
    IF ~~ THEN REPLY @806 GOTO EU#LenaTalk.LoveTalk01#6
    IF ~~ THEN REPLY @819 GOTO EU#LenaTalk.LoveTalk01#7
    IF ~~ THEN REPLY @837 GOTO EU#LenaTalk.LoveTalk01#5
    IF ~~ THEN REPLY @838 DO ~IncrementGlobal("EU#LenaLike","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk01#9
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk01#1
    SAY @818
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk01#2
    SAY @810
    = @811
    IF ~~ GOTO EU#LenaTalk.LoveTalk01#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk01#3
    SAY @813
    IF ~~ GOTO EU#LenaTalk.LoveTalk01#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk01#4
    SAY @815
    = @816
    = @817
    IF ~~ GOTO EU#LenaTalk.LoveTalk01#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk01#7
    SAY @820
    IF ~~ GOTO EU#LenaTalk.LoveTalk01#5
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk01#6
    SAY @807
    = @808
    IF ~~ THEN REPLY @809 GOTO EU#LenaTalk.LoveTalk01#2
    IF ~~ THEN REPLY @812 GOTO EU#LenaTalk.LoveTalk01#3
    IF ~~ THEN REPLY @814 GOTO EU#LenaTalk.LoveTalk01#4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk01#5
    SAY @821
    IF ~~ THEN REPLY @822 GOTO EU#LenaTalk.LoveTalk01#5.1
    IF ~~ THEN REPLY @827 GOTO EU#LenaTalk.LoveTalk01#5.2
    IF ~~ THEN REPLY @832 GOTO EU#LenaTalk.LoveTalk01#5.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk01#5.1
    SAY @823
    IF ~~ THEN REPLY @824 GOTO EU#LenaTalk.LoveTalk01#5.1.1
    IF ~~ THEN REPLY @812 GOTO EU#LenaTalk.LoveTalk01#3
    IF ~~ THEN REPLY @814 GOTO EU#LenaTalk.LoveTalk01#4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk01#5.1.1
    SAY @825
    = @826
    IF ~~ GOTO EU#LenaTalk.LoveTalk01#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk01#5.2
    SAY @828
    IF ~~ THEN REPLY @829 GOTO EU#LenaTalk.LoveTalk01#5.2.1
    IF ~~ THEN REPLY @812 GOTO EU#LenaTalk.LoveTalk01#3
    IF ~~ THEN REPLY @814 GOTO EU#LenaTalk.LoveTalk01#4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk01#5.2.1
    SAY @830
    = @831
    IF ~~ GOTO EU#LenaTalk.LoveTalk01#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk01#5.3
    SAY @833
    = @834
    IF ~~ THEN REPLY @835 GOTO EU#LenaTalk.LoveTalk01#5.3.1
    IF ~~ THEN REPLY @812 GOTO EU#LenaTalk.LoveTalk01#3
    IF ~~ THEN REPLY @814 GOTO EU#LenaTalk.LoveTalk01#4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk01#5.3.1
    SAY @836
    IF ~~ GOTO EU#LenaTalk.LoveTalk01#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk01#9
    SAY @839
    IF ~~ THEN REPLY @840 GOTO EU#LenaTalk.LoveTalk01#9.1
    IF ~~ THEN REPLY @812 GOTO EU#LenaTalk.LoveTalk01#3
    IF ~~ THEN REPLY @814 GOTO EU#LenaTalk.LoveTalk01#4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk01#9.1
    SAY @841
    IF ~~ GOTO EU#LenaTalk.LoveTalk01#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk01.2
    SAY @843
    IF ~~ THEN REPLY @806 GOTO EU#LenaTalk.LoveTalk01#6
    IF ~~ THEN REPLY @819 GOTO EU#LenaTalk.LoveTalk01#7
    IF ~~ THEN REPLY @837 GOTO EU#LenaTalk.LoveTalk01#5
    IF ~~ THEN REPLY @838 DO ~IncrementGlobal("EU#LenaLike","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk01#9
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk01.3
    SAY @845
    = @846
    = @847
    IF ~~ THEN REPLY @806 GOTO EU#LenaTalk.LoveTalk01#6
    IF ~~ THEN REPLY @819 GOTO EU#LenaTalk.LoveTalk01#7
    IF ~~ THEN REPLY @837 GOTO EU#LenaTalk.LoveTalk01#5
    IF ~~ THEN REPLY @838 DO ~IncrementGlobal("EU#LenaLike","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk01#9
END

//////////////////////////////////////////////
//:.  Lovetalk: Good Leader & Past (# 2)  .://
//////////////////////////////////////////////

IF ~Global("EU#LenaLoveTalk","LOCALS",4)~ BEGIN EU#LenaTalk.LoveTalk02
    SAY @901
    = @902
    IF ~~ THEN REPLY @903 GOTO EU#LenaTalk.LoveTalk02.1
    IF ~~ THEN REPLY @905 GOTO EU#LenaTalk.LoveTalk02.2
    IF ~~ THEN REPLY @970 GOTO EU#LenaTalk.LoveTalk02.3
    IF ~~ THEN REPLY @973 DO ~IncrementGlobal("EU#LenaLike","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk02.4
    IF ~~ THEN REPLY @975 GOTO EU#LenaTalk.LoveTalk02.5
    IF ~~ THEN REPLY @979 GOTO EU#LenaTalk.LoveTalk02#9
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk02.1
    SAY @904
    IF ~~ GOTO EU#LenaTalk.LoveTalk02#2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk02.2
    SAY @906
    IF ~~ GOTO EU#LenaTalk.LoveTalk02#2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk02.3
    SAY @971
    = @972
    IF ~~ GOTO EU#LenaTalk.LoveTalk02#2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk02.4
    SAY @974
    IF ~~ GOTO EU#LenaTalk.LoveTalk02#2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk02.5
    SAY @976
    = @977
    = @978
    IF ~~ GOTO EU#LenaTalk.LoveTalk02#2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk02.2.4.3.4.3.1
    SAY @959
    IF ~~ GOTO EU#LenaTalk.LoveTalk02#8
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk02.2.4.3.4.3.2
    SAY @961
    IF ~~ GOTO EU#LenaTalk.LoveTalk02#8
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk02.2.4.3.4.3.3
    SAY @963
    IF ~~ GOTO EU#LenaTalk.LoveTalk02#8
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk02.2.4.3.4.3.4
    SAY @965
    IF ~~ GOTO EU#LenaTalk.LoveTalk02#8
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk02.2.4.3.4.3.5
    SAY @967
    IF ~~ GOTO EU#LenaTalk.LoveTalk02#8
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk02.2.4
    SAY @920
    IF ~~ GOTO EU#LenaTalk.LoveTalk02#3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk02.2.4.3.4.1
    SAY @947
    IF ~~ GOTO EU#LenaTalk.LoveTalk02#7
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk02.2.4.3.4.2
    SAY @949
    IF ~~ GOTO EU#LenaTalk.LoveTalk02#7
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk02#1
    SAY @932
    IF ~~ GOTO EU#LenaTalk.LoveTalk02#6
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk02#2
    SAY @907
    IF ~~ GOTO EU#LenaTalk.LoveTalk02#2.1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk02#2.1
    SAY @983
    IF ~~ THEN REPLY @913 GOTO EU#LenaTalk.LoveTalk02#3
    IF ~~ THEN REPLY @914 GOTO EU#LenaTalk.LoveTalk02#4
    IF ~~ THEN REPLY @918 GOTO EU#LenaTalk.LoveTalk02#4
    IF ~~ THEN REPLY @919 GOTO EU#LenaTalk.LoveTalk02.2.4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk02#3
    SAY @921
    IF ~~ THEN REPLY @922 GOTO EU#LenaTalk.LoveTalk02#9
    IF ~~ THEN REPLY @923 GOTO EU#LenaTalk.LoveTalk02#5
    IF ~~ THEN REPLY @924 GOTO EU#LenaTalk.LoveTalk02#5
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk02#4
    SAY @915
    = @916
    = @917
    IF ~~ GOTO EU#LenaTalk.LoveTalk02#3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk02#5
    SAY @925
    = @926
    = @927
    = @928
    = @929
    = @930
    IF ~~ THEN REPLY @931 GOTO EU#LenaTalk.LoveTalk02#1
    IF ~~ THEN REPLY @933 GOTO EU#LenaTalk.LoveTalk02#1
    IF ~~ THEN REPLY @935 GOTO EU#LenaTalk.LoveTalk02#1
    IF ~~ THEN REPLY @937 GOTO EU#LenaTalk.LoveTalk02#6
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk02#6
    SAY @938
    = @939
    = @940
    = @941
    = @942
    = @943
    = @944
    = @945
    IF ~~ THEN REPLY @946 GOTO EU#LenaTalk.LoveTalk02.2.4.3.4.1
    IF ~~ THEN REPLY @948 GOTO EU#LenaTalk.LoveTalk02.2.4.3.4.2
    IF ~~ THEN REPLY @950 GOTO EU#LenaTalk.LoveTalk02#7
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk02#7
    SAY @951
    = @952
    = @953
    = @954
    = @955
    = @956
    = @957
    IF ~~ THEN REPLY @958 GOTO EU#LenaTalk.LoveTalk02.2.4.3.4.3.1
    IF ~~ THEN REPLY @960 GOTO EU#LenaTalk.LoveTalk02.2.4.3.4.3.2
    IF ~~ THEN REPLY @962 GOTO EU#LenaTalk.LoveTalk02.2.4.3.4.3.3
    IF ~~ THEN REPLY @964 GOTO EU#LenaTalk.LoveTalk02.2.4.3.4.3.4
    IF ~~ THEN REPLY @966 DO ~IncrementGlobal("EU#LenaLike","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk02.2.4.3.4.3.5
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk02#8
    SAY @968
    = @969
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk02#9
    SAY @980
    = @981
    = @982
    IF ~~ DO ~SetGlobal("EU#LenaKillRomance","LOCALS",1)~ EXIT
END

///////////////////////////////////////
//:.  Lovetalk: Empty Lives (# 3)  .://
///////////////////////////////////////

IF ~Global("EU#LenaLoveTalk","LOCALS",6)~ BEGIN EU#LenaTalk.LoveTalk03
    SAY @1001
    = @1002
    = @1003
    IF ~~ THEN REPLY @1004 GOTO EU#LenaTalk.LoveTalk03.1
    IF ~~ THEN REPLY @1006 GOTO EU#LenaTalk.LoveTalk03.2
    IF ~~ THEN REPLY @1032 GOTO EU#LenaTalk.LoveTalk03.3
    IF ~~ THEN REPLY @1035 GOTO EU#LenaTalk.LoveTalk03.4
    IF ~~ THEN REPLY @1038 DO ~IncrementGlobal("EU#LenaLike","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk03.5
    IF ~~ THEN REPLY @1041 GOTO EU#LenaTalk.LoveTalk03.6
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk03.1
    SAY @1005
    IF ~~ GOTO EU#LenaTalk.LoveTalk03#2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk03.2
    SAY @1007
    = @1008
    IF ~~ GOTO EU#LenaTalk.LoveTalk03#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk03.3
    SAY @1033
    = @1034
    IF ~~ GOTO EU#LenaTalk.LoveTalk03#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk03.4
    SAY @1036
    = @1037
    IF ~~ GOTO EU#LenaTalk.LoveTalk03#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk03.5
    SAY @1039
    IF ~~ GOTO EU#LenaTalk.LoveTalk03#2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk03.6
    SAY @1042
    IF ~~ DO ~SetGlobal("EU#LenaKillRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk03.2.1
    SAY @1011
    = @1012
    IF ~~ GOTO EU#LenaTalk.LoveTalk03#3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk03.2.2
    SAY @1014
    = @1015
    IF ~~ GOTO EU#LenaTalk.LoveTalk03#3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk03.2.3
    SAY @1017
    = @1018
    IF ~~ GOTO EU#LenaTalk.LoveTalk03#3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk03.2.4
    SAY @1020
    IF ~~ GOTO EU#LenaTalk.LoveTalk03#3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk03.2.4.1
    SAY @1023
    IF ~~ GOTO EU#LenaTalk.LoveTalk03#4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk03.2.4.2
    SAY @1027
    IF ~~ GOTO EU#LenaTalk.LoveTalk03#4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk03.2.4.3
    SAY @1029
    IF ~~ GOTO EU#LenaTalk.LoveTalk03#4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk03.2.4.4
    SAY @1031
    IF ~~ GOTO EU#LenaTalk.LoveTalk03#4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk03#1
    SAY @1009
    IF ~~ THEN REPLY @1010 GOTO EU#LenaTalk.LoveTalk03.2.1
    IF ~~ THEN REPLY @1013 GOTO EU#LenaTalk.LoveTalk03.2.2
    IF ~~ THEN REPLY @1016 GOTO EU#LenaTalk.LoveTalk03.2.3
    IF ~~ THEN REPLY @1019 DO ~IncrementGlobal("EU#LenaLike","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk03.2.4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk03#2
    SAY @1040
    IF ~~ GOTO EU#LenaTalk.LoveTalk03#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk03#3
    SAY @1021
    IF ~~ THEN REPLY @1022 GOTO EU#LenaTalk.LoveTalk03.2.4.1
    IF ~~ THEN REPLY @1026 GOTO EU#LenaTalk.LoveTalk03.2.4.2
    IF ~~ THEN REPLY @1028 GOTO EU#LenaTalk.LoveTalk03.2.4.3
    IF ~~ THEN REPLY @1030 GOTO EU#LenaTalk.LoveTalk03.2.4.4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk03#4
    SAY @1024
    = @1025
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

/////////////////////////////////////////////
//:.  Lovetalk: Imoen real sister (# 4)  .://
/////////////////////////////////////////////

IF ~Global("EU#LenaLoveTalk","LOCALS",8)~ BEGIN EU#LenaTalk.LoveTalk04
    SAY @1101
    IF ~Global("EU#LenaKnowsImoenBhaalspawn","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk04-1
    IF ~!Global("EU#LenaKnowsImoenBhaalspawn","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk04-2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk04-1
    SAY @1102
    IF ~~ GOTO EU#LenaTalk.LoveTalk04-3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk04-2
    SAY @1103
    IF ~~ GOTO EU#LenaTalk.LoveTalk04-3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk04-3
    SAY @1104
    IF ~~ THEN REPLY @1105 GOTO EU#LenaTalk.LoveTalk04.1
    IF ~~ THEN REPLY @1108 GOTO EU#LenaTalk.LoveTalk04.2
    IF ~~ THEN REPLY @1144 GOTO EU#LenaTalk.LoveTalk04#4
    IF ~~ THEN REPLY @1145 GOTO EU#LenaTalk.LoveTalk04#4
    IF ~~ THEN REPLY @1171 GOTO EU#LenaTalk.LoveTalk04.5
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk04.5
    SAY @1172
    = @1173
    IF ~~ DO ~SetGlobal("EU#LenaKillRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk04.1
    SAY @1106
    = @1107
    IF ~~ GOTO EU#LenaTalk.LoveTalk04#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk04.2
    SAY @1109
    = @1110
    IF ~~ GOTO EU#LenaTalk.LoveTalk04#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk04.2.1
    SAY @1114
    IF ~~ THEN REPLY @1115 GOTO EU#LenaTalk.LoveTalk04.2.1.1
    IF ~~ THEN REPLY @1118 GOTO EU#LenaTalk.LoveTalk04.2.1.2
    IF ~~ THEN REPLY @1121 GOTO EU#LenaTalk.LoveTalk04#3
    IF ~~ THEN REPLY @1156 GOTO EU#LenaTalk.LoveTalk04#6
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk04.2.1.1
    SAY @1116
    = @1117
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk04.2.1.2
    SAY @1119
    = @1120
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk04.2.2
    SAY @1126
    = @1127
    IF ~~ THEN REPLY @1128 GOTO EU#LenaTalk.LoveTalk04.2.2.1
    IF ~~ THEN REPLY @1131 GOTO EU#LenaTalk.LoveTalk04.2.2.2
    IF ~~ THEN REPLY @1134 GOTO EU#LenaTalk.LoveTalk04.2.2.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk04.2.2.1
    SAY @1129
    = @1130
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk04.2.2.2
    SAY @1132
    = @1133
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk04.2.2.3
    SAY @1135
    = @1136
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk04.2.3
    SAY @1138
    IF ~~ THEN REPLY @1139 GOTO EU#LenaTalk.LoveTalk04#2
    IF ~~ THEN REPLY @1142 GOTO EU#LenaTalk.LoveTalk04#2
    IF ~~ THEN REPLY @1143 GOTO EU#LenaTalk.LoveTalk04#2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk04.4.1
    SAY @1148
    = @1149
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk04.4.2
    SAY @1151
    IF ~~ THEN REPLY @1152 GOTO EU#LenaTalk.LoveTalk04#6
    IF ~~ THEN REPLY @1153 GOTO EU#LenaTalk.LoveTalk04.4.2.2
    IF ~~ THEN REPLY @1156 GOTO EU#LenaTalk.LoveTalk04#6
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk04.4.2.2
    SAY @1154
    = @1155
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk04.4.3
    SAY @1160
    = @1161
    IF ~~ THEN REPLY @1162 GOTO EU#LenaTalk.LoveTalk04.4.3.1
    IF ~~ THEN REPLY @1165 GOTO EU#LenaTalk.LoveTalk04.4.3.2
    IF ~~ THEN REPLY @1168 GOTO EU#LenaTalk.LoveTalk04.4.3.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk04.4.3.1
    SAY @1163
    = @1164
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk04.4.3.2
    SAY @1166
    = @1167
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk04.4.3.3
    SAY @1169
    = @1170
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk04#1
    SAY @1111
    = @1112
    IF ~~ THEN REPLY @1113 GOTO EU#LenaTalk.LoveTalk04.2.1
    IF ~~ THEN REPLY @1125 GOTO EU#LenaTalk.LoveTalk04.2.2
    IF ~~ THEN REPLY @1137 DO ~IncrementGlobal("EU#LenaLike","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk04.2.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk04#2
    SAY @1140
    = @1141
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk04#3
    SAY @1122
    = @1123
    = @1124
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk04#4
    SAY @1146
    IF ~~ THEN REPLY @1147 GOTO EU#LenaTalk.LoveTalk04.4.1
    IF ~~ THEN REPLY @1150 GOTO EU#LenaTalk.LoveTalk04.4.2
    IF ~~ THEN REPLY @1159 GOTO EU#LenaTalk.LoveTalk04.4.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk04#6
    SAY @1157
    = @1158
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

//////////////////////////////////////////
//:.  Lovetalk: Want to be God (# 5)  .://
//////////////////////////////////////////

IF ~Global("EU#LenaLoveTalk","LOCALS",10)~ BEGIN EU#LenaTalk.LoveTalk05
    SAY @1201
    = @1202
    = @1203
    IF ~~ THEN REPLY @1204 GOTO EU#LenaTalk.LoveTalk05.1
    IF ~~ THEN REPLY @1240 GOTO EU#LenaTalk.LoveTalk05.2
    IF ~~ THEN REPLY @1242 GOTO EU#LenaTalk.LoveTalk05.3
    IF ~~ THEN REPLY @1244 GOTO EU#LenaTalk.LoveTalk05.4
    //: became meaningless
//    IF ~~ THEN REPLY @1246 DO ~IncrementGlobal("EU#LenaLike","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk05.5
    IF ~~ THEN REPLY @1248 GOTO EU#LenaTalk.LoveTalk05.6
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk05.6
    SAY @1249
    IF ~~ DO ~SetGlobal("EU#LenaKillRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk05.2
    SAY @1241
    IF ~~ GOTO EU#LenaTalk.LoveTalk05#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk05.3
    SAY @1243
    IF ~~ GOTO EU#LenaTalk.LoveTalk05#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk05.4
    SAY @1245
    IF ~~ GOTO EU#LenaTalk.LoveTalk05#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk05.5
    SAY @1247
    IF ~~ GOTO EU#LenaTalk.LoveTalk05#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk05.1.1
    SAY @1208
    IF ~~ GOTO EU#LenaTalk.LoveTalk05#2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk05.1
    SAY @1205
    IF ~~ GOTO EU#LenaTalk.LoveTalk05#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk05.1.2
    SAY @1230
    = @1231
    = @1232
    = @1233
    IF ~~ GOTO EU#LenaTalk.LoveTalk05#2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk05.1.3
    SAY @1235
    = @1236
    = @1237
    = @1238
    = @1239
    IF ~~ GOTO EU#LenaTalk.LoveTalk05#2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk05.1.1.1
    SAY @1211
    IF ~~ GOTO EU#LenaTalk.LoveTalk05#4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk05.1.1.2
    SAY @1213
    = @1214
    IF ~~ GOTO EU#LenaTalk.LoveTalk05#4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk05.1.1.4
    SAY @1227
    IF ~~ GOTO EU#LenaTalk.LoveTalk05#4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk05.1.1.3
    SAY @1216
    = @1217
    IF ~~ THEN REPLY @1218 GOTO EU#LenaTalk.LoveTalk05.1.1.3.1
    IF ~~ THEN REPLY @1221 GOTO EU#LenaTalk.LoveTalk05.1.1.3.2
    IF ~~ THEN REPLY @1223 GOTO EU#LenaTalk.LoveTalk05.1.1.3.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk05.1.1.3.1
    SAY @1219
    IF ~~ GOTO EU#LenaTalk.LoveTalk05#3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk05.1.1.3.2
    SAY @1222
    IF ~~ GOTO EU#LenaTalk.LoveTalk05#3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk05.1.1.3.3
    SAY @1224
    = @1225
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk05#1
    SAY @1206
    IF ~~ THEN REPLY @1207 GOTO EU#LenaTalk.LoveTalk05.1.1
    IF ~~ THEN REPLY @1229 GOTO EU#LenaTalk.LoveTalk05.1.2
    IF ~~ THEN REPLY @1234 GOTO EU#LenaTalk.LoveTalk05.1.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk05#2
    SAY @1209
    IF ~~ THEN REPLY @1210 GOTO EU#LenaTalk.LoveTalk05.1.1.1
    IF ~~ THEN REPLY @1212 GOTO EU#LenaTalk.LoveTalk05.1.1.2
    IF ~~ THEN REPLY @1215 GOTO EU#LenaTalk.LoveTalk05.1.1.3
    IF ~~ THEN REPLY @1226 DO ~IncrementGlobal("EU#LenaLike","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk05.1.1.4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk05#3
    SAY @1220
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk05#4
    SAY @1228
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

//////////////////////////////////////
//:.  Lovetalk: Profession (# 6)  .://
//////////////////////////////////////

IF ~Global("EU#LenaLoveTalk","LOCALS",12)~ BEGIN EU#LenaTalk.LoveTalk06
    SAY @1301
    IF ~~ THEN REPLY @1302 GOTO EU#LenaTalk.LoveTalk06.1
    IF ~~ THEN REPLY @1456 GOTO EU#LenaTalk.LoveTalk06.2
    IF ~~ THEN REPLY @1459 GOTO EU#LenaTalk.LoveTalk06.3
    IF ~~ THEN REPLY @1461 GOTO EU#LenaTalk.LoveTalk06.4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06.1
    SAY @1303
    IF ~~ THEN REPLY @1304 GOTO EU#LenaTalk.LoveTalk06#1
    IF ~~ THEN REPLY @1344 DO ~SetGlobal("EU#LenaPlayerFarmer","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk06#2
    IF ~OR(2) 
        Class(Player1,FIGHTER_ALL)
        Class(Player1,RANGER_ALL)~ THEN REPLY @1370 DO ~SetGlobal("EU#LenaPlayerSoldier","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk06#3-1
    IF ~!Class(Player1,FIGHTER_ALL)
        !Class(Player1,RANGER_ALL)~ THEN REPLY @1370 DO ~SetGlobal("EU#LenaPlayerSoldier","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk06#3-2
    IF ~~ THEN REPLY @1400 DO ~SetGlobal("EU#LenaPlayerSailor","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk06#4
    IF ~~ THEN REPLY @1434 DO ~SetGlobal("EU#LenaPlayerCook","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk06#5
END


IF ~~ BEGIN EU#LenaTalk.LoveTalk06.2
    SAY @1457
    = @1458
    IF ~~ THEN REPLY @1304 GOTO EU#LenaTalk.LoveTalk06#1
    IF ~~ THEN REPLY @1344 DO ~SetGlobal("EU#LenaPlayerFarmer","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk06#2
    IF ~OR(2) 
        Class(Player1,FIGHTER_ALL)
        Class(Player1,RANGER_ALL)~ THEN REPLY @1370 DO ~SetGlobal("EU#LenaPlayerSoldier","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk06#3-1
    IF ~!Class(Player1,FIGHTER_ALL)
        !Class(Player1,RANGER_ALL)~ THEN REPLY @1370 DO ~SetGlobal("EU#LenaPlayerSoldier","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk06#3-2
    IF ~~ THEN REPLY @1400 DO ~SetGlobal("EU#LenaPlayerSailor","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk06#4
    IF ~~ THEN REPLY @1434 DO ~SetGlobal("EU#LenaPlayerCook","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk06#5
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06.3
    SAY @1460
    IF ~~ THEN REPLY @1304 GOTO EU#LenaTalk.LoveTalk06#1
    IF ~~ THEN REPLY @1344 DO ~SetGlobal("EU#LenaPlayerFarmer","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk06#2
    IF ~OR(2) 
        Class(Player1,FIGHTER_ALL)
        Class(Player1,RANGER_ALL)~ THEN REPLY @1370 DO ~SetGlobal("EU#LenaPlayerSoldier","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk06#3-1
    IF ~!Class(Player1,FIGHTER_ALL)
        !Class(Player1,RANGER_ALL)~ THEN REPLY @1370 DO ~SetGlobal("EU#LenaPlayerSoldier","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk06#3-2
    IF ~~ THEN REPLY @1400 DO ~SetGlobal("EU#LenaPlayerSailor","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk06#4
    IF ~~ THEN REPLY @1434 DO ~SetGlobal("EU#LenaPlayerCook","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk06#5
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06.4
    SAY @1462
    IF ~~ DO ~SetGlobal("EU#LenaKillRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06.1.1.2
    SAY @1333
    IF ~~ GOTO EU#LenaTalk.LoveTalk06#9
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06.1.1.3
    SAY @1336
    = @1337
    IF ~~ THEN REPLY @1338 GOTO EU#LenaTalk.LoveTalk06#12
    IF ~~ THEN REPLY @1340 GOTO EU#LenaTalk.LoveTalk06#10
    IF ~~ THEN REPLY @1342 GOTO EU#LenaTalk.LoveTalk06.1.1.3.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06.1.1.3.3
    SAY @1343
    IF ~~ GOTO EU#LenaTalk.LoveTalk06#12
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06.1.2.1
    SAY @1347
    IF ~~ THEN REPLY @1348 GOTO EU#LenaTalk.LoveTalk06.1.2.1.1
    IF ~~ THEN REPLY @1350 GOTO EU#LenaTalk.LoveTalk06#10
    IF ~~ THEN REPLY @1352 GOTO EU#LenaTalk.LoveTalk06.1.2.1.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06.1.2.1.3
    SAY @1352
    IF ~~ GOTO EU#LenaTalk.LoveTalk06#12
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06.1.2.1.1
    SAY @1349
    IF ~~ GOTO EU#LenaTalk.LoveTalk06#12
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06.1.2.2
    SAY @1354
    = @1355
    IF ~~ GOTO EU#LenaTalk.LoveTalk06.1.2.2-2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06.1.2.2-2
    SAY @1359
    IF ~~THEN REPLY @1360 GOTO EU#LenaTalk.LoveTalk06#10
    IF ~~THEN REPLY @1361 GOTO EU#LenaTalk.LoveTalk06#12
    IF ~~THEN REPLY @1362 GOTO EU#LenaTalk.LoveTalk06#10
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06.1.2.3
    SAY @1364
    IF ~~ THEN REPLY @1365 GOTO EU#LenaTalk.LoveTalk06#10
    IF ~~ THEN REPLY @1366 GOTO EU#LenaTalk.LoveTalk06.1.2.3.2
    IF ~~ THEN REPLY @1368 GOTO EU#LenaTalk.LoveTalk06.1.2.3.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06.1.2.3.2
    SAY @1367
    IF ~~ GOTO EU#LenaTalk.LoveTalk06#12
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06.1.2.3.3
    SAY @1369
    IF ~~ GOTO EU#LenaTalk.LoveTalk06#12
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06.1.3.1
    SAY @1374
    IF ~~ THEN REPLY @1375 GOTO EU#LenaTalk.LoveTalk06.1.3.1.1
    IF ~~ THEN REPLY @1380 GOTO EU#LenaTalk.LoveTalk06.1.3.1.2
    IF ~~ THEN REPLY @1382 GOTO EU#LenaTalk.LoveTalk06#10
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06.1.3.1.2
    SAY @1381
    IF ~~ GOTO EU#LenaTalk.LoveTalk06#12
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06.1.3.1.1
    SAY @1376
    = @1377
    IF ~~ THEN REPLY @1378 GOTO EU#LenaTalk.LoveTalk06#12
    IF ~~ THEN REPLY @1379 GOTO EU#LenaTalk.LoveTalk06#10
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06.1.3.2
    SAY @1384
    IF ~~ THEN REPLY @1385 GOTO EU#LenaTalk.LoveTalk06#10
    IF ~~ THEN REPLY @1386 GOTO EU#LenaTalk.LoveTalk06#10
    IF ~~ THEN REPLY @1387 GOTO EU#LenaTalk.LoveTalk06.1.3.2.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06.1.3.2.3
    SAY @1388
    IF ~~ GOTO EU#LenaTalk.LoveTalk06#12
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06.1.3.3
    SAY @1390
    = @1391
    IF ~~ THEN REPLY @1392 GOTO EU#LenaTalk.LoveTalk06.1.3.3.1
    IF ~~ THEN REPLY @1394 GOTO EU#LenaTalk.LoveTalk06#10
    IF ~Gender(Player1,FEMALE)~ THEN REPLY @1395 GOTO EU#LenaTalk.LoveTalk06.1.3.3.3
    IF ~Gender(Player1,MALE)~ THEN REPLY @1398 GOTO EU#LenaTalk.LoveTalk06.1.3.3.4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06.1.3.3.1
    SAY @1393
    IF ~~ GOTO EU#LenaTalk.LoveTalk06#12
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06.1.3.3.3
    SAY @1396
    = @1397
    IF ~~ GOTO EU#LenaTalk.LoveTalk06#12
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06.1.3.3.4
    SAY @1399
    IF ~~ GOTO EU#LenaTalk.LoveTalk06#12
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06.1.4.1
    SAY @1403
    IF ~~ THEN REPLY @1404 GOTO EU#LenaTalk.LoveTalk06.1.4.1.1
    IF ~~ THEN REPLY @1407 GOTO EU#LenaTalk.LoveTalk06#10
    IF ~~ THEN REPLY @1408 GOTO EU#LenaTalk.LoveTalk06.1.4.1.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06.1.4.1.1
    SAY @1405
    = @1406
    IF ~~ GOTO EU#LenaTalk.LoveTalk06#12
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06.1.4.1.3
    SAY @1409
    IF ~~ GOTO EU#LenaTalk.LoveTalk06#12
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06.1.4.2
    SAY @1411
    IF ~~ THEN REPLY @1412 GOTO EU#LenaTalk.LoveTalk06.1.4.2.1
    IF ~~ THEN REPLY @1414 GOTO EU#LenaTalk.LoveTalk06#10
    IF ~~ THEN REPLY @1415 GOTO EU#LenaTalk.LoveTalk06.1.4.2.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06.1.4.2.1
    SAY @1413
    IF ~~ GOTO EU#LenaTalk.LoveTalk06#12
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06.1.4.2.3
    SAY @1416
    IF ~~ GOTO EU#LenaTalk.LoveTalk06#12
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06.1.4.3
    SAY @1418
    IF ~Gender(Player1,MALE)~ THEN REPLY @1419 GOTO EU#LenaTalk.LoveTalk06.1.4.3.1
    IF ~~ THEN REPLY @1429 GOTO EU#LenaTalk.LoveTalk06#13
    IF ~~ THEN REPLY @1432 GOTO EU#LenaTalk.LoveTalk06#13
    IF ~~ THEN REPLY @1433 GOTO EU#LenaTalk.LoveTalk06#13
END

IF ~~BEGIN EU#LenaTalk.LoveTalk06.1.4.3.1
    SAY @1420
    IF ~~ THEN REPLY @1421 GOTO EU#LenaTalk.LoveTalk06.1.4.3.1.1
    IF ~~ THEN REPLY @1424 GOTO EU#LenaTalk.LoveTalk06.1.4.3.1.2
    IF ~~ THEN REPLY @1426 GOTO EU#LenaTalk.LoveTalk06.1.4.3.1.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06.1.4.3.1.1
    SAY @1422
    = @1423
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06.1.4.3.1.2
    SAY @1425
    IF ~~ GOTO EU#LenaTalk.LoveTalk06#12
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06.1.4.3.1.3
    SAY @1427
    = @1428
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06.1.5.1
    SAY @1437
    IF ~~ THEN REPLY @1438 GOTO EU#LenaTalk.LoveTalk06#14
    IF ~~ THEN REPLY @1440 GOTO EU#LenaTalk.LoveTalk06#14
    IF ~~ THEN REPLY @1441 GOTO EU#LenaTalk.LoveTalk06.1.5.1.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06.1.5.1.3
    SAY @1442
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06.1.5.2
    SAY @1444
    IF ~~ THEN REPLY @1445 GOTO EU#LenaTalk.LoveTalk06#10
    IF ~~ THEN REPLY @1446 GOTO EU#LenaTalk.LoveTalk06.1.5.2.2
    IF ~~ THEN REPLY @1448 GOTO EU#LenaTalk.LoveTalk06.1.5.2.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06.1.5.2.2
    SAY @1447
    IF ~~ GOTO EU#LenaTalk.LoveTalk06#12
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06.1.5.2.3
    SAY @1449
    IF ~~ GOTO EU#LenaTalk.LoveTalk06#12
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06.1.5.3
    SAY @1451
    IF ~~ THEN REPLY @1452 GOTO EU#LenaTalk.LoveTalk06#10
    IF ~~ THEN REPLY @1453 GOTO EU#LenaTalk.LoveTalk06.1.5.3.2
    IF ~~ THEN REPLY @1454 GOTO EU#LenaTalk.LoveTalk06.1.5.3.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06.1.5.3.2
    SAY @1463
    IF ~~ GOTO EU#LenaTalk.LoveTalk06#12
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06.1.5.3.3
    SAY @1455
    IF ~~ GOTO EU#LenaTalk.LoveTalk06#12
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06.1.1.1.1
    SAY @1321
    IF ~~ GOTO EU#LenaTalk.LoveTalk06#15
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06.1.1.1.2
    SAY @1324
    IF ~~ GOTO EU#LenaTalk.LoveTalk06#15
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06.1.1.1.3
    SAY @1327
    IF ~~ GOTO EU#LenaTalk.LoveTalk06#15
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06.1.1.1.4
    SAY @1330
    IF ~~ GOTO EU#LenaTalk.LoveTalk06#15
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06#1
    SAY @1305
    IF ~~ THEN REPLY @1306 GOTO EU#LenaTalk.LoveTalk06#8
    IF ~~ THEN REPLY @1332 GOTO EU#LenaTalk.LoveTalk06.1.1.2
    IF ~~ THEN REPLY @1335 GOTO EU#LenaTalk.LoveTalk06.1.1.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06#2
    SAY @1345
    IF ~~ THEN REPLY @1346 GOTO EU#LenaTalk.LoveTalk06.1.2.1
    IF ~~ THEN REPLY @1353 GOTO EU#LenaTalk.LoveTalk06.1.2.2
    IF ~~ THEN REPLY @1363 GOTO EU#LenaTalk.LoveTalk06.1.2.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06#3-1
    SAY @1371
    IF ~~ THEN REPLY @1373 GOTO EU#LenaTalk.LoveTalk06.1.3.1
    IF ~~ THEN REPLY @1383 GOTO EU#LenaTalk.LoveTalk06.1.3.2
    IF ~~ THEN REPLY @1389 GOTO EU#LenaTalk.LoveTalk06.1.3.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06#3-2
    SAY @1372
    IF ~~ THEN REPLY @1373 GOTO EU#LenaTalk.LoveTalk06.1.3.1
    IF ~~ THEN REPLY @1383 GOTO EU#LenaTalk.LoveTalk06.1.3.2
    IF ~~ THEN REPLY @1389 GOTO EU#LenaTalk.LoveTalk06.1.3.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06#4
    SAY @1401
    IF ~~ THEN REPLY @1402 GOTO EU#LenaTalk.LoveTalk06.1.4.1
    IF ~~ THEN REPLY @1410 GOTO EU#LenaTalk.LoveTalk06.1.4.2
    IF ~~ THEN REPLY @1417 GOTO EU#LenaTalk.LoveTalk06.1.4.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06#5
    SAY @1435
    IF ~~ THEN REPLY @1436 GOTO EU#LenaTalk.LoveTalk06.1.5.1
    IF ~~ THEN REPLY @1443 GOTO EU#LenaTalk.LoveTalk06.1.5.2
    IF ~~ THEN REPLY @1450 GOTO EU#LenaTalk.LoveTalk06.1.5.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06#8
    SAY @1307
    IF ~~ GOTO EU#LenaTalk.LoveTalk06#11
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06#9
    SAY @1334
    IF ~~ GOTO EU#LenaTalk.LoveTalk06#11
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06#10
    SAY @1341
    IF ~~ GOTO EU#LenaTalk.LoveTalk06#11
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06#11
    SAY @1308
    = @1309
    IF ~Global("EU#LenaPlayerFarmer","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk06#11-1
    IF ~Global("EU#LenaPlayerSoldier","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk06#11-2
    IF ~Global("EU#LenaPlayerSailor","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk06#11-3
    IF ~Global("EU#LenaPlayerCook","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk06#11-4
    IF ~!Global("EU#LenaPlayerFarmer","LOCALS",1)
        !Global("EU#LenaPlayerSoldier","LOCALS",1)
        !Global("EU#LenaPlayerSailor","LOCALS",1)
        !Global("EU#LenaPlayerCook","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk06#11-5
END

IF ~~BEGIN EU#LenaTalk.LoveTalk06#11-1
    SAY @1310
    = @1311
    IF ~~ GOTO EU#LenaTalk.LoveTalk06#11-5
END

IF ~~BEGIN EU#LenaTalk.LoveTalk06#11-2
    SAY @1312
    = @1313
    = @1314
    IF ~~ GOTO EU#LenaTalk.LoveTalk06#11-5
END

IF ~~BEGIN EU#LenaTalk.LoveTalk06#11-3
    SAY @1315
    = @1316
    IF ~~ GOTO EU#LenaTalk.LoveTalk06#11-5
END

IF ~~BEGIN EU#LenaTalk.LoveTalk06#11-4
    SAY @1317
    = @1318
    IF ~~ GOTO EU#LenaTalk.LoveTalk06#11-5
END

IF ~~BEGIN EU#LenaTalk.LoveTalk06#11-5
    SAY @1319
    IF ~~ THEN REPLY @1320 GOTO EU#LenaTalk.LoveTalk06.1.1.1.1
    IF ~~ THEN REPLY @1323 GOTO EU#LenaTalk.LoveTalk06.1.1.1.2
    IF ~~ THEN REPLY @1326 GOTO EU#LenaTalk.LoveTalk06.1.1.1.3
    IF ~~ THEN REPLY @1329 GOTO EU#LenaTalk.LoveTalk06.1.1.1.4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06#12
    SAY @1339
    IF ~~ GOTO EU#LenaTalk.LoveTalk06#10
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06#13
    SAY @1430
    = @1431
    IF ~~ GOTO EU#LenaTalk.LoveTalk06#12
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06#14
    SAY @1439
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk06#15
    SAY @1322
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

/////////////////////////////////////////
//:.  Lovetalk: Sun & Weather (# 7)  .://
/////////////////////////////////////////

IF ~Global("EU#LenaLoveTalk","LOCALS",14)~ BEGIN EU#LenaTalk.LoveTalk07
    SAY @1501
    IF ~~ GOTO EU#LenaTalk.LoveTalk07-1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk07-1
    SAY @1502
    IF ~~ GOTO EU#LenaTalk.LoveTalk07-2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk07-2
    SAY @1503
    IF ~~ THEN REPLY @1504 GOTO EU#LenaTalk.LoveTalk07#1
    IF ~~ THEN REPLY @1505 GOTO EU#LenaTalk.LoveTalk07.2
    IF ~~ THEN REPLY @1526 GOTO EU#LenaTalk.LoveTalk07.3
    IF ~~ THEN REPLY @1559 GOTO EU#LenaTalk.LoveTalk07.4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk07.4
    SAY @1560
    = @1561
    IF ~~ DO ~SetGlobal("EU#LenaKillRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk07.3.3
    SAY @1538
    = @1539
    = @1540
    IF ~~ THEN REPLY @1541 GOTO EU#LenaTalk.LoveTalk07.3.3.1
    IF ~~ THEN REPLY @1544 GOTO EU#LenaTalk.LoveTalk07.3.3.2
    IF ~~ THEN REPLY @1547 GOTO EU#LenaTalk.LoveTalk07.3.3.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk07.3.3.1
    SAY @1542
    = @1543
    IF ~~ GOTO EU#LenaTalk.LoveTalk07#2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk07.3.3.2
    SAY @1545
    IF ~~ GOTO EU#LenaTalk.LoveTalk07#2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk07.3.3.3
    SAY @1548
    IF ~~ GOTO EU#LenaTalk.LoveTalk07#2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk07.3.4
    SAY @1550
    IF ~~ THEN REPLY @1551 GOTO EU#LenaTalk.LoveTalk07.3.4.1
    IF ~~ THEN REPLY @1554 GOTO EU#LenaTalk.LoveTalk07.3.4.2
    IF ~~ THEN REPLY @1557 GOTO EU#LenaTalk.LoveTalk07.3.4.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk07.3.4.1
    SAY @1552
    IF ~~ GOTO EU#LenaTalk.LoveTalk07#3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk07.3.4.2
    SAY @1555
    = @1556
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk07.3.4.3
    SAY @1558
    IF ~~ GOTO EU#LenaTalk.LoveTalk07#3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk07.2
    SAY @1506
    IF ~~ GOTO EU#LenaTalk.LoveTalk07#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk07.3
    SAY @1527
    = @1528
    = @1529
    = @1530
    IF ~~ THEN REPLY @1531 GOTO EU#LenaTalk.LoveTalk07.3.1
    IF ~~ THEN REPLY @1535 GOTO EU#LenaTalk.LoveTalk07.3.2
    IF ~~ THEN REPLY @1537 GOTO EU#LenaTalk.LoveTalk07.3.3
    IF ~~ THEN REPLY @1549 DO ~IncrementGlobal("EU#LenaLike","LOCALS",-1)~ GOTO EU#LenaTalk.LoveTalk07.3.4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk07.3.1
    SAY @1532
    = @1533
    = @1534
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk07.3.2
    SAY @1536
    IF ~~ GOTO EU#LenaTalk.LoveTalk07#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk07.2.3.3
    SAY @1523
    IF ~~ GOTO EU#LenaTalk.LoveTalk07#6
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk07.2.3.4
    SAY @1525
    IF ~~ GOTO EU#LenaTalk.LoveTalk07#6
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk07.2.1
    SAY @1510
    = @1511
    IF ~~ GOTO EU#LenaTalk.LoveTalk07#7
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk07.2.2
    SAY @1514
    IF ~~ GOTO EU#LenaTalk.LoveTalk07#7
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk07.2.3
    SAY @1516
    IF ~~ GOTO EU#LenaTalk.LoveTalk07#4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk07#1
    SAY @1507
    = @1508
    IF ~~ THEN REPLY @1509 GOTO EU#LenaTalk.LoveTalk07.2.1
    IF ~~ THEN REPLY @1513 GOTO EU#LenaTalk.LoveTalk07.2.2
    IF ~~ THEN REPLY @1515 GOTO EU#LenaTalk.LoveTalk07.2.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk07#2
    SAY @1546
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk07#3
    SAY @1553
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk07#4
    SAY @1517
    IF ~~ THEN REPLY @1518 GOTO EU#LenaTalk.LoveTalk07#5
    IF ~~ THEN REPLY @1521 GOTO EU#LenaTalk.LoveTalk07#5
    IF ~~ THEN REPLY @1522 GOTO EU#LenaTalk.LoveTalk07.2.3.3
    IF ~~ THEN REPLY @1524 GOTO EU#LenaTalk.LoveTalk07.2.3.4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk07#5
    SAY @1519
    IF ~~ GOTO EU#LenaTalk.LoveTalk07#6
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk07#6
    SAY @1520
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk07#7
    SAY @1512
    IF ~~ GOTO EU#LenaTalk.LoveTalk07#4
END

/////////////////////////////////
//:.  Lovetalk: Armor (# 8)  .://
/////////////////////////////////

IF ~Global("EU#LenaLoveTalk","LOCALS",16)~ BEGIN EU#LenaTalk.LoveTalk08
    SAY @1601
    = @1602
    IF ~~ THEN REPLY @1603 GOTO EU#LenaTalk.LoveTalk08.1
    IF ~~ THEN REPLY @1656 GOTO EU#LenaTalk.LoveTalk08.2
    IF ~~ THEN REPLY @1659 GOTO EU#LenaTalk.LoveTalk08.3
    IF ~~ THEN REPLY @1662 GOTO EU#LenaTalk.LoveTalk08.4
    IF ~~ THEN REPLY @1664 GOTO EU#LenaTalk.LoveTalk08.5
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk08.1
    SAY @1604
    IF ~~ GOTO EU#LenaTalk.LoveTalk08#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk08.2
    SAY @1657
    = @1658
    IF ~~ GOTO EU#LenaTalk.LoveTalk08#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk08.3
    SAY @1660
    = @1661
    IF ~~ GOTO EU#LenaTalk.LoveTalk08#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk08.4
    SAY @1663
    IF ~~ GOTO EU#LenaTalk.LoveTalk08#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk08.5
    SAY @1665
    = @1666
    IF ~~ DO ~SetGlobal("EU#LenaKillRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk08.1.7.3.1
    SAY @1648
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk08.1.7.3.2
    SAY @1650
    IF ~~ GOTO EU#LenaTalk.LoveTalk08#10
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk08.1.7.3.3
    SAY @1652
    IF ~~ GOTO EU#LenaTalk.LoveTalk08#10
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk08.1.7.1
    SAY @1641
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk08.1.7.2
    SAY @1643
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk08.1.7.3
    SAY @1645
    IF ~~ GOTO EU#LenaTalk.LoveTalk08#9
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk08.1.7.4
    SAY @1655
    IF ~~ GOTO EU#LenaTalk.LoveTalk08#9
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk08#1
    SAY @1605
    = @1606
    = @1607
    = @1608
    = @1609
    = @1610
    = @1611
    = @1612
    = @1613
    = @1614
    = @1615
    = @1616
    = @1617
    = @1618
    = @1619
    IF ~~ THEN REPLY @1620 GOTO EU#LenaTalk.LoveTalk08#2
    IF ~~ THEN REPLY @1623 GOTO EU#LenaTalk.LoveTalk08#3
    IF ~~ THEN REPLY @1626 GOTO EU#LenaTalk.LoveTalk08#4
    IF ~~ THEN REPLY @1629 GOTO EU#LenaTalk.LoveTalk08#5
    IF ~~ THEN REPLY @1632 GOTO EU#LenaTalk.LoveTalk08#6
    IF ~~ THEN REPLY @1635 GOTO EU#LenaTalk.LoveTalk08#7
    IF ~~ THEN REPLY @1638 GOTO EU#LenaTalk.LoveTalk08#8
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk08#2
    SAY @1621
    = @1622
    IF ~~ THEN REPLY @1623 GOTO EU#LenaTalk.LoveTalk08#3
    IF ~~ THEN REPLY @1626 GOTO EU#LenaTalk.LoveTalk08#4
    IF ~~ THEN REPLY @1629 GOTO EU#LenaTalk.LoveTalk08#5
    IF ~~ THEN REPLY @1632 GOTO EU#LenaTalk.LoveTalk08#6
    IF ~~ THEN REPLY @1635 GOTO EU#LenaTalk.LoveTalk08#7
    IF ~~ THEN REPLY @1638 GOTO EU#LenaTalk.LoveTalk08#8
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk08#3
    SAY @1624
    = @1625
    IF ~~ GOTO EU#LenaTalk.LoveTalk08#9
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk08#4
    SAY @1627
    = @1628
    IF ~~ GOTO EU#LenaTalk.LoveTalk08#9
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk08#5
    SAY @1630
    = @1631
    IF ~~ GOTO EU#LenaTalk.LoveTalk08#9
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk08#6
    SAY @1633
    = @1634
    IF ~~ THEN REPLY @1620 GOTO EU#LenaTalk.LoveTalk08#2
    IF ~~ THEN REPLY @1623 GOTO EU#LenaTalk.LoveTalk08#3
    IF ~~ THEN REPLY @1626 GOTO EU#LenaTalk.LoveTalk08#4
    IF ~~ THEN REPLY @1629 GOTO EU#LenaTalk.LoveTalk08#5
    IF ~~ THEN REPLY @1635 GOTO EU#LenaTalk.LoveTalk08#7
    IF ~~ THEN REPLY @1638 GOTO EU#LenaTalk.LoveTalk08#8
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk08#7
    SAY @1636
    = @1637
    IF ~~ THEN REPLY @1620 GOTO EU#LenaTalk.LoveTalk08#2
    IF ~~ THEN REPLY @1623 GOTO EU#LenaTalk.LoveTalk08#3
    IF ~~ THEN REPLY @1626 GOTO EU#LenaTalk.LoveTalk08#4
    IF ~~ THEN REPLY @1629 GOTO EU#LenaTalk.LoveTalk08#5
    IF ~~ THEN REPLY @1632 GOTO EU#LenaTalk.LoveTalk08#6
    IF ~~ THEN REPLY @1638 GOTO EU#LenaTalk.LoveTalk08#8
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk08#8
    SAY @1639
    IF ~~ THEN REPLY @1640 GOTO EU#LenaTalk.LoveTalk08.1.7.1
    IF ~~ THEN REPLY @1642 DO ~IncrementGlobal("EU#LenaLike","LOCALS",-1)~ GOTO EU#LenaTalk.LoveTalk08.1.7.2
    IF ~~ THEN REPLY @1644 GOTO EU#LenaTalk.LoveTalk08.1.7.3
    IF ~OR(3) 
        Class(Player1,DRUID_ALL)
        Class(Player1,CLERIC_ALL)
        Class(Player1,RANGER_ALL)~ THEN REPLY @1655 GOTO EU#LenaTalk.LoveTalk08.1.7.4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk08#9
    SAY @1646
    IF ~~ THEN REPLY @1647 GOTO EU#LenaTalk.LoveTalk08.1.7.3.1
    IF ~~ THEN REPLY @1649 GOTO EU#LenaTalk.LoveTalk08.1.7.3.2
    IF ~~ THEN REPLY @1651 GOTO EU#LenaTalk.LoveTalk08.1.7.3.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk08#10
    SAY @1653
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

///////////////////////////////////////////////
//:.  Lovetalk: Rock/Scissors/Paper (# 9)  .://
///////////////////////////////////////////////

IF ~Global("EU#LenaLoveTalk","LOCALS",18)~ BEGIN EU#LenaTalk.LoveTalk09
    SAY @1701
    = @1702
    IF ~~ THEN REPLY @1703 DO ~SetGlobal("EU#LenaPlayRound","LOCALS",0)
        SetGlobal("EU#LenaCheatPlayRound","LOCALS",0)
        SetGlobal("EU#LenaPlayerRealizedCheat","LOCALS",0)
        SetGlobal("EU#LenaCounts","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#1
    IF ~~ THEN REPLY @1736 DO ~SetGlobal("EU#LenaPlayRound","LOCALS",0)
        SetGlobal("EU#LenaCheatPlayRound","LOCALS",0)
        SetGlobal("EU#LenaPlayerRealizedCheat","LOCALS",0)
        SetGlobal("EU#LenaCounts","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#1
    IF ~~ THEN REPLY @1737 GOTO EU#LenaTalk.LoveTalk09.3
    IF ~~ THEN REPLY @1740 GOTO EU#LenaTalk.LoveTalk09.4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk09.3
    SAY @1738
    = @1739
    IF ~~ DO ~SetGlobal("EU#LenaPlayRound","LOCALS",0)
        SetGlobal("EU#LenaCheatPlayRound","LOCALS",0)
        SetGlobal("EU#LenaPlayerRealizedCheat","LOCALS",0)
        SetGlobal("EU#LenaCounts","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk09.4
    SAY @1741
    IF ~~ DO ~SetGlobal("EU#LenaRomanceActive","LOCALS",3)
        IncrementGlobal("EU#LenaLike","LOCALS",-3)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk09#1
    SAY @1704
    = @1705
    = @1706
    IF ~~ THEN REPLY @1707 DO ~SetGlobal("EU#LenaCounts","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09.1.1
    IF ~~ THEN REPLY @1731 DO ~SetGlobal("EU#LenaCounts","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09.1.2
    IF ~~ THEN REPLY @1733 DO ~SetGlobal("EU#LenaCounts","LOCALS",0)~ GOTO EU#LenaTalk.LoveTalk09.1.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk09.1.1
    SAY @1708
    IF ~~ GOTO EU#LenaTalk.LoveTalk09#2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk09.1.2
    SAY @1732
    IF ~~ GOTO EU#LenaTalk.LoveTalk09#2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk09.1.3
    SAY @1734
    IF ~~ GOTO EU#LenaTalk.LoveTalk09#3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk09#3
    SAY @1735

    //: player knows cheat, cheat play =2, Lena breaks
    IF ~Global("EU#LenaCheatPlayRound","LOCALS",2)~ THEN REPLY @1710 GOTO EU#LenaTalk.LoveTalk09#PlayerLoseKnowing
    //: player doesnot know cheat, play =5, Lena breaks
    IF ~!Global("EU#LenaCheatPlayRound","LOCALS",2)
        Global("EU#LenaPlayRound","LOCALS",5)~ THEN REPLY @1710 GOTO EU#LenaTalk.LoveTalk09#PlayerLoser
    //: player know cheat, dex >22, player wins %50 (lose)
    IF ~Global("EU#LenaPlayerRealizedCheat","LOCALS",1)
        !Global("EU#LenaCheatPlayRound","LOCALS",2)
        !Global("EU#LenaPlayRound","LOCALS",5)
        CheckStatGT(Player1,22,DEX)
        RandomNum(2,1)~ THEN REPLY @1710 DO ~IncrementGlobal("EU#LenaPlayRound","LOCALS",1) IncrementGlobal("EU#LenaCheatPlayRound","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#Lose
    //: player know cheat, dex >22, player wins %50 (win)
    IF ~Global("EU#LenaPlayerRealizedCheat","LOCALS",1)
        !Global("EU#LenaCheatPlayRound","LOCALS",2)
        !Global("EU#LenaPlayRound","LOCALS",5)
        CheckStatGT(Player1,22,DEX)
        RandomNum(2,2)~ THEN REPLY @1710 DO ~IncrementGlobal("EU#LenaPlayRound","LOCALS",1) IncrementGlobal("EU#LenaCheatPlayRound","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#Win
    //: player doesnot know cheat, dex >22, player wins %50 (lose)
    IF ~Global("EU#LenaPlayerRealizedCheat","LOCALS",0)
        !Global("EU#LenaCheatPlayRound","LOCALS",2)
        !Global("EU#LenaPlayRound","LOCALS",5)
        CheckStatGT(Player1,22,DEX)
        RandomNum(2,1)~ THEN REPLY @1710 DO ~IncrementGlobal("EU#LenaPlayRound","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#Lose
    //: player doesnot know cheat, dex >22, player wins %50 (win)
    IF ~Global("EU#LenaPlayerRealizedCheat","LOCALS",0)
        !Global("EU#LenaCheatPlayRound","LOCALS",2)
        !Global("EU#LenaPlayRound","LOCALS",5)
        CheckStatGT(Player1,22,DEX)
        RandomNum(2,2)~ THEN REPLY @1710 DO ~IncrementGlobal("EU#LenaPlayRound","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#Win
    //: player know cheat, dex <23, lose
    IF ~Global("EU#LenaPlayerRealizedCheat","LOCALS",1)
        !Global("EU#LenaCheatPlayRound","LOCALS",2)
        !Global("EU#LenaPlayRound","LOCALS",5)
        CheckStatLT(Player1,23,DEX)~ THEN REPLY @1710 DO ~IncrementGlobal("EU#LenaPlayRound","LOCALS",1) IncrementGlobal("EU#LenaCheatPlayRound","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#Lose
    //: player does not know cheat, dex <23, lose
    IF ~Global("EU#LenaPlayerRealizedCheat","LOCALS",0)
        !Global("EU#LenaCheatPlayRound","LOCALS",2)
        !Global("EU#LenaPlayRound","LOCALS",5)
        CheckStatLT(Player1,23,DEX)~ THEN REPLY @1710 DO ~IncrementGlobal("EU#LenaPlayRound","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#Lose

    //: player knows cheat, cheat play =2, Lena breaks
    IF ~Global("EU#LenaCheatPlayRound","LOCALS",2)~ THEN REPLY @1715 GOTO EU#LenaTalk.LoveTalk09#PlayerLoseKnowing
    //: player doesnot know cheat, play =5, Lena breaks
    IF ~!Global("EU#LenaCheatPlayRound","LOCALS",2)
        Global("EU#LenaPlayRound","LOCALS",5)~ THEN REPLY @1715 GOTO EU#LenaTalk.LoveTalk09#PlayerLoser
    //: player know cheat, dex >22, player wins %50 (lose)
    IF ~Global("EU#LenaPlayerRealizedCheat","LOCALS",1)
        !Global("EU#LenaCheatPlayRound","LOCALS",2)
        !Global("EU#LenaPlayRound","LOCALS",5)
        CheckStatGT(Player1,22,DEX)
        RandomNum(2,1)~ THEN REPLY @1715 DO ~IncrementGlobal("EU#LenaPlayRound","LOCALS",1) IncrementGlobal("EU#LenaCheatPlayRound","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#Lose
    //: player know cheat, dex >22, player wins %50 (win)
    IF ~Global("EU#LenaPlayerRealizedCheat","LOCALS",1)
        !Global("EU#LenaCheatPlayRound","LOCALS",2)
        !Global("EU#LenaPlayRound","LOCALS",5)
        CheckStatGT(Player1,22,DEX)
        RandomNum(2,2)~ THEN REPLY @1715 DO ~IncrementGlobal("EU#LenaPlayRound","LOCALS",1) IncrementGlobal("EU#LenaCheatPlayRound","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#Win
    //: player doesnot know cheat, dex >22, player wins %50 (lose)
    IF ~Global("EU#LenaPlayerRealizedCheat","LOCALS",0)
        !Global("EU#LenaCheatPlayRound","LOCALS",2)
        !Global("EU#LenaPlayRound","LOCALS",5)
        CheckStatGT(Player1,22,DEX)
        RandomNum(2,1)~ THEN REPLY @1715 DO ~IncrementGlobal("EU#LenaPlayRound","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#Lose
    //: player doesnot know cheat, dex >22, player wins %50 (win)
    IF ~Global("EU#LenaPlayerRealizedCheat","LOCALS",0)
        !Global("EU#LenaCheatPlayRound","LOCALS",2)
        !Global("EU#LenaPlayRound","LOCALS",5)
        CheckStatGT(Player1,22,DEX)
        RandomNum(2,2)~ THEN REPLY @1715 DO ~IncrementGlobal("EU#LenaPlayRound","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#Win
    //: player know cheat, dex <23, lose
    IF ~Global("EU#LenaPlayerRealizedCheat","LOCALS",1)
        !Global("EU#LenaCheatPlayRound","LOCALS",2)
        !Global("EU#LenaPlayRound","LOCALS",5)
        CheckStatLT(Player1,23,DEX)~ THEN REPLY @1715 DO ~IncrementGlobal("EU#LenaPlayRound","LOCALS",1) IncrementGlobal("EU#LenaCheatPlayRound","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#Lose
    //: player does not know cheat, dex <23, lose
    IF ~Global("EU#LenaPlayerRealizedCheat","LOCALS",0)
        !Global("EU#LenaCheatPlayRound","LOCALS",2)
        !Global("EU#LenaPlayRound","LOCALS",5)
        CheckStatLT(Player1,23,DEX)~ THEN REPLY @1715 DO ~IncrementGlobal("EU#LenaPlayRound","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#Lose

    //: player knows cheat, cheat play =2, Lena breaks
    IF ~Global("EU#LenaCheatPlayRound","LOCALS",2)~ THEN REPLY @1716 GOTO EU#LenaTalk.LoveTalk09#PlayerLoseKnowing
    //: player doesnot know cheat, play =5, Lena breaks
    IF ~!Global("EU#LenaCheatPlayRound","LOCALS",2)
        Global("EU#LenaPlayRound","LOCALS",5)~ THEN REPLY @1716 GOTO EU#LenaTalk.LoveTalk09#PlayerLoser
    //: player know cheat, dex >22, player wins %50 (lose)
    IF ~Global("EU#LenaPlayerRealizedCheat","LOCALS",1)
        !Global("EU#LenaCheatPlayRound","LOCALS",2)
        !Global("EU#LenaPlayRound","LOCALS",5)
        CheckStatGT(Player1,22,DEX)
        RandomNum(2,1)~ THEN REPLY @1716 DO ~IncrementGlobal("EU#LenaPlayRound","LOCALS",1) IncrementGlobal("EU#LenaCheatPlayRound","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#Lose
    //: player know cheat, dex >22, player wins %50 (win)
    IF ~Global("EU#LenaPlayerRealizedCheat","LOCALS",1)
        !Global("EU#LenaCheatPlayRound","LOCALS",2)
        !Global("EU#LenaPlayRound","LOCALS",5)
        CheckStatGT(Player1,22,DEX)
        RandomNum(2,2)~ THEN REPLY @1716 DO ~IncrementGlobal("EU#LenaPlayRound","LOCALS",1) IncrementGlobal("EU#LenaCheatPlayRound","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#Win
    //: player doesnot know cheat, dex >22, player wins %50 (lose)
    IF ~Global("EU#LenaPlayerRealizedCheat","LOCALS",0)
        !Global("EU#LenaCheatPlayRound","LOCALS",2)
        !Global("EU#LenaPlayRound","LOCALS",5)
        CheckStatGT(Player1,22,DEX)
        RandomNum(2,1)~ THEN REPLY @1716 DO ~IncrementGlobal("EU#LenaPlayRound","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#Lose
    //: player doesnot know cheat, dex >22, player wins %50 (win)
    IF ~Global("EU#LenaPlayerRealizedCheat","LOCALS",0)
        !Global("EU#LenaCheatPlayRound","LOCALS",2)
        !Global("EU#LenaPlayRound","LOCALS",5)
        CheckStatGT(Player1,22,DEX)
        RandomNum(2,2)~ THEN REPLY @1716 DO ~IncrementGlobal("EU#LenaPlayRound","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#Win
    //: player know cheat, dex <23, lose
    IF ~Global("EU#LenaPlayerRealizedCheat","LOCALS",1)
        !Global("EU#LenaCheatPlayRound","LOCALS",2)
        !Global("EU#LenaPlayRound","LOCALS",5)
        CheckStatLT(Player1,23,DEX)~ THEN REPLY @1716 DO ~IncrementGlobal("EU#LenaPlayRound","LOCALS",1) IncrementGlobal("EU#LenaCheatPlayRound","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#Lose
    //: player does not know cheat, dex <23, lose
    IF ~Global("EU#LenaPlayerRealizedCheat","LOCALS",0)
        !Global("EU#LenaCheatPlayRound","LOCALS",2)
        !Global("EU#LenaPlayRound","LOCALS",5)
        CheckStatLT(Player1,23,DEX)~ THEN REPLY @1716 DO ~IncrementGlobal("EU#LenaPlayRound","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#Lose

    //: player cheats, dex <23, Lena realize
    IF ~CheckStatLT(Player1,23,DEX)~ THEN REPLY @1717 DO ~IncrementGlobal("EU#LenaLike","LOCALS",-1)~ GOTO EU#LenaTalk.LoveTalk09#Cheat

    //: cheat and win
    IF ~CheckStatGT(Player1,22,DEX)
        Global("EU#LenaCheatPlayRound","LOCALS",2)~ THEN REPLY @1717 GOTO EU#LenaTalk.LoveTalk09#PlayerLoseKnowing
    IF ~CheckStatGT(Player1,22,DEX)
        !Global("EU#LenaCheatPlayRound","LOCALS",2)
        Global("EU#LenaPlayRound","LOCALS",5)~ THEN REPLY @1717 GOTO EU#LenaTalk.LoveTalk09#PlayerLoser
    IF ~CheckStatGT(Player1,22,DEX)
        Global("EU#LenaPlayerRealizedCheat","LOCALS",1)
        !Global("EU#LenaCheatPlayRound","LOCALS",2)
        !Global("EU#LenaPlayRound","LOCALS",5)~ THEN REPLY @1717 DO~IncrementGlobal("EU#LenaPlayRound","LOCALS",1) IncrementGlobal("EU#LenaCheatPlayRound","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#CheatWin
    IF ~CheckStatGT(Player1,22,DEX)
        Global("EU#LenaPlayerRealizedCheat","LOCALS",0)
        !Global("EU#LenaCheatPlayRound","LOCALS",2)
        !Global("EU#LenaPlayRound","LOCALS",5)~ THEN REPLY @1717 DO~IncrementGlobal("EU#LenaPlayRound","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#CheatWin

    //: realize Lena cheat
    IF ~Global("EU#LenaPlayerRealizedCheat","LOCALS",0)
        CheckStatGT(Player1,14,INT)
        !Global("EU#LenaPlayRound","LOCALS",4)~ THEN REPLY @1742 DO~SetGlobal("EU#LenaPlayerRealizedCheat","LOCALS",1) IncrementGlobal("EU#LenaPlayRound","LOCALS",1) IncrementGlobal("EU#LenaCheatPlayRound","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#RealizeCheat
    
    //: exit
    IF ~GlobalGT("EU#LenaPlayRound","LOCALS",0)~ THEN REPLY @1729 GOTO EU#LenaTalk.LoveTalk09#Exit
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk09#2
    SAY @1709

    //: player knows cheat, cheat play =2, Lena breaks
    IF ~Global("EU#LenaCheatPlayRound","LOCALS",2)~ THEN REPLY @1710 GOTO EU#LenaTalk.LoveTalk09#PlayerLoseKnowing
    //: player doesnot know cheat, play =5, Lena breaks
    IF ~!Global("EU#LenaCheatPlayRound","LOCALS",2)
        Global("EU#LenaPlayRound","LOCALS",5)~ THEN REPLY @1710 GOTO EU#LenaTalk.LoveTalk09#PlayerLoser
    //: player know cheat, dex >22, player wins %50 (lose)
    IF ~Global("EU#LenaPlayerRealizedCheat","LOCALS",1)
        !Global("EU#LenaCheatPlayRound","LOCALS",2)
        !Global("EU#LenaPlayRound","LOCALS",5)
        CheckStatGT(Player1,22,DEX)
        RandomNum(2,1)~ THEN REPLY @1710 DO ~IncrementGlobal("EU#LenaPlayRound","LOCALS",1) IncrementGlobal("EU#LenaCheatPlayRound","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#Lose
    //: player know cheat, dex >22, player wins %50 (win)
    IF ~Global("EU#LenaPlayerRealizedCheat","LOCALS",1)
        !Global("EU#LenaCheatPlayRound","LOCALS",2)
        !Global("EU#LenaPlayRound","LOCALS",5)
        CheckStatGT(Player1,22,DEX)
        RandomNum(2,2)~ THEN REPLY @1710 DO ~IncrementGlobal("EU#LenaPlayRound","LOCALS",1) IncrementGlobal("EU#LenaCheatPlayRound","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#Win
    //: player doesnot know cheat, dex >22, player wins %50 (lose)
    IF ~Global("EU#LenaPlayerRealizedCheat","LOCALS",0)
        !Global("EU#LenaCheatPlayRound","LOCALS",2)
        !Global("EU#LenaPlayRound","LOCALS",5)
        CheckStatGT(Player1,22,DEX)
        RandomNum(2,1)~ THEN REPLY @1710 DO ~IncrementGlobal("EU#LenaPlayRound","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#Lose
    //: player doesnot know cheat, dex >22, player wins %50 (win)
    IF ~Global("EU#LenaPlayerRealizedCheat","LOCALS",0)
        !Global("EU#LenaCheatPlayRound","LOCALS",2)
        !Global("EU#LenaPlayRound","LOCALS",5)
        CheckStatGT(Player1,22,DEX)
        RandomNum(2,2)~ THEN REPLY @1710 DO ~IncrementGlobal("EU#LenaPlayRound","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#Win
    //: player know cheat, dex <23, lose
    IF ~Global("EU#LenaPlayerRealizedCheat","LOCALS",1)
        !Global("EU#LenaCheatPlayRound","LOCALS",2)
        !Global("EU#LenaPlayRound","LOCALS",5)
        CheckStatLT(Player1,23,DEX)~ THEN REPLY @1710 DO ~IncrementGlobal("EU#LenaPlayRound","LOCALS",1) IncrementGlobal("EU#LenaCheatPlayRound","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#Lose
    //: player does not know cheat, dex <23, lose
    IF ~Global("EU#LenaPlayerRealizedCheat","LOCALS",0)
        !Global("EU#LenaCheatPlayRound","LOCALS",2)
        !Global("EU#LenaPlayRound","LOCALS",5)
        CheckStatLT(Player1,23,DEX)~ THEN REPLY @1710 DO ~IncrementGlobal("EU#LenaPlayRound","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#Lose

    //: player knows cheat, cheat play =2, Lena breaks
    IF ~Global("EU#LenaCheatPlayRound","LOCALS",2)~ THEN REPLY @1715 GOTO EU#LenaTalk.LoveTalk09#PlayerLoseKnowing
    //: player doesnot know cheat, play =5, Lena breaks
    IF ~!Global("EU#LenaCheatPlayRound","LOCALS",2)
        Global("EU#LenaPlayRound","LOCALS",5)~ THEN REPLY @1715 GOTO EU#LenaTalk.LoveTalk09#PlayerLoser
    //: player know cheat, dex >22, player wins %50 (lose)
    IF ~Global("EU#LenaPlayerRealizedCheat","LOCALS",1)
        !Global("EU#LenaCheatPlayRound","LOCALS",2)
        !Global("EU#LenaPlayRound","LOCALS",5)
        CheckStatGT(Player1,22,DEX)
        RandomNum(2,1)~ THEN REPLY @1715 DO ~IncrementGlobal("EU#LenaPlayRound","LOCALS",1) IncrementGlobal("EU#LenaCheatPlayRound","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#Lose
    //: player know cheat, dex >22, player wins %50 (win)
    IF ~Global("EU#LenaPlayerRealizedCheat","LOCALS",1)
        !Global("EU#LenaCheatPlayRound","LOCALS",2)
        !Global("EU#LenaPlayRound","LOCALS",5)
        CheckStatGT(Player1,22,DEX)
        RandomNum(2,2)~ THEN REPLY @1715 DO ~IncrementGlobal("EU#LenaPlayRound","LOCALS",1) IncrementGlobal("EU#LenaCheatPlayRound","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#Win
    //: player doesnot know cheat, dex >22, player wins %50 (lose)
    IF ~Global("EU#LenaPlayerRealizedCheat","LOCALS",0)
        !Global("EU#LenaCheatPlayRound","LOCALS",2)
        !Global("EU#LenaPlayRound","LOCALS",5)
        CheckStatGT(Player1,22,DEX)
        RandomNum(2,1)~ THEN REPLY @1715 DO ~IncrementGlobal("EU#LenaPlayRound","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#Lose
    //: player doesnot know cheat, dex >22, player wins %50 (win)
    IF ~Global("EU#LenaPlayerRealizedCheat","LOCALS",0)
        !Global("EU#LenaCheatPlayRound","LOCALS",2)
        !Global("EU#LenaPlayRound","LOCALS",5)
        CheckStatGT(Player1,22,DEX)
        RandomNum(2,2)~ THEN REPLY @1715 DO ~IncrementGlobal("EU#LenaPlayRound","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#Win
    //: player know cheat, dex <23, lose
    IF ~Global("EU#LenaPlayerRealizedCheat","LOCALS",1)
        !Global("EU#LenaCheatPlayRound","LOCALS",2)
        !Global("EU#LenaPlayRound","LOCALS",5)
        CheckStatLT(Player1,23,DEX)~ THEN REPLY @1715 DO ~IncrementGlobal("EU#LenaPlayRound","LOCALS",1) IncrementGlobal("EU#LenaCheatPlayRound","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#Lose
    //: player does not know cheat, dex <23, lose
    IF ~Global("EU#LenaPlayerRealizedCheat","LOCALS",0)
        !Global("EU#LenaCheatPlayRound","LOCALS",2)
        !Global("EU#LenaPlayRound","LOCALS",5)
        CheckStatLT(Player1,23,DEX)~ THEN REPLY @1715 DO ~IncrementGlobal("EU#LenaPlayRound","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#Lose

    //: player knows cheat, cheat play =2, Lena breaks
    IF ~Global("EU#LenaCheatPlayRound","LOCALS",2)~ THEN REPLY @1716 GOTO EU#LenaTalk.LoveTalk09#PlayerLoseKnowing
    //: player doesnot know cheat, play =5, Lena breaks
    IF ~!Global("EU#LenaCheatPlayRound","LOCALS",2)
        Global("EU#LenaPlayRound","LOCALS",5)~ THEN REPLY @1716 GOTO EU#LenaTalk.LoveTalk09#PlayerLoser
    //: player know cheat, dex >22, player wins %50 (lose)
    IF ~Global("EU#LenaPlayerRealizedCheat","LOCALS",1)
        !Global("EU#LenaCheatPlayRound","LOCALS",2)
        !Global("EU#LenaPlayRound","LOCALS",5)
        CheckStatGT(Player1,22,DEX)
        RandomNum(2,1)~ THEN REPLY @1716 DO ~IncrementGlobal("EU#LenaPlayRound","LOCALS",1) IncrementGlobal("EU#LenaCheatPlayRound","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#Lose
    //: player know cheat, dex >22, player wins %50 (win)
    IF ~Global("EU#LenaPlayerRealizedCheat","LOCALS",1)
        !Global("EU#LenaCheatPlayRound","LOCALS",2)
        !Global("EU#LenaPlayRound","LOCALS",5)
        CheckStatGT(Player1,22,DEX)
        RandomNum(2,2)~ THEN REPLY @1716 DO ~IncrementGlobal("EU#LenaPlayRound","LOCALS",1) IncrementGlobal("EU#LenaCheatPlayRound","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#Win
    //: player doesnot know cheat, dex >22, player wins %50 (lose)
    IF ~Global("EU#LenaPlayerRealizedCheat","LOCALS",0)
        !Global("EU#LenaCheatPlayRound","LOCALS",2)
        !Global("EU#LenaPlayRound","LOCALS",5)
        CheckStatGT(Player1,22,DEX)
        RandomNum(2,1)~ THEN REPLY @1716 DO ~IncrementGlobal("EU#LenaPlayRound","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#Lose
    //: player doesnot know cheat, dex >22, player wins %50 (win)
    IF ~Global("EU#LenaPlayerRealizedCheat","LOCALS",0)
        !Global("EU#LenaCheatPlayRound","LOCALS",2)
        !Global("EU#LenaPlayRound","LOCALS",5)
        CheckStatGT(Player1,22,DEX)
        RandomNum(2,2)~ THEN REPLY @1716 DO ~IncrementGlobal("EU#LenaPlayRound","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#Win
    //: player know cheat, dex <23, lose
    IF ~Global("EU#LenaPlayerRealizedCheat","LOCALS",1)
        !Global("EU#LenaCheatPlayRound","LOCALS",2)
        !Global("EU#LenaPlayRound","LOCALS",5)
        CheckStatLT(Player1,23,DEX)~ THEN REPLY @1716 DO ~IncrementGlobal("EU#LenaPlayRound","LOCALS",1) IncrementGlobal("EU#LenaCheatPlayRound","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#Lose
    //: player does not know cheat, dex <23, lose
    IF ~Global("EU#LenaPlayerRealizedCheat","LOCALS",0)
        !Global("EU#LenaCheatPlayRound","LOCALS",2)
        !Global("EU#LenaPlayRound","LOCALS",5)
        CheckStatLT(Player1,23,DEX)~ THEN REPLY @1716 DO ~IncrementGlobal("EU#LenaPlayRound","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#Lose

    //: player cheats, dex <23, Lena realize
    IF ~CheckStatLT(Player1,23,DEX)~ THEN REPLY @1717 DO ~IncrementGlobal("EU#LenaLike","LOCALS",-1)~ GOTO EU#LenaTalk.LoveTalk09#Cheat

    //: cheat and win
    IF ~CheckStatGT(Player1,22,DEX)
        Global("EU#LenaCheatPlayRound","LOCALS",2)~ THEN REPLY @1717 GOTO EU#LenaTalk.LoveTalk09#PlayerLoseKnowing
    IF ~CheckStatGT(Player1,22,DEX)
        !Global("EU#LenaCheatPlayRound","LOCALS",2)
        Global("EU#LenaPlayRound","LOCALS",5)~ THEN REPLY @1717 GOTO EU#LenaTalk.LoveTalk09#PlayerLoser
    IF ~CheckStatGT(Player1,22,DEX)
        Global("EU#LenaPlayerRealizedCheat","LOCALS",1)
        !Global("EU#LenaCheatPlayRound","LOCALS",2)
        !Global("EU#LenaPlayRound","LOCALS",5)~ THEN REPLY @1717 DO~IncrementGlobal("EU#LenaPlayRound","LOCALS",1) IncrementGlobal("EU#LenaCheatPlayRound","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#CheatWin
    IF ~CheckStatGT(Player1,22,DEX)
        Global("EU#LenaPlayerRealizedCheat","LOCALS",0)
        !Global("EU#LenaCheatPlayRound","LOCALS",2)
        !Global("EU#LenaPlayRound","LOCALS",5)~ THEN REPLY @1717 DO~IncrementGlobal("EU#LenaPlayRound","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#CheatWin

    //: realize Lena cheat
    IF ~Global("EU#LenaPlayerRealizedCheat","LOCALS",0)
        CheckStatGT(Player1,14,INT)
        !Global("EU#LenaPlayRound","LOCALS",4)~ THEN REPLY @1742 DO~SetGlobal("EU#LenaPlayerRealizedCheat","LOCALS",1) IncrementGlobal("EU#LenaPlayRound","LOCALS",1) IncrementGlobal("EU#LenaCheatPlayRound","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#RealizeCheat
    
    //: exit
    IF ~GlobalGT("EU#LenaPlayRound","LOCALS",0)~ THEN REPLY @1729 GOTO EU#LenaTalk.LoveTalk09#Exit
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk09#Win
    SAY @1713
    IF ~Global("EU#LenaCounts","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#2
    IF ~Global("EU#LenaCounts","LOCALS",0)~ GOTO EU#LenaTalk.LoveTalk09#3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk09#Exit
    SAY @1730
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk09#RealizeCheat
    SAY @1721
    IF ~~ THEN REPLY @1722 GOTO EU#LenaTalk.LoveTalk09#RealizeCheat.1
    IF ~~ THEN REPLY @1725 GOTO EU#LenaTalk.LoveTalk09#RealizeCheat.2
    IF ~~ THEN REPLY @1728 GOTO EU#LenaTalk.LoveTalk09#Lose
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk09#RealizeCheat.1
    SAY @1723
    = @1724
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)
        IncrementGlobal("EU#LenaLike","LOCALS",-1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk09#RealizeCheat.2
    SAY @1726
    IF ~~ GOTO EU#LenaTalk.LoveTalk09#17
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk09#CheatWin
    SAY @1720
    IF ~Global("EU#LenaCounts","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#2
    IF ~Global("EU#LenaCounts","LOCALS",0)~ GOTO EU#LenaTalk.LoveTalk09#3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk09#Cheat
    SAY @1719
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk09#Lose
    SAY @1714
    IF ~Global("EU#LenaCounts","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk09#2
    IF ~Global("EU#LenaCounts","LOCALS",0)~ GOTO EU#LenaTalk.LoveTalk09#3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk09#PlayerLoser
    SAY @1711
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk09#PlayerLoseKnowing
    SAY @1712
    IF ~~ GOTO EU#LenaTalk.LoveTalk09#17
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk09#17
    SAY @1727
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

//////////////////////////////////
//:.  Lovetalk: Tattoo (#10)  .://
//////////////////////////////////

IF ~Global("EU#LenaLoveTalk","LOCALS",20)~ BEGIN EU#LenaTalk.LoveTalk10
    SAY @1801
    IF ~~ THEN REPLY @1802 GOTO EU#LenaTalk.LoveTalk10#2
    IF ~Gender(Player1,FEMALE)~ THEN REPLY @1869 GOTO EU#LenaTalk.LoveTalk10#1-1
    IF ~Gender(Player1,MALE)~ THEN REPLY @1869 GOTO EU#LenaTalk.LoveTalk10#1-2
    IF ~Gender(Player1,FEMALE)~ THEN REPLY @1872 GOTO EU#LenaTalk.LoveTalk10#1-1
    IF ~Gender(Player1,MALE)~ THEN REPLY @1872 GOTO EU#LenaTalk.LoveTalk10#1-2
    IF ~~ THEN REPLY @1873 GOTO EU#LenaTalk.LoveTalk10#1.4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk10#1.4
    SAY @1874
    IF ~~ DO ~SetGlobal("EU#LenaKillRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk10.1.2.1.4.1
    SAY @1826
    = @1827
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk10.1.2.1.4.2-1
    SAY @1829
    = @1831
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk10.1.2.1.4.2-2
    SAY @1830
    = @1831
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk10.1.1.1
    SAY @1807
    = @1808
    = @1809
    = @1810
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk10.1.6.1.1
    SAY @1850
    IF ~~ THEN REPLY @1851 GOTO EU#LenaTalk.LoveTalk10#12
    IF ~~ THEN REPLY @1853 DO ~IncrementGlobal("EU#LenaLike","LOCALS",-1)~ GOTO EU#LenaTalk.LoveTalk10#11
    IF ~~ THEN REPLY @1855 DO ~IncrementGlobal("EU#LenaLike","LOCALS",-1)~ GOTO EU#LenaTalk.LoveTalk10#11
    IF ~~ THEN REPLY @1856 DO ~IncrementGlobal("EU#LenaLike","LOCALS",-1)~ GOTO EU#LenaTalk.LoveTalk10#11
    IF ~~ THEN REPLY @1857 DO ~IncrementGlobal("EU#LenaLike","LOCALS",-1)~ GOTO EU#LenaTalk.LoveTalk10#11
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk10#1-1
    SAY @1870
    IF ~~ GOTO EU#LenaTalk.LoveTalk10#2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk10#1-2
    SAY @1871
    IF ~~ GOTO EU#LenaTalk.LoveTalk10#2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk10#2
    SAY @1803
    IF ~~ THEN REPLY @1804 GOTO EU#LenaTalk.LoveTalk10#3
    IF ~~ THEN REPLY @1812 DO ~SetGlobal("EU#LenaPlayerHasArmTattoo","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk10#4
    IF ~~ THEN REPLY @1841 DO ~SetGlobal("EU#LenaPlayerHasShoulderTattoo","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk10#5
    IF ~~ THEN REPLY @1843 DO ~SetGlobal("EU#LenaPlayerHasBackTattoo","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk10#6
    IF ~~ THEN REPLY @1845 DO ~SetGlobal("EU#LenaPlayerHasAnkleTattoo","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk10#7
    IF ~~ THEN REPLY @1847 GOTO EU#LenaTalk.LoveTalk10#8
    IF ~~ THEN REPLY @1864 GOTO EU#LenaTalk.LoveTalk10.1.7
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk10.1.7
    SAY @1865
    = @1866
    = @1867
    = @1868
    IF ~~ THEN REPLY @1804 GOTO EU#LenaTalk.LoveTalk10#3
    IF ~~ THEN REPLY @1812 DO ~SetGlobal("EU#LenaPlayerHasArmTattoo","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk10#4
    IF ~~ THEN REPLY @1841 DO ~SetGlobal("EU#LenaPlayerHasShoulderTattoo","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk10#5
    IF ~~ THEN REPLY @1843 DO ~SetGlobal("EU#LenaPlayerHasBackTattoo","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk10#6
    IF ~~ THEN REPLY @1845 DO ~SetGlobal("EU#LenaPlayerHasAnkleTattoo","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk10#7
    IF ~~ THEN REPLY @1847 GOTO EU#LenaTalk.LoveTalk10#8
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk10#3
    SAY @1805
    IF ~~ THEN REPLY @1806 GOTO EU#LenaTalk.LoveTalk10.1.1.1
    IF ~~ THEN REPLY @1811 GOTO EU#LenaTalk.LoveTalk10#21
    IF ~~ THEN REPLY @1820 GOTO EU#LenaTalk.LoveTalk10#25
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk10#4
    SAY @1813
    IF ~~ THEN REPLY @1814 GOTO EU#LenaTalk.LoveTalk10#19
    IF ~~ THEN REPLY @1836 GOTO EU#LenaTalk.LoveTalk10#19
    IF ~~ THEN REPLY @1837 GOTO EU#LenaTalk.LoveTalk10#19
    IF ~~ THEN REPLY @1838 GOTO EU#LenaTalk.LoveTalk10#19
    IF ~~ THEN REPLY @1839 GOTO EU#LenaTalk.LoveTalk10#19
    IF ~~ THEN REPLY @1840 GOTO EU#LenaTalk.LoveTalk10#19
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk10#5
    SAY @1842
    IF ~~ THEN REPLY @1814 GOTO EU#LenaTalk.LoveTalk10#19
    IF ~~ THEN REPLY @1836 GOTO EU#LenaTalk.LoveTalk10#19
    IF ~~ THEN REPLY @1837 GOTO EU#LenaTalk.LoveTalk10#19
    IF ~~ THEN REPLY @1838 GOTO EU#LenaTalk.LoveTalk10#19
    IF ~~ THEN REPLY @1839 GOTO EU#LenaTalk.LoveTalk10#19
    IF ~~ THEN REPLY @1840 GOTO EU#LenaTalk.LoveTalk10#19
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk10#6
    SAY @1844
    IF ~~ THEN REPLY @1814 GOTO EU#LenaTalk.LoveTalk10#19
    IF ~~ THEN REPLY @1836 GOTO EU#LenaTalk.LoveTalk10#19
    IF ~~ THEN REPLY @1837 GOTO EU#LenaTalk.LoveTalk10#19
    IF ~~ THEN REPLY @1838 GOTO EU#LenaTalk.LoveTalk10#19
    IF ~~ THEN REPLY @1839 GOTO EU#LenaTalk.LoveTalk10#19
    IF ~~ THEN REPLY @1840 GOTO EU#LenaTalk.LoveTalk10#19
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk10#7
    SAY @1846
    IF ~~ THEN REPLY @1814 GOTO EU#LenaTalk.LoveTalk10#19
    IF ~~ THEN REPLY @1836 GOTO EU#LenaTalk.LoveTalk10#19
    IF ~~ THEN REPLY @1837 GOTO EU#LenaTalk.LoveTalk10#19
    IF ~~ THEN REPLY @1838 GOTO EU#LenaTalk.LoveTalk10#19
    IF ~~ THEN REPLY @1839 GOTO EU#LenaTalk.LoveTalk10#19
    IF ~~ THEN REPLY @1840 GOTO EU#LenaTalk.LoveTalk10#19
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk10#8
    SAY @1848
    IF ~~ THEN REPLY @1849 GOTO EU#LenaTalk.LoveTalk10.1.6.1.1
    IF ~~ THEN REPLY @1858 GOTO EU#LenaTalk.LoveTalk10#11
    IF ~~ THEN REPLY @1859 GOTO EU#LenaTalk.LoveTalk10#10
    IF ~~ THEN REPLY @1860 GOTO EU#LenaTalk.LoveTalk10#10
    IF ~~ THEN REPLY @1861 GOTO EU#LenaTalk.LoveTalk10#10
    IF ~~ THEN REPLY @1862 GOTO EU#LenaTalk.LoveTalk10#10
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk10#12
    SAY @1852
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk10#10
    SAY @1863
    IF ~Global("EU#LenaPlayerHasShoulderTattoo","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk10#5
    IF ~Global("EU#LenaPlayerHasArmTattoo","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk10#4
    IF ~Global("EU#LenaPlayerHasBackTattoo","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk10#6
    IF ~Global("EU#LenaPlayerHasAnkleTattoo","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk10#7
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk10#11
    SAY @1854
    IF ~~ GOTO EU#LenaTalk.LoveTalk10#12
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk10#19
    SAY @1815
    = @1816
    IF ~~ THEN REPLY @1817 GOTO EU#LenaTalk.LoveTalk10#20
    IF ~~ THEN REPLY @1819 GOTO EU#LenaTalk.LoveTalk10#20
    IF ~~ THEN REPLY @1820 GOTO EU#LenaTalk.LoveTalk10#25
    IF ~~ THEN REPLY @1822 GOTO EU#LenaTalk.LoveTalk10#21
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk10#20
    SAY @1818
    IF ~~ GOTO EU#LenaTalk.LoveTalk10#21
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk10#25
    SAY @1821
    IF ~~ GOTO EU#LenaTalk.LoveTalk10#21
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk10#21
    SAY @1823
    = @1824
    IF ~~ THEN REPLY @1825 DO ~IncrementGlobal("EU#LenaLike","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk10.1.2.1.4.1
    IF ~GlobalGT("EU#LenaLike","LOCALS",3)~ THEN REPLY @1828 GOTO EU#LenaTalk.LoveTalk10.1.2.1.4.2-1
    IF ~!GlobalGT("EU#LenaLike","LOCALS",3)~ THEN REPLY @1828 GOTO EU#LenaTalk.LoveTalk10.1.2.1.4.2-2
    IF ~OR(4)
        Global("EU#LenaPlayerHasArmTattoo","LOCALS",1)
        Global("EU#LenaPlayerHasBackTattoo","LOCALS",1)
        Global("EU#LenaPlayerHasShoulderTattoo","LOCALS",1)
        Global("EU#LenaPlayerHasAnkleTattoo","LOCALS",1)~ THEN REPLY @1832 GOTO EU#LenaTalk.LoveTalk10#24
    IF ~!Global("EU#LenaPlayerHasArmTattoo","LOCALS",1)
        !Global("EU#LenaPlayerHasBackTattoo","LOCALS",1)
        !Global("EU#LenaPlayerHasShoulderTattoo","LOCALS",1)
        !Global("EU#LenaPlayerHasAnkleTattoo","LOCALS",1)~ THEN REPLY @1835 GOTO EU#LenaTalk.LoveTalk10#24
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk10#24
    SAY @1833
    = @1834
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

///////////////////////////////////
//:.  Lovetalk: Cooking (#11)  .://
///////////////////////////////////

IF ~Global("EU#LenaLoveTalk","LOCALS",22)~ BEGIN EU#LenaTalk.LoveTalk11
    SAY @1901
    IF ~~ THEN REPLY @1902 GOTO EU#LenaTalk.LoveTalk11.1
    IF ~~ THEN REPLY @1958 GOTO EU#LenaTalk.LoveTalk11#20
    IF ~~ THEN REPLY @1959 GOTO EU#LenaTalk.LoveTalk11#20
    IF ~~ THEN REPLY @1960 GOTO EU#LenaTalk.LoveTalk11.4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk11.1
    SAY @1903
    IF ~~ GOTO EU#LenaTalk.LoveTalk11#20
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk11.4
    SAY @1961
    IF ~~ DO ~SetGlobal("EU#LenaKillRomance","LOCALS",1)
        RestParty()~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk11.1.2.4.6
    SAY @1929
    IF ~~ THEN REPLY @1930 GOTO EU#LenaTalk.LoveTalk11.1.2.4.6.1
    IF ~~ THEN REPLY @1934 GOTO EU#LenaTalk.LoveTalk11.1.2.4.6.2
    IF ~~ THEN REPLY @1937 GOTO EU#LenaTalk.LoveTalk11#13
    IF ~~ THEN REPLY @1939 DO ~IncrementGlobal("EU#LenaLike","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk11#11
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk11.1.2.4.6.1
    SAY @1931
    IF ~~ GOTO EU#LenaTalk.LoveTalk11#12
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk11.1.2.4.6.2
    SAY @1935
    = @1936
    IF ~~ GOTO EU#LenaTalk.LoveTalk11#12
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk11.1.2.4.7
    SAY @1942
    IF ~~ THEN REPLY @1943 GOTO EU#LenaTalk.LoveTalk11.1.2.4.7.1
    IF ~~ THEN REPLY @1945 GOTO EU#LenaTalk.LoveTalk11.1.2.4.7.2
    IF ~~ THEN REPLY @1947 GOTO EU#LenaTalk.LoveTalk11.1.2.4.7.3
    IF ~~ THEN REPLY @1939 DO ~IncrementGlobal("EU#LenaLike","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk11#11
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk11.1.2.4.7.1
    SAY @1944
    IF ~~ GOTO EU#LenaTalk.LoveTalk11#12
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk11.1.2.4.7.2
    SAY @1946
    IF ~~ GOTO EU#LenaTalk.LoveTalk11#12
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk11.1.2.4.7.3
    SAY @1948
    IF ~~ DO ~SetGlobal("EU#LenaTeachCooking","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk11#12
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk11.1.1
    SAY @1915
    IF ~~ THEN REPLY @1916 DO ~IncrementGlobal("EU#LenaLike","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk11#1
    IF ~~ THEN REPLY @1954 DO ~IncrementGlobal("EU#LenaLike","LOCALS",-1)~ GOTO EU#LenaTalk.LoveTalk11#2
    IF ~~ THEN REPLY @1956 GOTO EU#LenaTalk.LoveTalk11#3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk11#1
    SAY @1917
    IF ~~ GOTO EU#LenaTalk.LoveTalk11#4
END    

IF ~~ BEGIN EU#LenaTalk.LoveTalk11#2
    SAY @1955
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)
        RestParty()~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk11#3
    SAY @1957
    IF ~~ GOTO EU#LenaTalk.LoveTalk11#4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk11#4
    SAY @1918
    IF ~~ THEN REPLY @1919 GOTO EU#LenaTalk.LoveTalk11#5
    IF ~~ THEN REPLY @1921 GOTO EU#LenaTalk.LoveTalk11#6
    IF ~~ THEN REPLY @1923 GOTO EU#LenaTalk.LoveTalk11#7
    IF ~~ THEN REPLY @1925 GOTO EU#LenaTalk.LoveTalk11#8
    IF ~~ THEN REPLY @1949 GOTO EU#LenaTalk.LoveTalk11#9
    IF ~~ THEN REPLY @1951 DO ~IncrementGlobal("EU#LenaLike","LOCALS",-1)~ GOTO EU#LenaTalk.LoveTalk11#10
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk11#5
    SAY @1920
    IF ~~ THEN REPLY @1921 GOTO EU#LenaTalk.LoveTalk11#6
    IF ~~ THEN REPLY @1923 GOTO EU#LenaTalk.LoveTalk11#7
    IF ~~ THEN REPLY @1925 GOTO EU#LenaTalk.LoveTalk11#8
    IF ~~ THEN REPLY @1949 GOTO EU#LenaTalk.LoveTalk11#9
    IF ~~ THEN REPLY @1951 DO ~IncrementGlobal("EU#LenaLike","LOCALS",-1)~ GOTO EU#LenaTalk.LoveTalk11#10
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk11#6
    SAY @1922
    IF ~~ THEN REPLY @1919 GOTO EU#LenaTalk.LoveTalk11#5
    IF ~~ THEN REPLY @1923 GOTO EU#LenaTalk.LoveTalk11#7
    IF ~~ THEN REPLY @1925 GOTO EU#LenaTalk.LoveTalk11#8
    IF ~~ THEN REPLY @1949 GOTO EU#LenaTalk.LoveTalk11#9
    IF ~~ THEN REPLY @1951 DO ~IncrementGlobal("EU#LenaLike","LOCALS",-1)~ GOTO EU#LenaTalk.LoveTalk11#10
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk11#7
    SAY @1924
    IF ~~ THEN REPLY @1919 GOTO EU#LenaTalk.LoveTalk11#5
    IF ~~ THEN REPLY @1921 GOTO EU#LenaTalk.LoveTalk11#6
    IF ~~ THEN REPLY @1925 GOTO EU#LenaTalk.LoveTalk11#8
    IF ~~ THEN REPLY @1949 GOTO EU#LenaTalk.LoveTalk11#9
    IF ~~ THEN REPLY @1951 DO ~IncrementGlobal("EU#LenaLike","LOCALS",-1)~ GOTO EU#LenaTalk.LoveTalk11#10
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk11#8
    SAY @1926
    IF ~~ THEN REPLY @1919 GOTO EU#LenaTalk.LoveTalk11#5
    IF ~~ THEN REPLY @1921 GOTO EU#LenaTalk.LoveTalk11#6
    IF ~~ THEN REPLY @1923 GOTO EU#LenaTalk.LoveTalk11#7
    IF ~~ THEN REPLY @1949 GOTO EU#LenaTalk.LoveTalk11#9
    IF ~~ THEN REPLY @1951 DO ~IncrementGlobal("EU#LenaLike","LOCALS",-1)~ GOTO EU#LenaTalk.LoveTalk11#10
    IF ~~ THEN REPLY @1928 GOTO EU#LenaTalk.LoveTalk11.1.2.4.6
    IF ~~ THEN REPLY @1941 GOTO EU#LenaTalk.LoveTalk11.1.2.4.7
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk11#9
    SAY @1950
    IF ~~ THEN REPLY @1919 GOTO EU#LenaTalk.LoveTalk11#5
    IF ~~ THEN REPLY @1921 GOTO EU#LenaTalk.LoveTalk11#6
    IF ~~ THEN REPLY @1923 GOTO EU#LenaTalk.LoveTalk11#7
    IF ~~ THEN REPLY @1925 GOTO EU#LenaTalk.LoveTalk11#8
    IF ~~ THEN REPLY @1951 DO ~IncrementGlobal("EU#LenaLike","LOCALS",-1)~ GOTO EU#LenaTalk.LoveTalk11#10
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk11#10
    SAY @1952
    = @1953
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)
        RestParty()~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk11#11
    SAY @1940
    IF ~~ GOTO EU#LenaTalk.LoveTalk11#13
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk11#12
    SAY @1932
    IF ~Global("EU#LenaTeachCooking","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk11#12-2
    IF ~!Global("EU#LenaTeachCooking","LOCALS",1)~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)
        RestParty()~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk11#12-2
    SAY @1933
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)
        RestParty()~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk11#13
    SAY @1938
    IF ~~ DO ~SetGlobal("EU#LenaTeachCooking","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk11#12
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk11#20
    SAY @1904
    = @1905
    = @1906
    = @1907
    IF ~~ GOTO EU#LenaTalk.LoveTalk11#20-1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk11#20-1
    SAY @1908
    = @1909
    = @1910
    = @1911
    = @1912
    = @1913
    IF ~~ THEN REPLY @1914 GOTO EU#LenaTalk.LoveTalk11.1.1
    IF ~~ THEN REPLY @1916 DO ~IncrementGlobal("EU#LenaLike","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk11#1
    IF ~~ THEN REPLY @1954 DO ~IncrementGlobal("EU#LenaLike","LOCALS",-1)~ GOTO EU#LenaTalk.LoveTalk11#2
    IF ~~ THEN REPLY @1956 GOTO EU#LenaTalk.LoveTalk11#3
END

///////////////////////////////////
//:.  Lovetalk: Drawing (#12)  .://
///////////////////////////////////

IF ~Global("EU#LenaLoveTalk","LOCALS",24)~ BEGIN EU#LenaTalk.LoveTalk12
    SAY @2001
    IF ~~ GOTO EU#LenaTalk.LoveTalk12-1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk12-1
    SAY @2002
    IF ~~ THEN REPLY @2003 GOTO EU#LenaTalk.LoveTalk12.1
    IF ~~ THEN REPLY @2072 GOTO EU#LenaTalk.LoveTalk12.2
    IF ~~ THEN REPLY @2074 GOTO EU#LenaTalk.LoveTalk12.3
    IF ~~ THEN REPLY @2076 GOTO EU#LenaTalk.LoveTalk12.4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk12.1
    SAY @2004
    IF ~~ THEN REPLY @2005 GOTO EU#LenaTalk.LoveTalk12#1
    IF ~Global("EU#LenaWarnDrawing","LOCALS",1)~ THEN REPLY @2064 GOTO EU#LenaTalk.LoveTalk12#6
    IF ~Global("EU#LenaWarnDrawing","LOCALS",1)~ THEN REPLY @2066 GOTO EU#LenaTalk.LoveTalk12#6
    IF ~Global("EU#LenaWarnDrawing","LOCALS",1)~ THEN REPLY @2068 GOTO EU#LenaTalk.LoveTalk12#6
    IF ~Global("EU#LenaWarnDrawing","LOCALS",1)~ THEN REPLY @2070 GOTO EU#LenaTalk.LoveTalk12#6
    IF ~!Global("EU#LenaWarnDrawing","LOCALS",1)~ THEN REPLY @2064 DO ~SetGlobal("EU#LenaWarnDrawing","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk12#2
    IF ~!Global("EU#LenaWarnDrawing","LOCALS",1)~ THEN REPLY @2066 DO ~SetGlobal("EU#LenaWarnDrawing","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk12#3
    IF ~!Global("EU#LenaWarnDrawing","LOCALS",1)~ THEN REPLY @2068 DO ~SetGlobal("EU#LenaWarnDrawing","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk12#4
    IF ~!Global("EU#LenaWarnDrawing","LOCALS",1)~ THEN REPLY @2070 DO ~SetGlobal("EU#LenaWarnDrawing","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk12#6
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk12.2
    SAY @2073
    IF ~~ THEN REPLY @2005 GOTO EU#LenaTalk.LoveTalk12#1
    IF ~Global("EU#LenaWarnDrawing","LOCALS",1)~ THEN REPLY @2064 GOTO EU#LenaTalk.LoveTalk12#6
    IF ~Global("EU#LenaWarnDrawing","LOCALS",1)~ THEN REPLY @2066 GOTO EU#LenaTalk.LoveTalk12#6
    IF ~Global("EU#LenaWarnDrawing","LOCALS",1)~ THEN REPLY @2068 GOTO EU#LenaTalk.LoveTalk12#6
    IF ~Global("EU#LenaWarnDrawing","LOCALS",1)~ THEN REPLY @2070 GOTO EU#LenaTalk.LoveTalk12#6
    IF ~!Global("EU#LenaWarnDrawing","LOCALS",1)~ THEN REPLY @2064 DO ~SetGlobal("EU#LenaWarnDrawing","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk12#2
    IF ~!Global("EU#LenaWarnDrawing","LOCALS",1)~ THEN REPLY @2066 DO ~SetGlobal("EU#LenaWarnDrawing","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk12#3
    IF ~!Global("EU#LenaWarnDrawing","LOCALS",1)~ THEN REPLY @2068 DO ~SetGlobal("EU#LenaWarnDrawing","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk12#4
    IF ~!Global("EU#LenaWarnDrawing","LOCALS",1)~ THEN REPLY @2070 DO ~SetGlobal("EU#LenaWarnDrawing","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk12#6
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk12.3
    SAY @2075
    IF ~~ THEN REPLY @2005 GOTO EU#LenaTalk.LoveTalk12#1
    IF ~Global("EU#LenaWarnDrawing","LOCALS",1)~ THEN REPLY @2064 GOTO EU#LenaTalk.LoveTalk12#6
    IF ~Global("EU#LenaWarnDrawing","LOCALS",1)~ THEN REPLY @2066 GOTO EU#LenaTalk.LoveTalk12#6
    IF ~Global("EU#LenaWarnDrawing","LOCALS",1)~ THEN REPLY @2068 GOTO EU#LenaTalk.LoveTalk12#6
    IF ~Global("EU#LenaWarnDrawing","LOCALS",1)~ THEN REPLY @2070 GOTO EU#LenaTalk.LoveTalk12#6
    IF ~!Global("EU#LenaWarnDrawing","LOCALS",1)~ THEN REPLY @2064 DO ~SetGlobal("EU#LenaWarnDrawing","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk12#2
    IF ~!Global("EU#LenaWarnDrawing","LOCALS",1)~ THEN REPLY @2066 DO ~SetGlobal("EU#LenaWarnDrawing","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk12#3
    IF ~!Global("EU#LenaWarnDrawing","LOCALS",1)~ THEN REPLY @2068 DO ~SetGlobal("EU#LenaWarnDrawing","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk12#4
    IF ~!Global("EU#LenaWarnDrawing","LOCALS",1)~ THEN REPLY @2070 DO ~SetGlobal("EU#LenaWarnDrawing","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk12#6
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk12.4
    SAY @2077
    IF ~~ DO ~SetGlobal("EU#LenaKillRomance","LOCALS",1)
        RestParty()~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk12.1.1.1.2.1.1
    SAY @2036
    = @2037
    IF ~~ GOTO EU#LenaTalk.LoveTalk12#8
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk12.1.1.1.2.1.2
    SAY @2041
    IF ~~ GOTO EU#LenaTalk.LoveTalk12#8
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk12.1.1.1.2.1.4
    SAY @2046
    = @2047
    IF ~~ GOTO EU#LenaTalk.LoveTalk12#14
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk12.1.1.1.2.1.5
    SAY @2049
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)
        RestParty()~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk12.1.1.1
    SAY @2009
    IF ~~ THEN REPLY @2010 GOTO EU#LenaTalk.LoveTalk12#10
    IF ~~ THEN REPLY @2026 GOTO EU#LenaTalk.LoveTalk12#11
    IF ~~ THEN REPLY @2058 GOTO EU#LenaTalk.LoveTalk12#12
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk12.1.1.2
    SAY @2061
    IF ~~ THEN REPLY @2010 GOTO EU#LenaTalk.LoveTalk12#10
    IF ~~ THEN REPLY @2026 GOTO EU#LenaTalk.LoveTalk12#11
    IF ~~ THEN REPLY @2058 GOTO EU#LenaTalk.LoveTalk12#12
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk12.1.1.3
    SAY @2063
    IF ~~ THEN REPLY @2010 GOTO EU#LenaTalk.LoveTalk12#10
    IF ~~ THEN REPLY @2026 GOTO EU#LenaTalk.LoveTalk12#11
    IF ~~ THEN REPLY @2058 GOTO EU#LenaTalk.LoveTalk12#12
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk12.1.1.1.1.1
    SAY @2015
    IF ~~ THEN REPLY @2016 DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)
        RestParty()~ EXIT
    IF ~~ THEN REPLY @2017 GOTO EU#LenaTalk.LoveTalk12.1.1.1.1.1.2
    IF ~~ THEN REPLY @2020 GOTO EU#LenaTalk.LoveTalk12.1.1.1.1.1.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk12.1.1.1.1.1.2
    SAY @2018
    = @2019
    IF ~~ GOTO EU#LenaTalk.LoveTalk12#9
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk12.1.1.1.1.1.3
    SAY @2021
    IF ~~ GOTO EU#LenaTalk.LoveTalk12#9
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk12.1.1.1.1.2
    SAY @2023
    IF ~~ GOTO EU#LenaTalk.LoveTalk12#9
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk12.1.1.1.1.3
    SAY @2025
    IF ~~ GOTO EU#LenaTalk.LoveTalk12#9
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk12.1.1.1.2.1
    SAY @2032
    IF ~~ GOTO EU#LenaTalk.LoveTalk12#9
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk12.1.1.1.2.3
    SAY @2052
    IF ~~ GOTO EU#LenaTalk.LoveTalk12#9
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk12.1.1.1.2.4
    SAY @2054
    IF ~~ GOTO EU#LenaTalk.LoveTalk12#9
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk12.1.1.1.2.5
    SAY @2056
    = @2057
    IF ~~ DO ~IncrementGlobal("EU#LenaLike","LOCALS",-3)
        SetGlobal("EU#LenaIncrementRomance","LOCALS",1)
        RestParty()~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk12#1
    SAY @2006
    = @2007
    IF ~~ THEN REPLY @2008 GOTO EU#LenaTalk.LoveTalk12.1.1.1
    IF ~~ THEN REPLY @2060 GOTO EU#LenaTalk.LoveTalk12.1.1.2
    IF ~~ THEN REPLY @2062 GOTO EU#LenaTalk.LoveTalk12.1.1.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk12#2
    SAY @2065
    IF ~~ THEN REPLY @2005 GOTO EU#LenaTalk.LoveTalk12#1
    IF ~Global("EU#LenaWarnDrawing","LOCALS",1)~ THEN REPLY @2066 GOTO EU#LenaTalk.LoveTalk12#6
    IF ~Global("EU#LenaWarnDrawing","LOCALS",1)~ THEN REPLY @2068 GOTO EU#LenaTalk.LoveTalk12#6
    IF ~Global("EU#LenaWarnDrawing","LOCALS",1)~ THEN REPLY @2070 GOTO EU#LenaTalk.LoveTalk12#6
    IF ~!Global("EU#LenaWarnDrawing","LOCALS",1)~ THEN REPLY @2066 DO ~SetGlobal("EU#LenaWarnDrawing","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk12#3
    IF ~!Global("EU#LenaWarnDrawing","LOCALS",1)~ THEN REPLY @2068 DO ~SetGlobal("EU#LenaWarnDrawing","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk12#4
    IF ~!Global("EU#LenaWarnDrawing","LOCALS",1)~ THEN REPLY @2070 DO ~SetGlobal("EU#LenaWarnDrawing","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk12#6
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk12#3
    SAY @2067
    IF ~~ THEN REPLY @2005 GOTO EU#LenaTalk.LoveTalk12#1
    IF ~Global("EU#LenaWarnDrawing","LOCALS",1)~ THEN REPLY @2064 GOTO EU#LenaTalk.LoveTalk12#6
    IF ~Global("EU#LenaWarnDrawing","LOCALS",1)~ THEN REPLY @2068 GOTO EU#LenaTalk.LoveTalk12#6
    IF ~Global("EU#LenaWarnDrawing","LOCALS",1)~ THEN REPLY @2070 GOTO EU#LenaTalk.LoveTalk12#6
    IF ~!Global("EU#LenaWarnDrawing","LOCALS",1)~ THEN REPLY @2064 DO ~SetGlobal("EU#LenaWarnDrawing","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk12#2
    IF ~!Global("EU#LenaWarnDrawing","LOCALS",1)~ THEN REPLY @2068 DO ~SetGlobal("EU#LenaWarnDrawing","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk12#4
    IF ~!Global("EU#LenaWarnDrawing","LOCALS",1)~ THEN REPLY @2070 DO ~SetGlobal("EU#LenaWarnDrawing","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk12#6
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk12#4
    SAY @2069
    IF ~~ THEN REPLY @2005 GOTO EU#LenaTalk.LoveTalk12#1
    IF ~Global("EU#LenaWarnDrawing","LOCALS",1)~ THEN REPLY @2064 GOTO EU#LenaTalk.LoveTalk12#6
    IF ~Global("EU#LenaWarnDrawing","LOCALS",1)~ THEN REPLY @2066 GOTO EU#LenaTalk.LoveTalk12#6
    IF ~Global("EU#LenaWarnDrawing","LOCALS",1)~ THEN REPLY @2070 GOTO EU#LenaTalk.LoveTalk12#6
    IF ~!Global("EU#LenaWarnDrawing","LOCALS",1)~ THEN REPLY @2064 DO ~SetGlobal("EU#LenaWarnDrawing","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk12#2
    IF ~!Global("EU#LenaWarnDrawing","LOCALS",1)~ THEN REPLY @2066 DO ~SetGlobal("EU#LenaWarnDrawing","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk12#3
    IF ~!Global("EU#LenaWarnDrawing","LOCALS",1)~ THEN REPLY @2070 DO ~SetGlobal("EU#LenaWarnDrawing","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk12#6
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk12#6
    SAY @2071
    IF ~~ GOTO EU#LenaTalk.LoveTalk12#1
END    

IF ~~ BEGIN EU#LenaTalk.LoveTalk12#8
    SAY @2038
    = @2039
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)
        RestParty()~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk12#9
    SAY @2033
    = @2034
    IF ~~ THEN REPLY @2035 GOTO EU#LenaTalk.LoveTalk12.1.1.1.2.1.1
    IF ~~ THEN REPLY @2040 GOTO EU#LenaTalk.LoveTalk12.1.1.1.2.1.2
    IF ~~ THEN REPLY @2042 GOTO EU#LenaTalk.LoveTalk12#14
    IF ~~ THEN REPLY @2045 DO ~IncrementGlobal("EU#LenaLike","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk12.1.1.1.2.1.4
    IF ~~ THEN REPLY @2048 DO ~IncrementGlobal("EU#LenaLike","LOCALS",-2)~ GOTO EU#LenaTalk.LoveTalk12.1.1.1.2.1.5
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk12#10
    SAY @2011
    = @2012
    = @2013
    IF ~~ THEN REPLY @2014 GOTO EU#LenaTalk.LoveTalk12.1.1.1.1.1
    IF ~~ THEN REPLY @2022 GOTO EU#LenaTalk.LoveTalk12.1.1.1.1.2
    IF ~~ THEN REPLY @2024 DO ~IncrementGlobal("EU#LenaLike","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk12.1.1.1.1.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk12#11
    SAY @2027
    = @2028
    = @2029
    = @2030
    IF ~~ THEN REPLY @2031 GOTO EU#LenaTalk.LoveTalk12.1.1.1.2.1
    IF ~~ THEN REPLY @2050 GOTO EU#LenaTalk.LoveTalk12#9
    IF ~~ THEN REPLY @2051 GOTO EU#LenaTalk.LoveTalk12.1.1.1.2.3
    IF ~~ THEN REPLY @2053 GOTO EU#LenaTalk.LoveTalk12.1.1.1.2.4
    IF ~~ THEN REPLY @2055 GOTO EU#LenaTalk.LoveTalk12.1.1.1.2.5
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk12#12
    SAY @2059
    IF ~~ GOTO EU#LenaTalk.LoveTalk12#9
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk12#14
    SAY @2043
    = @2044
    IF ~~ GOTO EU#LenaTalk.LoveTalk12#8
END

/////////////////////////////////////
//:.  Lovetalk: Why Scorn (#13)  .://
/////////////////////////////////////

IF ~Global("EU#LenaLoveTalk","LOCALS",26)~ BEGIN EU#LenaTalk.LoveTalk13
    SAY @2101
    IF ~~ THEN REPLY @2102 GOTO EU#LenaTalk.LoveTalk13.1
    IF ~~ THEN REPLY @2104 GOTO EU#LenaTalk.LoveTalk13.2
    IF ~~ THEN REPLY @2106 GOTO EU#LenaTalk.LoveTalk13.3
    IF ~~ THEN REPLY @2108 GOTO EU#LenaTalk.LoveTalk13.4
    IF ~~ THEN REPLY @2127 GOTO EU#LenaTalk.LoveTalk13.5
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk13.1
    SAY @2103
    IF ~~ THEN REPLY @2110 GOTO EU#LenaTalk.LoveTalk13#1
    IF ~~ THEN REPLY @2123 GOTO EU#LenaTalk.LoveTalk13#2
    IF ~~ THEN REPLY @2125 GOTO EU#LenaTalk.LoveTalk13#3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk13.2
    SAY @2105
    IF ~~ THEN REPLY @2110 GOTO EU#LenaTalk.LoveTalk13#1
    IF ~~ THEN REPLY @2123 GOTO EU#LenaTalk.LoveTalk13#2
    IF ~~ THEN REPLY @2125 GOTO EU#LenaTalk.LoveTalk13#3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk13.3
    SAY @2107
    IF ~~ THEN REPLY @2110 GOTO EU#LenaTalk.LoveTalk13#1
    IF ~~ THEN REPLY @2123 GOTO EU#LenaTalk.LoveTalk13#2
    IF ~~ THEN REPLY @2125 GOTO EU#LenaTalk.LoveTalk13#3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk13.4
    SAY @2109
    IF ~~ THEN REPLY @2110 GOTO EU#LenaTalk.LoveTalk13#1
    IF ~~ THEN REPLY @2123 GOTO EU#LenaTalk.LoveTalk13#2
    IF ~~ THEN REPLY @2125 GOTO EU#LenaTalk.LoveTalk13#3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk13.5
    SAY @2128
    IF ~~ DO ~SetGlobal("EU#LenaKillRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk13.4.1.2
    SAY @2120
    IF ~~ GOTO EU#LenaTalk.LoveTalk13#5
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk13.4.1.3
    SAY @2122
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk13#1
    SAY @2111
    IF ~~ GOTO EU#LenaTalk.LoveTalk13#4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk13#2
    SAY @2124
    IF ~~ GOTO EU#LenaTalk.LoveTalk13#4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk13#3
    SAY @2126
    IF ~~ GOTO EU#LenaTalk.LoveTalk13#4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk13#4
    SAY @2112
    = @2113
    = @2114
    = @2115
    = @2116
    IF ~~ THEN REPLY @2117 GOTO EU#LenaTalk.LoveTalk13#5
    IF ~~ THEN REPLY @2119 GOTO EU#LenaTalk.LoveTalk13.4.1.2
    IF ~~ THEN REPLY @2121 GOTO EU#LenaTalk.LoveTalk13.4.1.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk13#5
    SAY @2118
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

////////////////////////////////////
//:.  Lovetalk: The Duel (#14)  .://
////////////////////////////////////

// Agility: speed, Dexterity 15 +2, Dexterity 17 +3, Dexterity 19 +5, Thief +3, Monk +2, Fighter +1
// MartialArts: basic martial experience, Fighter +6, Monk +4, Thief +3, Intelligence 15 +1, Intelligence 17 +3
// CloseCombat: actions related with close combat, Monk +5, Fighter/Thief +2, Strength 15 +2, Strength 17 +4
// "LenaDuelUsePower" increased Agility DC by 3, MartialArts DC by 2, disable CloseCombat completely (or reverse DC by 2)
// Lena (A,M,C) / Use Power: 6,7,4 / 9,9,6 

IF ~Global("EU#LenaLoveTalk","LOCALS",28)~ BEGIN EU#LenaTalk.LoveTalk14
    SAY @2201    

    IF ~True()~ //THEN REPLY ~TRUE~
    DO ~SetGlobal("EU#LenaDuelPlayerAgility","LOCALS",0)
        SetGlobal("EU#LenaDuelPlayerMartialArts","LOCALS",0)
        SetGlobal("EU#LenaDuelPlayerCloseCombat","LOCALS",0)
        SetGlobal("EU#LenaDuelPlayerFreeAction","LOCALS",0)~ 
    GOTO EU#LenaTalk.LoveTalk14.Dexterity

    //: not monk, not fighter, not thief, paladin and ranger are ignored because they are naturally good alignment which means Lena will not even spawn
    IF ~!Class(Player1,MONK)
        !Class(Player1,FIGHTER_ALL)
        !Class(Player1,THIEF_ALL)~ //THEN REPLY ~CLASS UNKNOWN~
    DO ~SetGlobal("EU#LenaDuelPlayerAgility","LOCALS",0)
        SetGlobal("EU#LenaDuelPlayerMartialArts","LOCALS",0)
        SetGlobal("EU#LenaDuelPlayerCloseCombat","LOCALS",0)
        SetGlobal("EU#LenaDuelPlayerFreeAction","LOCALS",0)~ 
    GOTO EU#LenaTalk.LoveTalk14.Dexterity

    //: thief (multi or dual), maybe thief/mage, thief/cleric etc..
    IF ~!Class(Player1,MONK)
        !Class(Player1,FIGHTER_ALL)
        Class(Player1,THIEF_ALL)~ //THEN REPLY ~THIEF~
    DO ~SetGlobal("EU#LenaDuelPlayerAgility","LOCALS",3)
        SetGlobal("EU#LenaDuelPlayerMartialArts","LOCALS",3)
        SetGlobal("EU#LenaDuelPlayerCloseCombat","LOCALS",2)
        SetGlobal("EU#LenaDuelPlayerFreeAction","LOCALS",0)~ 
    GOTO EU#LenaTalk.LoveTalk14.Dexterity

    //: fighter (multi or dual), maybe fighter/mage, fighter/cleric etc..
    IF ~!Class(Player1,MONK)
        Class(Player1,FIGHTER_ALL)
        !Class(Player1,THIEF_ALL)~ //THEN REPLY ~FIGHTER~ 
    DO ~SetGlobal("EU#LenaDuelPlayerAgility","LOCALS",1)
        SetGlobal("EU#LenaDuelPlayerMartialArts","LOCALS",6)
        SetGlobal("EU#LenaDuelPlayerCloseCombat","LOCALS",2)
        SetGlobal("EU#LenaDuelPlayerFreeAction","LOCALS",0)~ 
    GOTO EU#LenaTalk.LoveTalk14.Dexterity

    //: fighter/thief (multi or dual)
    IF ~!Class(Player1,MONK)
        Class(Player1,FIGHTER_ALL)
        Class(Player1,THIEF_ALL)~ //THEN REPLY ~FIGHTER/THIEF~ 
    DO ~SetGlobal("EU#LenaDuelPlayerAgility","LOCALS",4)
        SetGlobal("EU#LenaDuelPlayerMartialArts","LOCALS",9)
        SetGlobal("EU#LenaDuelPlayerCloseCombat","LOCALS",4)
        SetGlobal("EU#LenaDuelPlayerFreeAction","LOCALS",0)~ 
    GOTO EU#LenaTalk.LoveTalk14.Dexterity

    //: monk
    IF ~Class(Player1,MONK)~ //THEN REPLY ~MONK~ 
    DO ~SetGlobal("EU#LenaDuelPlayerAgility","LOCALS",2)
        SetGlobal("EU#LenaDuelPlayerMartialArts","LOCALS",4)
        SetGlobal("EU#LenaDuelPlayerCloseCombat","LOCALS",5)
        SetGlobal("EU#LenaDuelPlayerFreeAction","LOCALS",0)~ 
    GOTO EU#LenaTalk.LoveTalk14.Dexterity
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14.Dexterity
    SAY @2202
    IF ~True()~ //THEN REPLY ~TRUE~
        GOTO EU#LenaTalk.LoveTalk14.Intelligence
    IF ~CheckStatLT(Player1,15,DEX)~ //THEN REPLY ~DEX < 15~
        GOTO EU#LenaTalk.LoveTalk14.Intelligence
    IF ~CheckStatGT(Player1,14,DEX)
        CheckStatLT(Player1,17,DEX)~ //THEN REPLY ~14 < DEX < 17~
        DO ~IncrementGlobal("EU#LenaDuelPlayerAgility","LOCALS",2)~ 
        GOTO EU#LenaTalk.LoveTalk14.Intelligence
    IF ~CheckStatGT(Player1,16,DEX)
        CheckStatLT(Player1,19,DEX)~ //THEN REPLY ~16 < DEX < 19~
        DO ~IncrementGlobal("EU#LenaDuelPlayerAgility","LOCALS",3)~ 
        GOTO EU#LenaTalk.LoveTalk14.Intelligence
    IF ~CheckStatGT(Player1,18,DEX)~ //THEN REPLY ~DEX > 18~
        DO ~IncrementGlobal("EU#LenaDuelPlayerAgility","LOCALS",5)~ 
        GOTO EU#LenaTalk.LoveTalk14.Intelligence
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14.Intelligence
    SAY @2203

    IF ~True()~ //THEN REPLY ~TRUE~
        GOTO EU#LenaTalk.LoveTalk14.Strength
    IF ~CheckStatLT(Player1,15,INT)~ //THEN REPLY ~INT < 15~
        GOTO EU#LenaTalk.LoveTalk14.Strength
    IF ~CheckStatGT(Player1,14,INT)
        CheckStatLT(Player1,17,INT)~ //THEN REPLY ~14 < INT < 17~
        DO ~IncrementGlobal("EU#LenaDuelPlayerMartialArts","LOCALS",1)~ 
        GOTO EU#LenaTalk.LoveTalk14.Strength
    IF ~CheckStatGT(Player1,16,INT)~ //THEN REPLY ~INT > 16~
        DO ~IncrementGlobal("EU#LenaDuelPlayerMartialArts","LOCALS",3)~ 
        GOTO EU#LenaTalk.LoveTalk14.Strength
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14.Strength
    SAY @2204

    IF ~True()~ //THEN REPLY ~TRUE~
        GOTO EU#LenaTalk.LoveTalk14.FreeAction
    IF ~CheckStatLT(Player1,15,STR)~ //THEN REPLY ~15 > STR~
        GOTO EU#LenaTalk.LoveTalk14.FreeAction
    IF ~CheckStatGT(Player1,14,STR)
        CheckStatLT(Player1,17,STR)~ //THEN REPLY ~14 < STR < 17~
        DO ~IncrementGlobal("EU#LenaDuelPlayerCloseCombat","LOCALS",2)~ 
        GOTO EU#LenaTalk.LoveTalk14.FreeAction
    IF ~CheckStatGT(Player1,16,STR)~ //THEN REPLY ~STR > 16~
        DO ~IncrementGlobal("EU#LenaDuelPlayerCloseCombat","LOCALS",4)~ 
        GOTO EU#LenaTalk.LoveTalk14.FreeAction
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14.FreeAction
    SAY @2205

    IF ~True()~ //THEN REPLY ~TRUE~
        GOTO EU#LenaTalk.LoveTalk14.Start
    IF ~!HasItemEquiped("RING09",Player1)
        !HasItemEquiped("BLUN30",Player1)
        !HasItemEquiped("SPER12",Player1)
        !HasItemEquiped("SW2H13",Player1)
        !HasItemEquiped("SW2H06",Player1)
        !SpellCast(Player1,CLERIC_FREE_ACTION)~ //THEN REPLY ~Has Neither~
        GOTO EU#LenaTalk.LoveTalk14.Start
    //: Player1 cast FreeAction before
    IF ~!HasItemEquiped("RING09",Player1)
        !HasItemEquiped("BLUN30",Player1)
        !HasItemEquiped("SPER12",Player1)
        !HasItemEquiped("SW2H13",Player1)
        !HasItemEquiped("SW2H06",Player1)
        SpellCast(Player1,CLERIC_FREE_ACTION)~ //THEN REPLY ~HasSpell~
        DO ~SetGlobal("Eu#LenaDuelPlayerFreeAction","LOCALS",1)~ 
        GOTO EU#LenaTalk.LoveTalk14.Start
    //: Free Action Items: "Ring of Free Action", "Flail of Ages +5", "Ixil's Spike +6", "Spider's Bane" x2
    IF ~OR(5)
        HasItemEquiped("RING09",Player1)
        HasItemEquiped("BLUN30",Player1)
        HasItemEquiped("SPER12",Player1)
        HasItemEquiped("SW2H13",Player1)
        HasItemEquiped("SW2H06",Player1)~ //THEN REPLY ~HasItem~
        DO ~SetGlobal("Eu#LenaDuelPlayerFreeAction","LOCALS",1)~ 
        GOTO EU#LenaTalk.LoveTalk14.Start
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14.Start
    SAY @2206
    IF ~~ THEN REPLY @2207 GOTO EU#LenaTalk.LoveTalk14.1
    IF ~~ THEN REPLY @2209 GOTO EU#LenaTalk.LoveTalk14.2
    IF ~~ THEN REPLY @2211 GOTO EU#LenaTalk.LoveTalk14#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14.1
    SAY @2208
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14.2
    SAY @2210
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#1
    SAY @2212
    IF ~~ THEN REPLY @2213 GOTO EU#LenaTalk.LoveTalk14#1.1
    //: those 2 removed because of their negative meaning but forcably accepting duel, we dont need them
    // IF ~~ THEN REPLY @2215 GOTO EU#LenaTalk.LoveTalk14#1.2
    // IF ~~ THEN REPLY @2217 GOTO EU#LenaTalk.LoveTalk14#1.3
    IF ~~ THEN REPLY @2219 GOTO EU#LenaTalk.LoveTalk14#1.4
    IF ~~ THEN REPLY @2231 GOTO EU#LenaTalk.LoveTalk14#1.5
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#1.1
    SAY @2214
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#1.2
    SAY @2216
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#1.3
    SAY @2218
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#1.4
    SAY @2220
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#1.5
    SAY @2232
    IF ~~ DO ~IncrementGlobal("EU#LenaLike","LOCALS",-3)
        SetGlobal("EU#LenaOnLeave","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#2
    SAY @2221
    IF ~~ THEN REPLY @2222 GOTO EU#LenaTalk.LoveTalk14#2.1
    IF ~~ THEN REPLY @2228 GOTO EU#LenaTalk.LoveTalk14#2.2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#2.1
    SAY @2223
    = @2224
    = @2225
    = @2226
    = @2227
    IF ~~ DO ~SetGlobal("EU#LenaDuelUsePower","LOCALS",1)
        SetGlobal("EU#LenaDuelPoints","LOCALS",-1)
        IncrementGlobal("EU#LenaDuelPlayerAgility","LOCALS",-3)
        IncrementGlobal("EU#LenaDuelPlayerCloseCombat","LOCALS",-2)
        IncrementGlobal("EU#LenaDuelPlayerMartialArts","LOCALS",-2)~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#2.2
    SAY @2229
    = @2230
    IF ~~ DO ~SetGlobal("EU#LenaDuelUsePower","LOCALS",0)
        SetGlobal("EU#LenaDuelPoints","LOCALS",0)~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#ChallengeMenu
    SAY @2233

    //: give up
    IF ~~ THEN REPLY @2234 GOTO EU#LenaTalk.LoveTalk14#GiveUp
    //: player charge
    IF ~!Global("EU#LenaDuelPlayerCharge","LOCALS",1)~ THEN REPLY @2239 DO ~SetGlobal("EU#LenaDuelPlayerCharge","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk14#PlayerCharge
    //: Lena charge
    IF ~!Global("EU#LenaDuelLenaCharge","LOCALS",1)~ THEN REPLY @2331 DO ~SetGlobal("EU#LenaDuelLenaCharge","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk14#LenaCharge
    //: final attack
    IF ~Global("EU#LenaDuelLenaCharge","LOCALS",1)
        Global("EU#LenaDuelPlayerCharge","LOCALS",1)
        Global("EU#LenaDuelLenaShowOff","LOCALS",1)~ THEN REPLY @2404 DO ~IncrementGlobal("EU#LenaLike","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk14#FinalAttack
    //: Lena showoff
    IF ~Global("EU#LenaDuelUsePower","LOCALS",1)
        !Global("EU#LenaDuelLenaShowOff","LOCALS",1)
        OR(2)
            Global("EU#LenaDuelLenaCharge","LOCALS",1)
            Global("EU#LenaDuelPlayerCharge","LOCALS",1)~ THEN REPLY @2439 DO ~SetGlobal("EU#LenaDuelLenaShowOff","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk14#LenaShowOff
    //: break
    IF ~OR(2)
        Global("EU#LenaDuelLenaCharge","LOCALS",1)
        Global("EU#LenaDuelPlayerCharge","LOCALS",1)~ THEN REPLY @2462 GOTO EU#LenaTalk.LoveTalk14#Break
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#Break
    SAY @2463
    IF ~~ THEN REPLY @2464 GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
    IF ~~ THEN REPLY @2465 DO ~SetGlobal("EU#LenaKillRomance","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk14#Break.2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#Break.2
    SAY @2466
    IF ~GlobalGT("EU#LenaDuelPoints","LOCALS",0)~ GOTO EU#LenaTalk.LoveTalk14#Break.2-1
    IF ~GlobalLT("EU#LenaDuelPoints","LOCALS",0)~ GOTO EU#LenaTalk.LoveTalk14#Break.2-3
    IF ~Global("EU#LenaDuelPoints","LOCALS",0)~ GOTO EU#LenaTalk.LoveTalk14#Break.2-2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#Break.2-1
    SAY @2467
    IF ~~ THEN REPLY @2468 GOTO EU#LenaTalk.LoveTalk14#Break#1
    IF ~~ THEN REPLY @2469 GOTO EU#LenaTalk.LoveTalk14#Break#1
    IF ~~ THEN REPLY @2470 GOTO EU#LenaTalk.LoveTalk14#Break#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#Break.2-2
    SAY @2478
    IF ~~ THEN REPLY @2475 GOTO EU#LenaTalk.LoveTalk14#Break#1
    IF ~~ THEN REPLY @2469 GOTO EU#LenaTalk.LoveTalk14#Break#1
    IF ~~ THEN REPLY @2470 GOTO EU#LenaTalk.LoveTalk14#Break#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#Break.2-3
    SAY @2477
    IF ~~ THEN REPLY @2476 GOTO EU#LenaTalk.LoveTalk14#Break#1
    IF ~~ THEN REPLY @2469 GOTO EU#LenaTalk.LoveTalk14#Break#1
    IF ~~ THEN REPLY @2470 GOTO EU#LenaTalk.LoveTalk14#Break#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#Break#1
    SAY @2471
    IF ~~ THEN REPLY @2472 GOTO EU#LenaTalk.LoveTalk14#Break#1.1
    IF ~~ THEN REPLY @2474 DO ~SetGlobal("EU#LenaKillRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#Break#1.1
    SAY @2473
    IF ~~ DO ~SetGlobal("EU#LenaKillRomance","LOCALS",1)
        SetGlobal("EU#LenaOnLeave","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#LenaShowOff
    SAY @2440
    IF ~~ THEN REPLY @2441 GOTO EU#LenaTalk.LoveTalk14#LenaShowOff#1
    IF ~~ THEN REPLY @2449 GOTO EU#LenaTalk.LoveTalk14#LenaShowOff.2
    IF ~CheckStatGT(Player1,16,DEX)~ THEN REPLY @2451 GOTO EU#LenaTalk.LoveTalk14#LenaShowOff.3-1
    IF ~!CheckStatGT(Player1,16,DEX)~ THEN REPLY @2451 GOTO EU#LenaTalk.LoveTalk14#LenaShowOff.3-2
    IF ~~ THEN REPLY @2458 GOTO EU#LenaTalk.LoveTalk14#LenaShowOff#1
    IF ~CheckStatGT(Player1,14,DEX)~ THEN REPLY @2459 GOTO EU#LenaTalk.LoveTalk14#LenaShowOff.3.5
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#LenaShowOff#1
    SAY @2442
    IF ~~ THEN REPLY @2443 GOTO EU#LenaTalk.LoveTalk14#LenaShowOff#1.1
    IF ~~ THEN REPLY @2445 GOTO EU#LenaTalk.LoveTalk14#LenaShowOff#1.2
    IF ~~ THEN REPLY @2447 GOTO EU#LenaTalk.LoveTalk14#LenaShowOff#1.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#LenaShowOff#1.1
    SAY @2444
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#LenaShowOff#1.2
    SAY @2446
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#LenaShowOff#1.3
    SAY @2448
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#LenaShowOff.2
    SAY @2450
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#LenaShowOff.3-1
    SAY @2452
    = @2453
    = @2454
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#LenaShowOff.3-2
    SAY @2455
    = @2456
    = @2457
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#LenaShowOff.3.5
    SAY @2460
    = @2461
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#FinalAttack
    SAY @2405
    = @2406
    = @2407
    = @2408
    IF ~GlobalGT("EU#LenaDuelPoints","LOCALS",0)~ GOTO EU#LenaTalk.LoveTalk14#FinalAttack-1
    IF ~!GlobalGT("EU#LenaDuelPoints","LOCALS",0)~ GOTO EU#LenaTalk.LoveTalk14#FinalAttack-2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#FinalAttack-1
    SAY @2409
    = @2410
    IF ~~ THEN REPLY @2411 GOTO EU#LenaTalk.LoveTalk14#FinalAttack-1.1
    IF ~~ THEN REPLY @2431 GOTO EU#LenaTalk.LoveTalk14#FinalAttack#2
    IF ~~ THEN REPLY @2433 GOTO EU#LenaTalk.LoveTalk14#FinalAttack-1.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#FinalAttack-1.1
    SAY @2412
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#FinalAttack#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#FinalAttack#2
    SAY @2432
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#FinalAttack#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#FinalAttack#3
    SAY @2415
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#FinalAttack#4
    SAY @2418
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#FinalAttack#5
    SAY @2421
    = @2422
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#FinalAttack#6
    SAY @2424
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#FinalAttack#6.1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#FinalAttack#6.1
    SAY @2422
    IF ~~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#FinalAttack#7
    SAY @2427
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#FinalAttack#6.1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#FinalAttack#1
    SAY @2413
    IF ~GlobalGT("EU#LenaDuelPoints","LOCALS",0)~ THEN REPLY @2414 GOTO EU#LenaTalk.LoveTalk14#FinalAttack#3
    IF ~!GlobalGT("EU#LenaDuelPoints","LOCALS",0)~ THEN REPLY @2416 GOTO EU#LenaTalk.LoveTalk14#FinalAttack#3
    IF ~~ THEN REPLY @2417 DO ~IncrementGlobal("EU#LenaLike","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk14#FinalAttack#4
    IF ~Gender(Player1,MALE)~ THEN REPLY @2419 DO ~IncrementGlobal("EU#LenaLike","LOCALS",1)
        SetGlobal("EU#LenaPlayerKissed","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk14#FinalAttack#5
    IF ~Gender(Player1,FEMALE)
        InParty("Anomen")
        !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN REPLY @2423 GOTO EU#LenaTalk.LoveTalk14#FinalAttack#6
    IF ~Gender(Player1,FEMALE)
        InParty("Edwin")
        !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN REPLY @2426 GOTO EU#LenaTalk.LoveTalk14#FinalAttack#7
    IF ~~ THEN REPLY @2429 GOTO EU#LenaTalk.LoveTalk14#FinalAttack#1.7
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#FinalAttack#1.7
    SAY @2430
    IF ~~ DO ~IncrementGlobal("EU#LenaLike","LOCALS",-3) 
        SetGlobal("EU#LenaKillRomance","LOCALS",1)
        SetGlobal("EU#LenaOnLeave","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#FinalAttack-1.3
    SAY @2434
    IF ~GlobalGT("EU#LenaDuelPoints","LOCALS",0)~ THEN REPLY @2414 GOTO EU#LenaTalk.LoveTalk14#FinalAttack#3
    IF ~!GlobalGT("EU#LenaDuelPoints","LOCALS",0)~ THEN REPLY @2416 GOTO EU#LenaTalk.LoveTalk14#FinalAttack#3
    IF ~~ THEN REPLY @2417 DO ~IncrementGlobal("EU#LenaLike","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk14#FinalAttack#4
    IF ~Gender(Player1,MALE)~ THEN REPLY @2419 DO ~IncrementGlobal("EU#LenaLike","LOCALS",1)
        SetGlobal("EU#LenaPlayerKissed","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk14#FinalAttack#5
    IF ~Gender(Player1,FEMALE)
        InParty("Anomen")
        !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN REPLY @2423 GOTO EU#LenaTalk.LoveTalk14#FinalAttack#6
    IF ~Gender(Player1,FEMALE)
        InParty("Edwin")
        !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN REPLY @2426 GOTO EU#LenaTalk.LoveTalk14#FinalAttack#7
    IF ~~ THEN REPLY @2429 GOTO EU#LenaTalk.LoveTalk14#FinalAttack#1.7
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#FinalAttack-2
    SAY @2435
    = @2436
    IF ~~ THEN REPLY @2437 GOTO EU#LenaTalk.LoveTalk14#FinalAttack-2.1
    IF ~~ THEN REPLY @2431 GOTO EU#LenaTalk.LoveTalk14#FinalAttack#2
    IF ~~ THEN REPLY @2433 GOTO EU#LenaTalk.LoveTalk14#FinalAttack-1.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#FinalAttack-2.1
    SAY @2438
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#FinalAttack#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#GiveUp
    SAY @2235
    = @2236
    IF ~Alignment(Player1,MASK_GENEUTRAL)~ GOTO EU#LenaTalk.LoveTalk14#GiveUp-1
    IF ~Alignment(Player1,MASK_EVIL)~ GOTO EU#LenaTalk.LoveTalk14#GiveUp-2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#GiveUp-1
    SAY @2237
    IF ~~ DO ~SetGlobal("EU#LenaKillRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#GiveUp-2
    SAY @2238
    IF ~~ DO ~SetGlobal("EU#LenaKillRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge
    SAY @2240
    IF ~!GlobalGT("EU#LenaDuelPlayerCloseCombat","LOCALS",3)~ GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-1
    IF ~OR(2)
        GlobalGT("EU#LenaDuelPlayerCloseCombat","LOCALS",3)
        Global("EU#LenaDuelPlayerFreeAction","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-1
    SAY @2241
    = @2242
    IF ~GlobalGT("EU#LenaDuelPlayerAgility","LOCALS",3)~ THEN REPLY @2479 GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-1.1-1
    IF ~!GlobalGT("EU#LenaDuelPlayerAgility","LOCALS",3)~ THEN REPLY @2479 DO ~IncrementGlobal("EU#LenaDuelPoints","LOCALS",-1)~ GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-1.1-2
    IF ~CheckStatGT(Player1,14,INT)
        Global("EU#LenaDuelUsePower","LOCALS",1)~ THEN REPLY @2247 DO ~IncrementGlobal("EU#LenaDuelPoints","LOCALS",-1)~ GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-1.2-1
    IF ~CheckStatGT(Player1,14,INT)
        !Global("EU#LenaDuelUsePower","LOCALS",1)~ THEN REPLY @2247 GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-1.2-2
    IF ~~ THEN REPLY @2250 DO ~IncrementGlobal("EU#LenaDuelPoints","LOCALS",-1)~ GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-1.3
    IF ~GlobalGT("EU#LenaDuelPlayerAgility","LOCALS",4)~ THEN REPLY @2252 GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-1.4-1
    IF ~!GlobalGT("EU#LenaDuelPlayerAgility","LOCALS",4)~ THEN REPLY @2252 DO ~IncrementGlobal("EU#LenaDuelPoints","LOCALS",-1)~ GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-1.4-2
    IF ~Global("EU#LenaDuelUsePower","LOCALS",1)~ THEN REPLY @2256 DO ~IncrementGlobal("EU#LenaDuelPoints","LOCALS",-1)~ GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-1.5-1
    IF ~!Global("EU#LenaDuelUsePower","LOCALS",1)
        GlobalGT("EU#LenaDuelPlayerCloseCombat","LOCALS",3)
        GlobalGT("EU#LenaDuelPlayerMartialArts","LOCALS",3)~ THEN REPLY @2256 DO ~IncrementGlobal("EU#LenaDuelPoints","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-1.5-2
    IF ~!Global("EU#LenaDuelUsePower","LOCALS",1)
        OR(2)
        !GlobalGT("EU#LenaDuelPlayerCloseCombat","LOCALS",3)
        !GlobalGT("EU#LenaDuelPlayerMartialArts","LOCALS",3)~ THEN REPLY @2256 DO ~IncrementGlobal("EU#LenaDuelPoints","LOCALS",-1)~ GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-1.5-3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-1.1-1
    SAY @2243
    = @2244
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-1.1-2
    SAY @2255
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#PlayerCharge#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge#1
    SAY @2245
    = @2246
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-1.2-1
    SAY @2248
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#PlayerCharge#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-1.2-2
    SAY @2249
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-1.3
    SAY @2251
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#PlayerCharge#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-1.4-1
    SAY @2253
    = @2254
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-1.4-2
    SAY @2255
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#PlayerCharge#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-1.5-1
    SAY @2257
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#PlayerCharge#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-1.5-2
    SAY @2258
    IF ~GlobalGT("EU#LenaDuelPlayerAgility","LOCALS",5)~ GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-1.5-2-1
    IF ~!GlobalGT("EU#LenaDuelPlayerAgility","LOCALS",5)~ GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-1.5-2-2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-1.5-3
    SAY @2272
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#PlayerCharge#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-1.5-2-2
    SAY @2271
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-1.5-2-1
    SAY @2259
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#PlayerCharge#2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge#2.1
    SAY @2262
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge#2.2-1
    SAY @2264
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge#2.2-2
    SAY @2265
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge#2.3-1
    SAY @2267
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge#2.3-2
    SAY @2268
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge#2.4
    SAY @2270
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge#2
    SAY @2260
    IF ~~ THEN REPLY @2261 GOTO EU#LenaTalk.LoveTalk14#PlayerCharge#2.1
    IF ~GlobalGT("EU#LenaDuelPlayerAgility","LOCALS",2)~ THEN REPLY @2263 DO ~IncrementGlobal("EU#LenaDuelPoints","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk14#PlayerCharge#2.2-1
    IF ~!GlobalGT("EU#LenaDuelPlayerAgility","LOCALS",2)~ THEN REPLY @2263 GOTO EU#LenaTalk.LoveTalk14#PlayerCharge#2.2-2
    IF ~GlobalGT("EU#LenaDuelPlayerAgility","LOCALS",4)~ THEN REPLY @2266 DO ~IncrementGlobal("EU#LenaDuelPoints","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk14#PlayerCharge#2.3-1
    IF ~!GlobalGT("EU#LenaDuelPlayerAgility","LOCALS",4)~ THEN REPLY @2266 GOTO EU#LenaTalk.LoveTalk14#PlayerCharge#2.3-2
    IF ~~ THEN REPLY @2269 GOTO EU#LenaTalk.LoveTalk14#PlayerCharge#2.4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-2.1-2
    SAY @2293
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-2.2-1
    SAY @2295
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-2.2-2
    SAY @2296
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#PlayerCharge#2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-2.2-3
    SAY @2297
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-2.3-1
    SAY @2299
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-2.3-2
    SAY @2300
    = @2301
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-2
    SAY @2273
    IF ~GlobalGT("EU#LenaDuelPlayerMartialArts","LOCALS",3)~ THEN REPLY @2274 GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-2.1-1
    IF ~!GlobalGT("EU#LenaDuelPlayerMartialArts","LOCALS",3)~ THEN REPLY @2274 GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-2.1-2
    IF ~Global("EU#LenaDuelUsePower","LOCALS",1)~ THEN REPLY @2294 GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-2.2-1
    IF ~!Global("EU#LenaDuelUsePower","LOCALS",1)
        GlobalGT("EU#LenaDuelPlayerAgility","LOCALS",3)
        GlobalGT("EU#LenaDuelPlayerCloseCombat","LOCALS",3)~ THEN REPLY @2294 GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-2.2-2
    IF ~!Global("EU#LenaDuelUsePower","LOCALS",1)
        OR(2)
            !GlobalGT("EU#LenaDuelPlayerAgility","LOCALS",3)
            !GlobalGT("EU#LenaDuelPlayerCloseCombat","LOCALS",3)~ THEN REPLY @2294 GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-2.2-3
    IF ~GlobalGT("EU#LenaDuelPlayerAgility","LOCALS",3)~ THEN REPLY @2298 GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-2.3-1
    IF ~!GlobalGT("EU#LenaDuelPlayerAgility","LOCALS",3)~ THEN REPLY @2298 DO ~IncrementGlobal("EU#LenaDuelPoints","LOCALS",-1)~ GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-2.3-2
    IF ~OR(2)
            !GlobalGT("EU#LenaDuelPlayerAgility","LOCALS",4)
            !GlobalGT("EU#LenaDuelPlayerCloseCombat","LOCALS",3)~ THEN REPLY @2303 GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-2.4-2
    IF ~GlobalGT("EU#LenaDuelPlayerAgility","LOCALS",4)
        GlobalGT("EU#LenaDuelPlayerCloseCombat","LOCALS",3)~ THEN REPLY @2303 GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-2.4-1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-2.4-2
    SAY @2330
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-2.1-1.1-1
    SAY @2277
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-2.1-1.1-2
    SAY @2278
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#PlayerCharge#2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-2.1-1.1-3
    SAY @2279
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-2.1-1.2-1
    SAY @2281
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-2.1-1.2-2
    SAY @2282
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#PlayerCharge#2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-2.1-1.2-3
    SAY @2480
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-2.1-1.3-1
    SAY @2284
    = @2285
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-2.1-1.3-2
    SAY @2286
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-2.1-1
    SAY @2275
    IF ~Global("EU#LenaDuelUsePower","LOCALS",1)~ THEN REPLY @2276 GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-2.1-1.1-1
    IF ~!Global("EU#LenaDuelUsePower","LOCALS",1)
        GlobalGT("EU#LenaDuelPlayerCloseCombat","LOCALS",3)~ THEN REPLY @2276 DO ~IncrementGlobal("EU#LenaDuelPoints","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-2.1-1.1-2
    IF ~!Global("EU#LenaDuelUsePower","LOCALS",1)
        !GlobalGT("EU#LenaDuelPlayerCloseCombat","LOCALS",3)~ THEN REPLY @2276 GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-2.1-1.1-3
    IF ~Global("EU#LenaDuelUsePower","LOCALS",1)~ THEN REPLY @2280 GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-2.1-1.2-1
    IF ~!Global("EU#LenaDuelUsePower","LOCALS",1)
        GlobalGT("EU#LenaDuelPlayerCloseCombat","LOCALS",2)~ THEN REPLY @2280 DO ~IncrementGlobal("EU#LenaDuelPoints","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-2.1-1.2-2
    IF ~!Global("EU#LenaDuelUsePower","LOCALS",1)
        !GlobalGT("EU#LenaDuelPlayerCloseCombat","LOCALS",2)~ THEN REPLY @2280 GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-2.1-1.2-3
    IF ~GlobalGT("EU#LenaDuelPlayerAgility","LOCALS",4)~ THEN REPLY @2283 DO ~IncrementGlobal("EU#LenaDuelPoints","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-2.1-1.3-1
    IF ~!GlobalGT("EU#LenaDuelPlayerAgility","LOCALS",4)~ THEN REPLY @2283 GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-2.1-1.3-2

    IF ~CheckStatGT(Player1,14,INT)
        Global("EU#LenaDuelUsePower","LOCALS",1)~ THEN REPLY @2287 GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-2.1-1.4-1
    IF ~CheckStatGT(Player1,14,INT)
        !Global("EU#LenaDuelUsePower","LOCALS",1)
        GlobalGT("EU#LenaDuelPlayerCloseCombat","LOCALS",1)~ THEN REPLY @2287 DO ~IncrementGlobal("EU#LenaDuelPoints","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-2.1-1.4-2
    IF ~CheckStatGT(Player1,14,INT)
        !Global("EU#LenaDuelUsePower","LOCALS",1)
        !GlobalGT("EU#LenaDuelPlayerCloseCombat","LOCALS",1)~ THEN REPLY @2287 GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-2.1-1.4-3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-2.1-1.4-1
    SAY @2288
    = @2289
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-2.1-1.4-2
    SAY @2290
    = @2291
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#PlayerCharge#2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-2.1-1.4-3
    SAY @2292
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-2.4-1.1-1
    SAY @2306
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END
    
IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-2.4-1.1-2
    SAY @2307
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-2.4-1.2-1
    SAY @2322
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-2.4-1.2-2
    SAY @2323
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-2.4-1
    SAY @2304
    IF ~Global("EU#LenaDuelUsePower","LOCALS",1)~ THEN REPLY @2305 GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-2.4-1.1-1
    IF ~!Global("EU#LenaDuelUsePower","LOCALS",1)
        Global("EU#LenaDuelPlayerFreeAction","LOCALS",1)
        GlobalGT("EU#LenaDuelPlayerCloseCombat","LOCALS",3)~ THEN REPLY @2305 DO ~IncrementGlobal("EU#LenaDuelPoints","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-2.4-1.1-2
    IF ~!Global("EU#LenaDuelUsePower","LOCALS",1)
        !Global("EU#LenaDuelPlayerFreeAction","LOCALS",1)
        GlobalGT("EU#LenaDuelPlayerCloseCombat","LOCALS",3)~ THEN REPLY @2305 DO ~IncrementGlobal("EU#LenaDuelPoints","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-2.4-1.1-3
    IF ~!Global("EU#LenaDuelUsePower","LOCALS",1)
        !GlobalGT("EU#LenaDuelPlayerCloseCombat","LOCALS",3)~ THEN REPLY @2305 DO ~IncrementGlobal("EU#LenaDuelPoints","LOCALS",-1)~ GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-2.4-1.1-4
    IF ~Global("EU#LenaDuelUsePower","LOCALS",1)~ THEN REPLY @2321 GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-2.4-1.2-1
    IF ~!Global("EU#LenaDuelUsePower","LOCALS",1)~ THEN REPLY @2321 GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-2.4-1.2-2
    IF ~Global("EU#LenaDuelUsePower","LOCALS",1)~ THEN REPLY @2324 DO ~IncrementGlobal("EU#LenaDuelPoints","LOCALS",-1)~ GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-2.4-1.3-1
    IF ~!Global("EU#LenaDuelUsePower","LOCALS",1)
        GlobalGT("EU#LenaDuelPlayerCloseCombat","LOCALS",3)~ THEN REPLY @2324 GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-2.4-1.3-2
    IF ~!Global("EU#LenaDuelUsePower","LOCALS",1)
        !GlobalGT("EU#LenaDuelPlayerCloseCombat","LOCALS",3)~ THEN REPLY @2324 GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-2.4-1.3-3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-2.4-1.3-1
    SAY @2325
    = @2326
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-2.4-1.3-2
    SAY @2327
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-2.4-1.3-3
    SAY @2328
    = @2329
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-2.4-1.1-4
    SAY @2318
    = @2319
    = @2320
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-2.4-1.1-3
    SAY @2308
    IF ~GlobalGT("EU#LenaDuelPlayerMartialArts","LOCALS",3)~ THEN REPLY @2310 DO ~IncrementGlobal("EU#LenaDuelPoints","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-2.4-1.1-3.1-1
    IF ~!GlobalGT("EU#LenaDuelPlayerMartialArts","LOCALS",3)~ THEN REPLY @2310 GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-2.4-1.1-3.1-2
    IF ~GlobalGT("EU#LenaDuelPlayerCloseCombat","LOCALS",2)~ THEN REPLY @2313 DO ~IncrementGlobal("EU#LenaDuelPoints","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-2.4-1.1-3.2-1
    IF ~!GlobalGT("EU#LenaDuelPlayerCloseCombat","LOCALS",2)~ THEN REPLY @2313 GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-2.4-1.1-3.2-2
    IF ~GlobalGT("EU#LenaDuelPlayerAgility","LOCALS",5)~ THEN REPLY @2316 DO ~IncrementGlobal("EU#LenaDuelPoints","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-2.4-1.1-3.3-1
    IF ~!GlobalGT("EU#LenaDuelPlayerAgility","LOCALS",5)~ THEN REPLY @2316 GOTO EU#LenaTalk.LoveTalk14#PlayerCharge-2.4-1.1-3.3-2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-2.4-1.1-3.1-1
    SAY @2311
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-2.4-1.1-3.1-2
    SAY @2312
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-2.4-1.1-3.2-1
    SAY @2314
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-2.4-1.1-3.2-2
    SAY @2315
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-2.4-1.1-3.3-1
    SAY @2317
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#PlayerCharge-2.4-1.1-3.3-2
    SAY @2481
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#LenaCharge.1-2
    SAY @2371
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#LenaCharge.2-1
    SAY @2373
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#LenaCharge.2-2
    SAY @2374
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#LenaCharge.3-1
    SAY @2376
    = @2377
    = @2378
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#LenaCharge.3-2
    SAY @2379
    = @2380
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#LenaCharge
    SAY @2332
    IF ~GlobalGT("EU#LenaDuelPlayerMartialArts","LOCALS",4)~ THEN REPLY @2333 DO ~IncrementGlobal("EU#LenaDuelPoints","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk14#LenaCharge.1-1
    IF ~!GlobalGT("EU#LenaDuelPlayerMartialArts","LOCALS",4)~ THEN REPLY @2333 DO ~IncrementGlobal("EU#LenaDuelPoints","LOCALS",-1)~ GOTO EU#LenaTalk.LoveTalk14#LenaCharge.1-2
    IF ~Global("EU#LenaDuelUsePower","LOCALS",1)~ THEN REPLY @2372 DO ~IncrementGlobal("EU#LenaDuelPoints","LOCALS",-1)~ GOTO EU#LenaTalk.LoveTalk14#LenaCharge.2-1
    IF ~!Global("EU#LenaDuelUsePower","LOCALS",1)~ THEN REPLY @2372 GOTO EU#LenaTalk.LoveTalk14#LenaCharge.2-2
    IF ~GlobalGT("EU#LenaDuelPlayerAgility","LOCALS",4)~ THEN REPLY @2375 DO ~IncrementGlobal("EU#LenaDuelPoints","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk14#LenaCharge.3-1
    IF ~!GlobalGT("EU#LenaDuelPlayerAgility","LOCALS",4)~ THEN REPLY @2375 DO ~IncrementGlobal("EU#LenaDuelPoints","LOCALS",-1)~ GOTO EU#LenaTalk.LoveTalk14#LenaCharge.3-2
    IF ~CheckStatGT(Player1,14,INT)~ THEN REPLY @2381 GOTO EU#LenaTalk.LoveTalk14#LenaCharge.4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#LenaCharge.4.1-1
    SAY @2384
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#LenaCharge.4.1-2
    SAY @2385
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#LenaCharge.4.2-1
    SAY @2387
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#LenaCharge.4.2-2
    SAY @2388
    = @2389
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#LenaCharge.4.3-1
    SAY @2391
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END
    
IF ~~ BEGIN EU#LenaTalk.LoveTalk14#LenaCharge.4.3-3
    SAY @2482
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#LenaCharge.4
    SAY @2382
    IF ~GlobalGT("EU#LenaDuelPlayerCloseCombat","LOCALS",3)~ THEN REPLY @2383 DO ~IncrementGlobal("EU#LenaDuelPoints","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk14#LenaCharge.4.1-1
    IF ~!GlobalGT("EU#LenaDuelPlayerCloseCombat","LOCALS",3)~ THEN REPLY @2383 DO ~IncrementGlobal("EU#LenaDuelPoints","LOCALS",-1)~ GOTO EU#LenaTalk.LoveTalk14#LenaCharge.4.1-2
    IF ~GlobalGT("EU#LenaDuelPlayerAgility","LOCALS",4)~ THEN REPLY @2386 GOTO EU#LenaTalk.LoveTalk14#LenaCharge.4.2-1
    IF ~!GlobalGT("EU#LenaDuelPlayerAgility","LOCALS",4)~ THEN REPLY @2386 DO ~IncrementGlobal("EU#LenaDuelPoints","LOCALS",-1)~ GOTO EU#LenaTalk.LoveTalk14#LenaCharge.4.2-2
    IF ~Global("EU#LenaDuelUsePower","LOCALS",1)~ THEN REPLY @2390 DO ~IncrementGlobal("EU#LenaDuelPoints","LOCALS",-1)~ GOTO EU#LenaTalk.LoveTalk14#LenaCharge.4.3-1
    IF ~!Global("EU#LenaDuelUsePower","LOCALS",1)
        GlobalGT("EU#LenaDuelPlayerCloseCombat","LOCALS",3)~ THEN REPLY @2390 DO ~IncrementGlobal("EU#LenaDuelPoints","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk14#LenaCharge.4.3-2
    IF ~!Global("EU#LenaDuelUsePower","LOCALS",1)
        !GlobalGT("EU#LenaDuelPlayerCloseCombat","LOCALS",3)~ THEN REPLY @2390 GOTO EU#LenaTalk.LoveTalk14#LenaCharge.4.3-3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#LenaCharge.4.3-2.1
    SAY @2395
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#LenaCharge.4.3-2.2-1
    SAY @2397
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#LenaCharge#3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#LenaCharge.4.3-2.2-2
    SAY @2399
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#LenaCharge#3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#LenaCharge#3
    SAY @2398
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#LenaCharge.4.3-2.3-1
    SAY @2401
    = @2402
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#LenaCharge.4.3-2.3-2
    SAY @2403
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#LenaCharge.4.3-2
    SAY @2393
    IF ~~ THEN REPLY @2394 GOTO EU#LenaTalk.LoveTalk14#LenaCharge.4.3-2.1
    IF ~Global("EU#LenaDuelUsePower","LOCALS",1)~ THEN REPLY @2396 DO ~IncrementGlobal("EU#LenaDuelPoints","LOCALS",-1)~ GOTO EU#LenaTalk.LoveTalk14#LenaCharge.4.3-2.2-1
    IF ~!Global("EU#LenaDuelUsePower","LOCALS",1)~ THEN REPLY @2396 DO ~IncrementGlobal("EU#LenaDuelPoints","LOCALS",-1)~ GOTO EU#LenaTalk.LoveTalk14#LenaCharge.4.3-2.2-2
    IF ~GlobalGT("EU#LenaDuelPlayerAgility","LOCALS",3)~ THEN REPLY @2400 DO ~IncrementGlobal("EU#LenaDuelPoints","LOCALS",-1)~ GOTO EU#LenaTalk.LoveTalk14#LenaCharge.4.3-2.3-1
    IF ~!GlobalGT("EU#LenaDuelPlayerAgility","LOCALS",3)~ THEN REPLY @2400 GOTO EU#LenaTalk.LoveTalk14#LenaCharge.4.3-2.3-2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#LenaCharge.1-1.1-1
    SAY @2336
    = @2337
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#LenaCharge.1-1.1-2
    SAY @2338
    = @2339
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#LenaCharge.1-1.2-1
    SAY @2341
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#LenaCharge#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#LenaCharge#1.1-1
    SAY @2344
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#LenaCharge#2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#LenaCharge#1.1-2
    SAY @2346
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#LenaCharge#2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#LenaCharge#2
    SAY @2345
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#LenaCharge#1.2-1
    SAY @2348
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#LenaCharge#2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#LenaCharge#1.2-2
    SAY @2349
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#LenaCharge#2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#LenaCharge#1.3-1
    SAY @2351
    = @2352
    = @2353
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#LenaCharge#1.3-2
    SAY @2354
    = @2355
    = @2356
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#LenaCharge#1.4
    SAY @2358
    = @2359
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#LenaCharge#1
    SAY @2342
    IF ~GlobalGT("EU#LenaDuelPlayerAgility","LOCALS",4)~ THEN REPLY @2343 DO ~IncrementGlobal("EU#LenaDuelPoints","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk14#LenaCharge#1.1-1
    IF ~!GlobalGT("EU#LenaDuelPlayerAgility","LOCALS",4)~ THEN REPLY @2343 GOTO EU#LenaTalk.LoveTalk14#LenaCharge#1.1-2
    IF ~GlobalGT("EU#LenaDuelPlayerCloseCombat","LOCALS",4)~ THEN REPLY @2347 DO ~IncrementGlobal("EU#LenaDuelPoints","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk14#LenaCharge#1.2-1
    IF ~!GlobalGT("EU#LenaDuelPlayerCloseCombat","LOCALS",4)~ THEN REPLY @2347 GOTO EU#LenaTalk.LoveTalk14#LenaCharge#1.2-2
    IF ~GlobalGT("EU#LenaDuelPlayerMartialArts","LOCALS",4)~ THEN REPLY @2350 DO ~IncrementGlobal("EU#LenaDuelPoints","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk14#LenaCharge#1.3-1
    IF ~!GlobalGT("EU#LenaDuelPlayerMartialArts","LOCALS",4)~ THEN REPLY @2350 GOTO EU#LenaTalk.LoveTalk14#LenaCharge#1.3-2
    IF ~CheckStatGT(Player1,14,INT)~ THEN REPLY @2357 DO ~IncrementGlobal("EU#LenaDuelPoints","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk14#LenaCharge#1.4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#LenaCharge.1-1.2-2
    SAY @2360
    = @2361
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#LenaCharge.1-1.3-1
    SAY @2363
    = @2364
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#LenaCharge.1-1.3-2
    SAY @2365
    = @2366
    = @2367
    = @2368
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#ChallengeMenu
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#LenaCharge.1-1.4
    SAY @2370
    IF ~~ GOTO EU#LenaTalk.LoveTalk14#LenaCharge#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk14#LenaCharge.1-1
    SAY @2334
    IF ~GlobalGT("EU#LenaDuelPlayerAgility","LOCALS",3)~ THEN REPLY @2335 GOTO EU#LenaTalk.LoveTalk14#LenaCharge.1-1.1-1
    IF ~!GlobalGT("EU#LenaDuelPlayerAgility","LOCALS",3)~ THEN REPLY @2335 DO ~IncrementGlobal("EU#LenaDuelPoints","LOCALS",-1)~ GOTO EU#LenaTalk.LoveTalk14#LenaCharge.1-1.1-2
    IF ~GlobalGT("EU#LenaDuelPlayerMartialArts","LOCALS",5)~ THEN REPLY @2340 GOTO EU#LenaTalk.LoveTalk14#LenaCharge.1-1.2-1
    IF ~!GlobalGT("EU#LenaDuelPlayerMartialArts","LOCALS",5)~ THEN REPLY @2340 DO ~IncrementGlobal("EU#LenaDuelPoints","LOCALS",-1)~ GOTO EU#LenaTalk.LoveTalk14#LenaCharge.1-1.2-2
    IF ~GlobalGT("EU#LenaDuelPlayerCloseCombat","LOCALS",4)~ THEN REPLY @2362 DO ~IncrementGlobal("EU#LenaDuelPoints","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk14#LenaCharge.1-1.3-1
    IF ~!GlobalGT("EU#LenaDuelPlayerCloseCombat","LOCALS",4)~ THEN REPLY @2362 DO ~IncrementGlobal("EU#LenaDuelPoints","LOCALS",-1)~ GOTO EU#LenaTalk.LoveTalk14#LenaCharge.1-1.3-2
    IF ~CheckStatGT(Player1,14,INT)~ THEN REPLY @2369 GOTO EU#LenaTalk.LoveTalk14#LenaCharge.1-1.4
END

////////////////////////////////////////////////
//:.  Lovetalk: Why Still Let Travel (#15)  .://
////////////////////////////////////////////////

IF ~Global("EU#LenaLoveTalk","LOCALS",30)~ BEGIN EU#LenaTalk.LoveTalk15
    SAY @2501
    IF ~~ GOTO EU#LenaTalk.LoveTalk15-1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk15-1
    SAY @2502
    IF ~~ THEN REPLY @2503 GOTO EU#LenaTalk.LoveTalk15.1
    IF ~~ THEN REPLY @2541 GOTO EU#LenaTalk.LoveTalk15.2
    IF ~~ THEN REPLY @2543 GOTO EU#LenaTalk.LoveTalk15.3
    IF ~~ THEN REPLY @2545 GOTO EU#LenaTalk.LoveTalk15.4
    IF ~~ THEN REPLY @2548 GOTO EU#LenaTalk.LoveTalk15.5
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk15.1
    SAY @2504
    IF ~~ GOTO EU#LenaTalk.LoveTalk15#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk15.2
    SAY @2542
    IF ~~ GOTO EU#LenaTalk.LoveTalk15#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk15.3
    SAY @2544
    IF ~~ GOTO EU#LenaTalk.LoveTalk15#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk15.4
    SAY @2546
    IF ~GlobalLT("EU#LenaDuelPoints","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk15.4-1
    IF ~!GlobalLT("EU#LenaDuelPoints","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk15#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk15.4-1
    SAY @2547
    IF ~~ GOTO EU#LenaTalk.LoveTalk15#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk15.5
    SAY @2549
    IF ~~ GOTO EU#LenaTalk.LoveTalk15#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk15#3
    SAY @2533
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)
        RestParty()~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk15#5
    SAY @2531
    IF ~~ GOTO EU#LenaTalk.LoveTalk15#3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk15#6
    SAY @2529
    IF ~~ GOTO EU#LenaTalk.LoveTalk15#3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk15#7
    SAY @2509
    IF ~GlobalGT("EU#LenaDuelPoints","LOCALS",0)~ THEN REPLY @2510 DO ~IncrementGlobal("EU#LenaLike","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk15#8
    IF ~!GlobalGT("EU#LenaDuelPoints","LOCALS",0)~ THEN REPLY @2510 DO ~IncrementGlobal("EU#LenaLike","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk15#9
    IF ~~ THEN REPLY @2513 GOTO EU#LenaTalk.LoveTalk15#10
    IF ~~ THEN REPLY @2515 GOTO EU#LenaTalk.LoveTalk15#11
    IF ~~ THEN REPLY @2517 GOTO EU#LenaTalk.LoveTalk15#12
    IF ~~ THEN REPLY @2519 GOTO EU#LenaTalk.LoveTalk15#13
    IF ~~ THEN REPLY @2522 DO ~SetGlobal("EU#LenaPlayerLovesLena","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk15#2
    IF ~~ THEN REPLY @2540 DO ~SetGlobal("EU#LenaPlayerLovesLena","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk15#2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk15#8
    SAY @2511
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)
        RestParty()~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk15#9
    SAY @2512
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)
        RestParty()~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk15#10
    SAY @2514
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)
        RestParty()~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk15#11
    SAY @2516
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)
        RestParty()~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk15#12
    SAY @2518
    IF ~~ DO ~SetGlobal("EU#LenaKillRomance","LOCALS",1)
        DropInventory()
        RestParty()~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk15#13
    SAY @2520
    = @2521
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)
        RestParty()~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk15#1.1
    SAY @2507
    IF ~~ GOTO EU#LenaTalk.LoveTalk15#7
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk15#1
    SAY @2505
    IF ~~ THEN REPLY @2506 GOTO EU#LenaTalk.LoveTalk15#1.1
    IF ~~ THEN REPLY @2508 GOTO EU#LenaTalk.LoveTalk15#7
    IF ~GlobalGT("EU#LenaDuelPoints","LOCALS",0)~ THEN REPLY @2510 DO ~IncrementGlobal("EU#LenaLike","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk15#8
    IF ~!GlobalGT("EU#LenaDuelPoints","LOCALS",0)~ THEN REPLY @2510 DO ~IncrementGlobal("EU#LenaLike","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk15#9
    IF ~~ THEN REPLY @2513 GOTO EU#LenaTalk.LoveTalk15#10
    IF ~~ THEN REPLY @2515 GOTO EU#LenaTalk.LoveTalk15#11
    IF ~~ THEN REPLY @2517 GOTO EU#LenaTalk.LoveTalk15#12
    IF ~~ THEN REPLY @2519 GOTO EU#LenaTalk.LoveTalk15#13
    IF ~~ THEN REPLY @2522 DO ~SetGlobal("EU#LenaPlayerLovesLena","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk15#2
    IF ~~ THEN REPLY @2540 DO ~SetGlobal("EU#LenaPlayerLovesLena","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk15#2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk15#2
    SAY @2523
    IF ~Global("EU#LenaPlayerKissed","LOCALS",1)~ THEN REPLY @2524 DO ~IncrementGlobal("EU#LenaLike","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk15#2.1
    IF ~~ THEN REPLY @2534 GOTO EU#LenaTalk.LoveTalk15#2.2
    IF ~~ THEN REPLY @2536 GOTO EU#LenaTalk.LoveTalk15#2.3
    IF ~~ THEN REPLY @2538 GOTO EU#LenaTalk.LoveTalk15#2.4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk15#2.4
    SAY @2539
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)
        RestParty()~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk15#2.3
    SAY @2537
    IF ~~ THEN REPLY @2528 GOTO EU#LenaTalk.LoveTalk15#6
    IF ~~ THEN REPLY @2530 GOTO EU#LenaTalk.LoveTalk15#5
    IF ~Global("EU#LenaPlayerKissed","LOCALS",1)~ THEN REPLY @2532 GOTO EU#LenaTalk.LoveTalk15#3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk15#2.2
    SAY @2535
    IF ~~ THEN REPLY @2528 GOTO EU#LenaTalk.LoveTalk15#6
    IF ~~ THEN REPLY @2530 GOTO EU#LenaTalk.LoveTalk15#5
    IF ~Global("EU#LenaPlayerKissed","LOCALS",1)~ THEN REPLY @2532 GOTO EU#LenaTalk.LoveTalk15#3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk15#2.1
    SAY @2525
    IF ~~ THEN REPLY @2526 GOTO EU#LenaTalk.LoveTalk15#2.1.1
    IF ~~ THEN REPLY @2528 GOTO EU#LenaTalk.LoveTalk15#6
    IF ~~ THEN REPLY @2530 GOTO EU#LenaTalk.LoveTalk15#5
    IF ~Global("EU#LenaPlayerKissed","LOCALS",1)~ THEN REPLY @2532 GOTO EU#LenaTalk.LoveTalk15#3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk15#2.1.1
    SAY @2527
    IF ~~ THEN REPLY @2528 GOTO EU#LenaTalk.LoveTalk15#6
    IF ~~ THEN REPLY @2530 GOTO EU#LenaTalk.LoveTalk15#5
    IF ~Global("EU#LenaPlayerKissed","LOCALS",1)~ THEN REPLY @2532 GOTO EU#LenaTalk.LoveTalk15#3
END                         

////////////////////////////////////////
//:.  Lovetalk: Lena Accepts (#16)  .://
////////////////////////////////////////

IF ~Global("EU#LenaLoveTalk","LOCALS",32)~ BEGIN EU#LenaTalk.LoveTalk16
    SAY @2601
    IF ~OR(12)
        AreaCheck("AR0021") // crooked crane, city gates, lvl1
        AreaCheck("AR0406") // copper coronet, lvl2
        AreaCheck("AR0704") // mithrest, waukens prom, lvl4
        AreaCheck("AR0709") // den of seven vales, lvl3
        AreaCheck("AR0313") // sea bounty tavern, lvl4
        AreaCheck("AR0509") // five flagons, lvl4
        AreaCheck("AR0513") // delosar, bridge, lvl4
        AreaCheck("AR1602") // vulgar monkey, lvl2
        AreaCheck("AR1105") // umar inn, lvl3
        AreaCheck("AR2010") // vyatri pub, trademeet, lvl3
        AreaCheck("AR5003") // saradush tavern, lvl3
        AreaCheck("AR5501") // amkethran inn, lvl3
        ~ DO ~SetGlobal("EU#LenaLoveTalk16InanInn","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk16-1
    IF ~!AreaCheck("AR0021") // crooked crane, city gates, lvl1
        !AreaCheck("AR0406") // copper coronet, lvl2
        !AreaCheck("AR0704") // mithrest, waukens prom, lvl4
        !AreaCheck("AR0709") // den of seven vales, lvl3
        !AreaCheck("AR0313") // sea bounty tavern, lvl4
        !AreaCheck("AR0509") // five flagons, lvl4
        !AreaCheck("AR0513") // delosar, bridge, lvl4
        !AreaCheck("AR1602") // vulgar monkey, lvl2
        !AreaCheck("AR1105") // umar inn, lvl3
        !AreaCheck("AR2010") // vyatri pub, trademeet, lvl3
        !AreaCheck("AR5003") // saradush tavern, lvl3
        !AreaCheck("AR5501") // amkethran inn, lvl3
        ~ DO ~SetGlobal("EU#LenaLoveTalk16InanInn","LOCALS",0)~ GOTO EU#LenaTalk.LoveTalk16-2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk16-1
    SAY @2602
    IF ~~ GOTO EU#LenaTalk.LoveTalk16-3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk16-2
    SAY @2603
    IF ~~ GOTO EU#LenaTalk.LoveTalk16-3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk16-3
    SAY @2604
    IF ~~ THEN REPLY @2605 GOTO EU#LenaTalk.LoveTalk16#1
    IF ~~ THEN REPLY @2645 GOTO EU#LenaTalk.LoveTalk16-3.2
    IF ~Global("EU#LenaLoveTalk16InanInn","LOCALS",1)~ THEN REPLY @2648 GOTO EU#LenaTalk.LoveTalk16#8
    IF ~!Global("EU#LenaLoveTalk16InanInn","LOCALS",1)~ THEN REPLY @2649 GOTO EU#LenaTalk.LoveTalk16#8
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk16-3.2
    SAY @2646
    IF ~~ THEN REPLY @2647 GOTO EU#LenaTalk.LoveTalk16#1
    IF ~Global("EU#LenaLoveTalk16InanInn","LOCALS",1)~ THEN REPLY @2648 GOTO EU#LenaTalk.LoveTalk16#8
    IF ~!Global("EU#LenaLoveTalk16InanInn","LOCALS",1)~ THEN REPLY @2649 GOTO EU#LenaTalk.LoveTalk16#8
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk16#8
    SAY @2650
    IF ~~ DO ~SetGlobal("EU#LenaRomanceActive","LOCALS",3)
        RestParty()~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk16#3
    SAY @2623
    IF ~~ DO ~SetGlobal("EU#LenaRomanceActive","LOCALS",3)
        RestParty()~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk16#4
    SAY @2614
    IF ~~ GOTO EU#LenaTalk.LoveTalk16#9
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk16#5
    SAY @2626
    IF ~~ GOTO EU#LenaTalk.LoveTalk16#8
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk16#6
    SAY @2618
    IF ~~ GOTO EU#LenaTalk.LoveTalk16#9
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk16#7
    SAY @2616
    IF ~~ GOTO EU#LenaTalk.LoveTalk16#4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk16#9
    SAY @2615
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)
        SetGlobal("EU#LenaRomanceActive","GLOBAL",2)
        RestParty()~ EXIT
END
         
IF ~~ BEGIN EU#LenaTalk.LoveTalk16#1
    SAY @2606
    IF ~Global("EU#LenaPlayerLovesLena","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk16#1-1
    IF ~!Global("EU#LenaPlayerLovesLena","LOCALS",1)~ GOTO EU#LenaTalk.LoveTalk16#1-2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk16#1-1
    SAY @2607
    IF ~~ THEN REPLY @2608 GOTO EU#LenaTalk.LoveTalk16#2
    IF ~~ THEN REPLY @2620 GOTO EU#LenaTalk.LoveTalk16#1-1.2
    IF ~~ THEN REPLY @2622 GOTO EU#LenaTalk.LoveTalk16#3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk16#1-1.2
    SAY @2621
    IF ~~ GOTO EU#LenaTalk.LoveTalk16#2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk16#1-2.2
    SAY @2628
    IF ~~ GOTO EU#LenaTalk.LoveTalk16#5
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk16#1-2
    SAY @2624
    IF ~~ THEN REPLY @2625 GOTO EU#LenaTalk.LoveTalk16#5
    IF ~~ THEN REPLY @2627 GOTO EU#LenaTalk.LoveTalk16#1-2.2
    IF ~~ THEN REPLY @2629 GOTO EU#LenaTalk.LoveTalk16#1-2.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk16#2
    SAY @2609
    = @2610
    = @2611
    IF ~Global("EU#LenaPlayerKissed","LOCALS",1)~ THEN REPLY @2612 GOTO EU#LenaTalk.LoveTalk16#2-1
    IF ~!Global("EU#LenaPlayerKissed","LOCALS",1)~ THEN REPLY @2612 GOTO EU#LenaTalk.LoveTalk16#7
    IF ~~ THEN REPLY @2617 GOTO EU#LenaTalk.LoveTalk16#6
    IF ~~ THEN REPLY @2619 GOTO EU#LenaTalk.LoveTalk16#3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk16#2-1
    SAY @2613
    IF ~~ GOTO EU#LenaTalk.LoveTalk16#4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk16#1-2.3
    SAY @2630
    IF ~~ THEN REPLY @2631 GOTO EU#LenaTalk.LoveTalk16#1-2.3.1
    IF ~~ THEN REPLY @2633 GOTO EU#LenaTalk.LoveTalk16#1-2.3.2
    IF ~~ THEN REPLY @2636 GOTO EU#LenaTalk.LoveTalk16#1-2.3.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk16#1-2.3.1
    SAY @2632
    IF ~~ GOTO EU#LenaTalk.LoveTalk16#8
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk16#1-2.3.2
    SAY @2634
    = @2635
    IF ~~ GOTO EU#LenaTalk.LoveTalk16#6
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk16#1-2.3.3
    SAY @2637
    = @2638
    = @2639
    = @2640
    IF ~~ THEN REPLY @2641 GOTO EU#LenaTalk.LoveTalk16#6
    IF ~~ THEN REPLY @2642 GOTO EU#LenaTalk.LoveTalk16#1-2.3.2.2
    IF ~~ THEN REPLY @2644 GOTO EU#LenaTalk.LoveTalk16#7
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk16#1-2.3.2.2
    SAY @2643
    IF ~~ GOTO EU#LenaTalk.LoveTalk16#4
END

////////////////////////////////////////////
//:.  Lovetalk: Keep This Secret (#17)  .://
////////////////////////////////////////////

IF ~Global("EU#LenaLoveTalk","LOCALS",34)~ BEGIN EU#LenaTalk.LoveTalk17
    SAY @2701
    = @2702
    = @2703
    = @2704
    IF ~~ THEN REPLY @2705 GOTO EU#LenaTalk.LoveTalk17#1
    IF ~~ THEN REPLY @2720 GOTO EU#LenaTalk.LoveTalk17.2
    IF ~~ THEN REPLY @2722 GOTO EU#LenaTalk.LoveTalk17.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk17.2
    SAY @2721
    IF ~~ GOTO EU#LenaTalk.LoveTalk17#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk17.3
    SAY @2723
    IF ~~ GOTO EU#LenaTalk.LoveTalk17#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk17#2
    SAY @2710
    IF ~~ GOTO EU#LenaTalk.LoveTalk17#4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk17#4
    SAY @2711
    = @2712
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk17#1
    SAY @2706
    IF ~~ THEN REPLY @2707 GOTO EU#LenaTalk.LoveTalk17#1.1
    IF ~~ THEN REPLY @2709 GOTO EU#LenaTalk.LoveTalk17#2
    IF ~~ THEN REPLY @2713 GOTO EU#LenaTalk.LoveTalk17#3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk17#1.1
    SAY @2708
    IF ~~ THEN REPLY @2709 GOTO EU#LenaTalk.LoveTalk17#2
    IF ~~ THEN REPLY @2713 GOTO EU#LenaTalk.LoveTalk17#3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk17#3
    SAY @2714
    IF ~~ THEN REPLY @2715 GOTO EU#LenaTalk.LoveTalk17#3.1
    IF ~~ THEN REPLY @2718 GOTO EU#LenaTalk.LoveTalk17#3.2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk17#3.1
    SAY @2716
    = @2717
    IF ~~ GOTO EU#LenaTalk.LoveTalk17#4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk17#3.2
    SAY @2719
    IF ~~ GOTO EU#LenaTalk.LoveTalk17#4
END

////////////////////////////////////
//:.  Lovetalk: The Gift (#18)  .://
////////////////////////////////////

IF ~Global("EU#LenaLoveTalk","LOCALS",36)~ BEGIN EU#LenaTalk.LoveTalk18
    SAY @2801
    = @2802
    = @2803
    = @2804
    = @2805
    IF ~~ THEN REPLY @2806 GOTO EU#LenaTalk.LoveTalk18.1
    IF ~~ THEN REPLY @2808 GOTO EU#LenaTalk.LoveTalk18.2
    IF ~~ THEN REPLY @2837 GOTO EU#LenaTalk.LoveTalk18.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk18.1
    SAY @2807
    IF ~~ GOTO EU#LenaTalk.LoveTalk18#5
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk18.2
    SAY @2809
    = @2810
    IF ~~ GOTO EU#LenaTalk.LoveTalk18#5
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk18.3
    SAY @2838
    IF ~~ GOTO EU#LenaTalk.LoveTalk18#5
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk18#1
    SAY @2814
    IF ~~ GOTO EU#LenaTalk.LoveTalk18#4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk18#2
    SAY @2813
    IF ~~ GOTO EU#LenaTalk.LoveTalk18#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk18#6
    SAY @2818
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk18#3
    SAY @2836
    IF ~~ GOTO EU#LenaTalk.LoveTalk18#4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk18#4
    SAY @2815
    IF ~~ THEN REPLY @2816 GOTO EU#LenaTalk.LoveTalk18#4.1
    IF ~~ THEN REPLY @2819 GOTO EU#LenaTalk.LoveTalk18#4.2
    IF ~~ THEN REPLY @2821 GOTO EU#LenaTalk.LoveTalk18#4.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk18#4.1
    SAY @2817
    IF ~~ GOTO EU#LenaTalk.LoveTalk18#6
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk18#4.2
    SAY @2820
    IF ~~ GOTO EU#LenaTalk.LoveTalk18#6
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk18#4.3
    SAY @2822
    IF ~~ GOTO EU#LenaTalk.LoveTalk18#6
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk18#5
    SAY @2811
    IF ~~ THEN REPLY @2812 GOTO EU#LenaTalk.LoveTalk18#2
    IF ~~ THEN REPLY @2823 GOTO EU#LenaTalk.LoveTalk18#5.2
    IF ~~ THEN REPLY @2825 GOTO EU#LenaTalk.LoveTalk18#5.3
    IF ~~ THEN REPLY @2827 GOTO EU#LenaTalk.LoveTalk18#5.4
    IF ~~ THEN REPLY @2831 GOTO EU#LenaTalk.LoveTalk18#5.5
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk18#5.2
    SAY @2824
    IF ~~GOTO EU#LenaTalk.LoveTalk18#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk18#5.3
    SAY @2826
    IF ~~GOTO EU#LenaTalk.LoveTalk18#2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk18#5.4
    SAY @2828
    = @2829
    = @2830
    IF ~~GOTO EU#LenaTalk.LoveTalk18#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk18#5.5
    SAY @2832
    IF ~~ THEN REPLY @2833 GOTO EU#LenaTalk.LoveTalk18#3
    IF ~~ THEN REPLY @2834 GOTO EU#LenaTalk.LoveTalk18#3
    IF ~~ THEN REPLY @2835 GOTO EU#LenaTalk.LoveTalk18#3
END

////////////////////////////////////////////
//:.  Lovetalk: Shave That Beard (#19)  .://
////////////////////////////////////////////

IF ~Global("EU#LenaLoveTalk","LOCALS",38)~ BEGIN EU#LenaTalk.LoveTalk19
    SAY @2901
    = @2902
    = @2903
    IF ~~ THEN REPLY @2904 GOTO EU#LenaTalk.LoveTalk19.1
    IF ~~ THEN REPLY @2954 GOTO EU#LenaTalk.LoveTalk19.2
    IF ~~ THEN REPLY @2956 GOTO EU#LenaTalk.LoveTalk19#1
    IF ~~ THEN REPLY @2957 GOTO EU#LenaTalk.LoveTalk19.4
    IF ~~ THEN REPLY @2959 GOTO EU#LenaTalk.LoveTalk19.5
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk19.2
    SAY @2955
    IF ~~ THEN REPLY @2916 GOTO EU#LenaTalk.LoveTalk19#7
    IF ~~ THEN REPLY @2923 GOTO EU#LenaTalk.LoveTalk19#8
    IF ~~ THEN REPLY @2936 GOTO EU#LenaTalk.LoveTalk19#3
    IF ~~ THEN REPLY @2907 GOTO EU#LenaTalk.LoveTalk19#10
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk19.4
    SAY @2958
    IF ~~ THEN REPLY @2916 GOTO EU#LenaTalk.LoveTalk19#7
    IF ~~ THEN REPLY @2923 GOTO EU#LenaTalk.LoveTalk19#8
    IF ~~ THEN REPLY @2936 GOTO EU#LenaTalk.LoveTalk19#3
    IF ~~ THEN REPLY @2907 GOTO EU#LenaTalk.LoveTalk19#10
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk19.5
    SAY @2960
    IF ~~ DO ~SetGlobal("EU#LenaKillRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk19.1
    SAY @2905
    IF ~~ GOTO EU#LenaTalk.LoveTalk19#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk19#2
    SAY @2939
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk19#6
    SAY @2948
    = @2949
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk19#1
    SAY @2906
    IF ~~ THEN REPLY @2907 GOTO EU#LenaTalk.LoveTalk19#10
    IF ~~ THEN REPLY @2916 GOTO EU#LenaTalk.LoveTalk19#7
    IF ~~ THEN REPLY @2923 GOTO EU#LenaTalk.LoveTalk19#8
    IF ~~ THEN REPLY @2936 GOTO EU#LenaTalk.LoveTalk19#3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk19#10.1-1
    SAY @2911
    IF ~~ THEN REPLY @2916 GOTO EU#LenaTalk.LoveTalk19#7
    IF ~~ THEN REPLY @2923 GOTO EU#LenaTalk.LoveTalk19#8
    IF ~~ THEN REPLY @2936 GOTO EU#LenaTalk.LoveTalk19#3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk19#10.1-2
    SAY @2910
    IF ~~ THEN REPLY @2916 GOTO EU#LenaTalk.LoveTalk19#7
    IF ~~ THEN REPLY @2923 GOTO EU#LenaTalk.LoveTalk19#8
    IF ~~ THEN REPLY @2936 GOTO EU#LenaTalk.LoveTalk19#3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk19#10.2
    SAY @2913
    IF ~~ THEN REPLY @2916 GOTO EU#LenaTalk.LoveTalk19#7
    IF ~~ THEN REPLY @2923 GOTO EU#LenaTalk.LoveTalk19#8
    IF ~~ THEN REPLY @2936 GOTO EU#LenaTalk.LoveTalk19#3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk19#10.3
    SAY @2915
    IF ~~ THEN REPLY @2916 GOTO EU#LenaTalk.LoveTalk19#7
    IF ~~ THEN REPLY @2923 GOTO EU#LenaTalk.LoveTalk19#8
    IF ~~ THEN REPLY @2936 GOTO EU#LenaTalk.LoveTalk19#3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk19#7.4
    SAY @2921
    = @2922
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk19#10
    SAY @2908
    IF ~Race(Player1,ELF)~ THEN REPLY @2909 GOTO EU#LenaTalk.LoveTalk19#10.1-1
    IF ~!Race(Player1,ELF)~ THEN REPLY @2909 GOTO EU#LenaTalk.LoveTalk19#10.1-2
    IF ~~ THEN REPLY @2912 GOTO EU#LenaTalk.LoveTalk19#10.2
    IF ~~ THEN REPLY @2914 GOTO EU#LenaTalk.LoveTalk19#10.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk19#7
    SAY @2917
    IF ~~ THEN REPLY @2938 GOTO EU#LenaTalk.LoveTalk19#2
    IF ~~ THEN REPLY @2918 GOTO EU#LenaTalk.LoveTalk19#5
    IF ~~ THEN REPLY @2919 GOTO EU#LenaTalk.LoveTalk19#6
    IF ~~ THEN REPLY @2920 GOTO EU#LenaTalk.LoveTalk19#7.4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk19#8
    SAY @2924
    IF ~~ THEN REPLY @2925 GOTO EU#LenaTalk.LoveTalk19#8.1
    IF ~~ THEN REPLY @2927 GOTO EU#LenaTalk.LoveTalk19#8.2
    IF ~~ THEN REPLY @2935 GOTO EU#LenaTalk.LoveTalk19#3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk19#8.1
    SAY @2926
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk19#8.2
    SAY @2928
    IF ~~ THEN REPLY @2929 GOTO EU#LenaTalk.LoveTalk19#8.2.1
    IF ~~ THEN REPLY @2931 GOTO EU#LenaTalk.LoveTalk19#8.2.2
    IF ~~ THEN REPLY @2933 GOTO EU#LenaTalk.LoveTalk19#8.2.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk19#8.2.1
    SAY @2930
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk19#8.2.2
    SAY @2932
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk19#8.2.3
    SAY @2934
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk19#3
    SAY @2937
    IF ~~ THEN REPLY @2938 GOTO EU#LenaTalk.LoveTalk19#2
    IF ~~ THEN REPLY @2940 GOTO EU#LenaTalk.LoveTalk19#5
    IF ~~ THEN REPLY @2947 GOTO EU#LenaTalk.LoveTalk19#6
    IF ~~ THEN REPLY @2950 GOTO EU#LenaTalk.LoveTalk19#3.4
    IF ~~ THEN REPLY @2952 GOTO EU#LenaTalk.LoveTalk19#3.5
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk19#3.4
    SAY @2951
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk19#3.5
    SAY @2953
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk19#5.2
    SAY @2944
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END
    
IF ~~ BEGIN EU#LenaTalk.LoveTalk19#5.3
    SAY @2946
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk19#5
    SAY @2941
    IF ~~ THEN REPLY @2942 GOTO EU#LenaTalk.LoveTalk19#2
    IF ~~ THEN REPLY @2943 GOTO EU#LenaTalk.LoveTalk19#5.2
    IF ~~ THEN REPLY @2945 GOTO EU#LenaTalk.LoveTalk19#5.3
END

///////////////////////////////////////////
//:.  Lovetalk: Wings, Not Tail (#20)  .://
///////////////////////////////////////////

IF ~Global("EU#LenaLoveTalk","LOCALS",40)~ BEGIN EU#LenaTalk.LoveTalk20
    SAY @3001
    = @3002
    = @3003
    = @3004
    IF ~~ THEN REPLY @3005 GOTO EU#LenaTalk.LoveTalk20.1
    IF ~~ THEN REPLY @3035 GOTO EU#LenaTalk.LoveTalk20.2
    IF ~~ THEN REPLY @3038 GOTO EU#LenaTalk.LoveTalk20.3
    IF ~~ THEN REPLY @3051 GOTO EU#LenaTalk.LoveTalk20.4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk20.4
    SAY @3052
    IF ~~ DO ~SetGlobal("EU#LenaKillRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk20#5
    SAY @3013
    IF ~~ GOTO EU#LenaTalk.LoveTalk20#7
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk20#7
    SAY @3014
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk20#8
    SAY @3041
    IF ~~ GOTO EU#LenaTalk.LoveTalk20#9
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk20#10
    SAY @3048
    IF ~~ GOTO EU#LenaTalk.LoveTalk20#9
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk20#4
    SAY @3030
    = @3031
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk20#11
    SAY @3033
    = @3034
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk20#6
    SAY @3026
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk20#2
    SAY @3018
    = @3019
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk20#9
    SAY @3042
    IF ~~ THEN REPLY @3007 GOTO EU#LenaTalk.LoveTalk20#1
    IF ~~ THEN REPLY @3017 GOTO EU#LenaTalk.LoveTalk20#2
    IF ~~ THEN REPLY @3020 GOTO EU#LenaTalk.LoveTalk20#3
    IF ~~ THEN REPLY @3029 GOTO EU#LenaTalk.LoveTalk20#4
    IF ~~ THEN REPLY @3032 GOTO EU#LenaTalk.LoveTalk20#11
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk20.3
    SAY @3039
    IF ~~ THEN REPLY @3040 GOTO EU#LenaTalk.LoveTalk20#8
    IF ~~ THEN REPLY @3043 GOTO EU#LenaTalk.LoveTalk20#8
    IF ~~ THEN REPLY @3044 GOTO EU#LenaTalk.LoveTalk20#10
    IF ~~ THEN REPLY @3045 GOTO EU#LenaTalk.LoveTalk20.3.4
    IF ~~ THEN REPLY @3047 GOTO EU#LenaTalk.LoveTalk20#10
    IF ~~ THEN REPLY @3049 GOTO EU#LenaTalk.LoveTalk20.3.6
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk20.3.4
    SAY @3046
    IF ~~ GOTO EU#LenaTalk.LoveTalk20#9
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk20.3.6
    SAY @3050
    IF ~~ GOTO EU#LenaTalk.LoveTalk20#9
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk20.2
    SAY @3036
    = @3037
    IF ~~ THEN REPLY @3007 GOTO EU#LenaTalk.LoveTalk20#1
    IF ~~ THEN REPLY @3017 GOTO EU#LenaTalk.LoveTalk20#2
    IF ~~ THEN REPLY @3020 GOTO EU#LenaTalk.LoveTalk20#3
    IF ~~ THEN REPLY @3029 GOTO EU#LenaTalk.LoveTalk20#4
    IF ~~ THEN REPLY @3032 GOTO EU#LenaTalk.LoveTalk20#11
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk20.1
    SAY @3006
    IF ~~ THEN REPLY @3007 GOTO EU#LenaTalk.LoveTalk20#1
    IF ~~ THEN REPLY @3017 GOTO EU#LenaTalk.LoveTalk20#2
    IF ~~ THEN REPLY @3020 GOTO EU#LenaTalk.LoveTalk20#3
    IF ~~ THEN REPLY @3029 GOTO EU#LenaTalk.LoveTalk20#4
    IF ~~ THEN REPLY @3032 GOTO EU#LenaTalk.LoveTalk20#11
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk20#1
    SAY @3008
    IF ~~ THEN REPLY @3009 GOTO EU#LenaTalk.LoveTalk20#1.1
    IF ~~ THEN REPLY @3011 GOTO EU#LenaTalk.LoveTalk20#1.2
    IF ~~ THEN REPLY @3015 GOTO EU#LenaTalk.LoveTalk20#1.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk20#1.1
    SAY @3010
    IF ~~ GOTO EU#LenaTalk.LoveTalk20#5
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk20#1.2
    SAY @3012
    IF ~~ GOTO EU#LenaTalk.LoveTalk20#5
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk20#1.3
    SAY @3016
    IF ~~ GOTO EU#LenaTalk.LoveTalk20#5
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk20#3
    SAY @3021
    IF ~~ THEN REPLY @3022 GOTO EU#LenaTalk.LoveTalk20#3.1
    IF ~~ THEN REPLY @3024 GOTO EU#LenaTalk.LoveTalk20#3.2
    IF ~~ THEN REPLY @3027 GOTO EU#LenaTalk.LoveTalk20#3.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk20#3.1
    SAY @3023
    IF ~~ GOTO EU#LenaTalk.LoveTalk20#6
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk20#3.2
    SAY @3025
    IF ~~ GOTO EU#LenaTalk.LoveTalk20#6
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk20#3.3
    SAY @3028
    IF ~~ GOTO EU#LenaTalk.LoveTalk20#7
END

//////////////////////////////////////
//:.  Lovetalk: Want a Pet (#21)  .://
//////////////////////////////////////

IF ~Global("EU#LenaLoveTalk","LOCALS",42)~ BEGIN EU#LenaTalk.LoveTalk21
    SAY @3101
    IF ~~ THEN REPLY @3102 GOTO EU#LenaTalk.LoveTalk21.1
    IF ~~ THEN REPLY @3104 GOTO EU#LenaTalk.LoveTalk21.2
    IF ~~ THEN REPLY @3106 GOTO EU#LenaTalk.LoveTalk21.3
    IF ~~ THEN REPLY @3108 GOTO EU#LenaTalk.LoveTalk21.4
    IF ~~ THEN REPLY @3110 GOTO EU#LenaTalk.LoveTalk21.5
    IF ~~ THEN REPLY @3112 GOTO EU#LenaTalk.LoveTalk21.6
    IF ~~ THEN REPLY @3114 GOTO EU#LenaTalk.LoveTalk21.7
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk21.1
    SAY @3103
    IF ~~ GOTO EU#LenaTalk.LoveTalk21#7
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk21.2
    SAY @3105
    IF ~~ GOTO EU#LenaTalk.LoveTalk21#7
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk21.3
    SAY @3107
    IF ~~ GOTO EU#LenaTalk.LoveTalk21#7
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk21.4
    SAY @3109
    IF ~~ GOTO EU#LenaTalk.LoveTalk21#7
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk21.5
    SAY @3111
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)
        IncrementGlobal("EU#LenaLike","LOCALS",-2)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk21.6
    SAY @3113
    IF ~~ GOTO EU#LenaTalk.LoveTalk21#7
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk21.7
    SAY @3115
    IF ~~ GOTO EU#LenaTalk.LoveTalk21#7
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk21#1
    SAY @3121
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk21#3
    SAY @3123
    IF ~~ GOTO EU#LenaTalk.LoveTalk21#5
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk21#5
    SAY @3124
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk21#4
    SAY @3126
    IF ~~ GOTO EU#LenaTalk.LoveTalk21#5
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk21#6
    SAY @3135
    IF ~~ THEN REPLY @3120 GOTO EU#LenaTalk.LoveTalk21#1
    IF ~~ THEN REPLY @3122 GOTO EU#LenaTalk.LoveTalk21#3
    IF ~~ THEN REPLY @3125 GOTO EU#LenaTalk.LoveTalk21#4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk21#7
    SAY @3116
    = @3117
    IF ~~ THEN REPLY @3118 GOTO EU#LenaTalk.LoveTalk21#7.1
    IF ~~ THEN REPLY @3127 GOTO EU#LenaTalk.LoveTalk21#7.2
    IF ~~ THEN REPLY @3129 GOTO EU#LenaTalk.LoveTalk21#7.3
    IF ~~ THEN REPLY @3134 GOTO EU#LenaTalk.LoveTalk21#6
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk21#7.1
    SAY @3119
    IF ~~ THEN REPLY @3120 GOTO EU#LenaTalk.LoveTalk21#1
    IF ~~ THEN REPLY @3122 GOTO EU#LenaTalk.LoveTalk21#3
    IF ~~ THEN REPLY @3125 GOTO EU#LenaTalk.LoveTalk21#4
    IF ~~ THEN REPLY @3134 GOTO EU#LenaTalk.LoveTalk21#6
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk21#7.2
    SAY @3128
    IF ~~ THEN REPLY @3120 GOTO EU#LenaTalk.LoveTalk21#1
    IF ~~ THEN REPLY @3122 GOTO EU#LenaTalk.LoveTalk21#3
    IF ~~ THEN REPLY @3125 GOTO EU#LenaTalk.LoveTalk21#4
    IF ~~ THEN REPLY @3134 GOTO EU#LenaTalk.LoveTalk21#6
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk21#7.3
    SAY @3130
    IF ~~ THEN REPLY @3131 GOTO EU#LenaTalk.LoveTalk21#7.3.1
    IF ~~ THEN REPLY @3133 GOTO EU#LenaTalk.LoveTalk21#3
    IF ~~ THEN REPLY @3134 GOTO EU#LenaTalk.LoveTalk21#6
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk21#7.3.1
    SAY @3132
    IF ~~ GOTO EU#LenaTalk.LoveTalk21#5
END

////////////////////////////////////
//:.  Lovetalk: Break Up (#22)  .://
////////////////////////////////////

IF ~Global("EU#LenaLoveTalk","LOCALS",44)~ BEGIN EU#LenaTalk.LoveTalk22
    SAY @3201
    = @3202
    = @3203
    = @3204
    IF ~~ THEN REPLY @3205 GOTO EU#LenaTalk.LoveTalk22.1
    IF ~~ THEN REPLY @3258 GOTO EU#LenaTalk.LoveTalk22.2
    IF ~~ THEN REPLY @3260 GOTO EU#LenaTalk.LoveTalk22.3
    IF ~~ THEN REPLY @3262 GOTO EU#LenaTalk.LoveTalk22.4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk22.1
    SAY @3206
    IF ~~ GOTO EU#LenaTalk.LoveTalk22#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk22.2
    SAY @3259
    IF ~~ GOTO EU#LenaTalk.LoveTalk22#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk22.3
    SAY @3261
    IF ~~ GOTO EU#LenaTalk.LoveTalk22#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk22.4
    SAY @3263
    = @3264
    IF ~~ DO ~SetGlobal("EU#LenaKillRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk22#6
    SAY @3231
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk22#4
    SAY @3222
    = @3223
    = @3224
    IF ~~ GOTO EU#LenaTalk.LoveTalk22#5
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk22#1
    SAY @3207
    = @3208
    = @3209
    = @3210
    IF ~~ THEN REPLY @3211 GOTO EU#LenaTalk.LoveTalk22#1.1
    IF ~~ THEN REPLY @3250 GOTO EU#LenaTalk.LoveTalk22#1.2
    IF ~~ THEN REPLY @3252 GOTO EU#LenaTalk.LoveTalk22#1.3
    IF ~~ THEN REPLY @3254 GOTO EU#LenaTalk.LoveTalk22#1.4
    IF ~~ THEN REPLY @3256 GOTO EU#LenaTalk.LoveTalk22#1.5
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk22#1.1
    SAY @3212
    IF ~~ GOTO EU#LenaTalk.LoveTalk22#2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk22#1.2
    SAY @3251
    IF ~~ GOTO EU#LenaTalk.LoveTalk22#2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk22#1.3
    SAY @3253
    IF ~~ GOTO EU#LenaTalk.LoveTalk22#2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk22#1.4
    SAY @3255
    IF ~~ GOTO EU#LenaTalk.LoveTalk22#2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk22#1.5
    SAY @3257
    IF ~~ GOTO EU#LenaTalk.LoveTalk22#2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk22#2
    SAY @3213
    IF ~~ THEN REPLY @3214 GOTO EU#LenaTalk.LoveTalk22#2.1
    IF ~~ THEN REPLY @3244 GOTO EU#LenaTalk.LoveTalk22#2.2
    IF ~~ THEN REPLY @3246 GOTO EU#LenaTalk.LoveTalk22#2.3
    IF ~~ THEN REPLY @3248 GOTO EU#LenaTalk.LoveTalk22#2.4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk22#2.1
    SAY @3215
    IF ~~ GOTO EU#LenaTalk.LoveTalk22#7
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk22#2.2
    SAY @3245
    IF ~~ GOTO EU#LenaTalk.LoveTalk22#7
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk22#2.3
    SAY @3247
    IF ~~ GOTO EU#LenaTalk.LoveTalk22#7
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk22#2.4
    SAY @3249
    IF ~~ GOTO EU#LenaTalk.LoveTalk22#7
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk22#7
    SAY @3265
    = @3216
    IF ~~ THEN REPLY @3217 GOTO EU#LenaTalk.LoveTalk22#7.1
    IF ~~ THEN REPLY @3238 GOTO EU#LenaTalk.LoveTalk22#7.2
    IF ~~ THEN REPLY @3240 GOTO EU#LenaTalk.LoveTalk22#7.3
    IF ~~ THEN REPLY @3242 GOTO EU#LenaTalk.LoveTalk22#7.4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk22#7.1
    SAY @3218
    IF ~~ GOTO EU#LenaTalk.LoveTalk22#3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk22#7.2
    SAY @3239
    IF ~~ GOTO EU#LenaTalk.LoveTalk22#3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk22#7.3
    SAY @3241
    IF ~~ GOTO EU#LenaTalk.LoveTalk22#3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk22#7.4
    SAY @3243
    IF ~~ GOTO EU#LenaTalk.LoveTalk22#3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk22#3
    SAY @3219
    IF ~~ THEN REPLY @3220 GOTO EU#LenaTalk.LoveTalk22#3.1
    IF ~~ THEN REPLY @3232 GOTO EU#LenaTalk.LoveTalk22#3.2
    IF ~~ THEN REPLY @3234 GOTO EU#LenaTalk.LoveTalk22#3.3
    IF ~~ THEN REPLY @3236 GOTO EU#LenaTalk.LoveTalk22#3.4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk22#3.1
    SAY @3221
    IF ~InParty("Imoen2")~ GOTO EU#LenaTalk.LoveTalk22#4
    IF ~!InParty("Imoen2")~ GOTO EU#LenaTalk.LoveTalk22#5
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk22#3.2
    SAY @3233
    IF ~InParty("Imoen2")~ GOTO EU#LenaTalk.LoveTalk22#4
    IF ~!InParty("Imoen2")~ GOTO EU#LenaTalk.LoveTalk22#5
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk22#3.3
    SAY @3235
    IF ~InParty("Imoen2")~ GOTO EU#LenaTalk.LoveTalk22#4
    IF ~!InParty("Imoen2")~ GOTO EU#LenaTalk.LoveTalk22#5
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk22#3.4
    SAY @3237
    IF ~InParty("Imoen2")~ GOTO EU#LenaTalk.LoveTalk22#4
    IF ~!InParty("Imoen2")~ GOTO EU#LenaTalk.LoveTalk22#5
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk22#5
    SAY @3266
    = @3225
    IF ~~ THEN REPLY @3226 GOTO EU#LenaTalk.LoveTalk22#6
    IF ~~ THEN REPLY @3227 GOTO EU#LenaTalk.LoveTalk22#5.2
    IF ~~ THEN REPLY @3229 GOTO EU#LenaTalk.LoveTalk22#5.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk22#5.2
    SAY @3228
    IF ~~ GOTO EU#LenaTalk.LoveTalk22#6
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk22#5.3
    SAY @3230
    IF ~~ GOTO EU#LenaTalk.LoveTalk22#6
END

////////////////////////////////////////////
//:.  Lovetalk: Get Drunk At Inn (#23)  .://
////////////////////////////////////////////

IF ~Global("EU#LenaLoveTalk","LOCALS",46)~ BEGIN EU#LenaTalk.LoveTalk23
    SAY @3301
    = @3302
    = @3303
    = @3304
    = @3305
    IF ~~ THEN REPLY @3306 GOTO EU#LenaTalk.LoveTalk23#1
    IF ~~ THEN REPLY @3307 GOTO EU#LenaTalk.LoveTalk23#1
    IF ~~ THEN REPLY @3308 GOTO EU#LenaTalk.LoveTalk23#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk23#1
    SAY @3309
    IF ~~ DO ~SetGlobal("EU#LenaLoveTalk23.Party","GLOBAL",1)~ GOTO EU#LenaTalk.LoveTalk23#Party
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk23#18
    SAY @3370
    IF ~~ THEN REPLY @3371 GOTO EU#LenaTalk.LoveTalk23#18.1
    IF ~~ THEN REPLY @3418 GOTO EU#LenaTalk.LoveTalk23#18.2
    IF ~~ THEN REPLY @3420 GOTO EU#LenaTalk.LoveTalk23#7
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk23#18.2
    SAY @3419
    IF ~~ GOTO EU#LenaTalk.LoveTalk23#7
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk23#18.1
    SAY @3372
    IF ~~ THEN REPLY @3417 GOTO EU#LenaTalk.LoveTalk23#7
    IF ~~ THEN REPLY @3373 GOTO EU#LenaTalk.LoveTalk23#1.1.1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk23#1.1.1
    SAY @3374
    = @3375
    = @3376
    IF ~~ THEN REPLY @3377 GOTO EU#LenaTalk.LoveTalk23#1.1.1.1
    IF ~~ THEN REPLY @3410 GOTO EU#LenaTalk.LoveTalk23#1.1.1.2
    IF ~~ THEN REPLY @3412 GOTO EU#LenaTalk.LoveTalk23#1.1.1.3
    IF ~~ THEN REPLY @3414 GOTO EU#LenaTalk.LoveTalk23#1.1.1.4
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk23#1.1.1.4
    SAY @3415
    = @3416
    IF ~~ GOTO EU#LenaTalk.LoveTalk23#19
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk23#1.1.1.1
    SAY @3378
    IF ~~ THEN REPLY @3379 GOTO EU#LenaTalk.LoveTalk23#13
    IF ~~ THEN REPLY @3380 GOTO EU#LenaTalk.LoveTalk23#13
    IF ~~ THEN REPLY @3381 GOTO EU#LenaTalk.LoveTalk23#13
    IF ~~ THEN REPLY @3382 GOTO EU#LenaTalk.LoveTalk23#13
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk23#13
    SAY @3383
    IF ~~ GOTO EU#LenaTalk.LoveTalk23#19
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk23#1.1.1.2
    SAY @3411
    IF ~~ THEN REPLY @3379 GOTO EU#LenaTalk.LoveTalk23#13
    IF ~~ THEN REPLY @3380 GOTO EU#LenaTalk.LoveTalk23#13
    IF ~~ THEN REPLY @3381 GOTO EU#LenaTalk.LoveTalk23#13
    IF ~~ THEN REPLY @3383 GOTO EU#LenaTalk.LoveTalk23#13
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk23#1.1.1.3
    SAY @3413
    IF ~~ THEN REPLY @3379 GOTO EU#LenaTalk.LoveTalk23#13
    IF ~~ THEN REPLY @3380 GOTO EU#LenaTalk.LoveTalk23#13
    IF ~~ THEN REPLY @3381 GOTO EU#LenaTalk.LoveTalk23#13
    IF ~~ THEN REPLY @3383 GOTO EU#LenaTalk.LoveTalk23#13
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk23#7
    SAY @3421
    = @3422
    = @3423 
    IF ~~ THEN REPLY @3424 GOTO EU#LenaTalk.LoveTalk23#7.1
    IF ~~ THEN REPLY @3426 GOTO EU#LenaTalk.LoveTalk23#8
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk23#7.1
    SAY @3425
    IF ~~ GOTO EU#LenaTalk.LoveTalk23#8
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk23#8
    SAY @3427
    = @3428
    IF ~~ THEN REPLY @3429 GOTO EU#LenaTalk.LoveTalk23#8.1
    IF ~~ THEN REPLY @3434 GOTO EU#LenaTalk.LoveTalk23#8.2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk23#8.1
    SAY @3430
    = @3431
    = @3432
    = @3433
    IF ~~ GOTO EU#LenaTalk.LoveTalk23#9
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk23#8.2
    SAY @3435
    = @3436
    = @3437
    = @3438
    = @3439
    IF ~~ GOTO EU#LenaTalk.LoveTalk23#9
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk23#9
    SAY @3440
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)
        SetGlobal("EU#LenaLoveTalk23.Party","GLOBAL",3)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk23#19
    SAY @3384
    = @3385
    = @3386
    IF ~~ THEN REPLY @3387 GOTO EU#LenaTalk.LoveTalk23#19.1
    IF ~~ THEN REPLY @3406 GOTO EU#LenaTalk.LoveTalk23#19.2
    IF ~~ THEN REPLY @3408 GOTO EU#LenaTalk.LoveTalk23#19.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk23#19.1
    SAY @3388
    IF ~~ GOTO EU#LenaTalk.LoveTalk23#10
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk23#19.2
    SAY @3407
    IF ~~ GOTO EU#LenaTalk.LoveTalk23#10
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk23#19.3
    SAY @3409
    IF ~~ GOTO EU#LenaTalk.LoveTalk23#10
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk23#10
    SAY @3389
    IF ~~ THEN REPLY @3390 GOTO EU#LenaTalk.LoveTalk23#10.1
    IF ~~ THEN REPLY @3401 GOTO EU#LenaTalk.LoveTalk23#10.2
    IF ~~ THEN REPLY @3403 GOTO EU#LenaTalk.LoveTalk23#10.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk23#10.1
    SAY @3391
    IF ~~ THEN REPLY @3392 GOTO EU#LenaTalk.LoveTalk23#10.1.1
    IF ~~ THEN REPLY @3399 GOTO EU#LenaTalk.LoveTalk23#10.1.2
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk23#10.2
    SAY @3402
    IF ~~ GOTO EU#LenaTalk.LoveTalk23#12
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk23#10.3
    SAY @3404
    IF ~~ GOTO EU#LenaTalk.LoveTalk23#12
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk23#12
    SAY @3405
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)
        SetGlobal("EU#LenaLoveTalk23.Party","GLOBAL",3)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk23#10.1.1
    SAY @3393
    = @3394
    = @3395
    = @3396
    = @3397
    = @3398
    IF ~~ DO ~SetGlobal("EU#LenaIncrementRomance","LOCALS",1)
        SetGlobal("EU#LenaLoveTalk23.Party","GLOBAL",3)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk23#10.1.2
    SAY @3400
    IF ~~ GOTO EU#LenaTalk.LoveTalk23#12
END        

///////////////////////////////////////////
//:.  Lovetalk: Leave Me Behind (#24)  .://
///////////////////////////////////////////

IF ~Global("EU#LenaLoveTalk","LOCALS",48)~ BEGIN EU#LenaTalk.LoveTalk24
    SAY @3501
    = @3502
    = @3503
    = @3504
    IF ~~ THEN REPLY @3505 GOTO EU#LenaTalk.LoveTalk24.1
    IF ~~ THEN REPLY @3524 GOTO EU#LenaTalk.LoveTalk24.2
    IF ~~ THEN REPLY @3526 GOTO EU#LenaTalk.LoveTalk24.3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk24.2
    SAY @3525
    IF ~~ THEN REPLY @3508 GOTO EU#LenaTalk.LoveTalk24#4
    IF ~~ THEN REPLY @3519 GOTO EU#LenaTalk.LoveTalk24#2
    IF ~~ THEN REPLY @3522 GOTO EU#LenaTalk.LoveTalk24#3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk24.3
    SAY @3527
    IF ~~ THEN REPLY @3508 GOTO EU#LenaTalk.LoveTalk24#4
    IF ~~ THEN REPLY @3519 GOTO EU#LenaTalk.LoveTalk24#2
    IF ~~ THEN REPLY @3522 GOTO EU#LenaTalk.LoveTalk24#3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk24.1
    SAY @3506
    = @3507
    IF ~~ THEN REPLY @3508 GOTO EU#LenaTalk.LoveTalk24#4
    IF ~~ THEN REPLY @3519 GOTO EU#LenaTalk.LoveTalk24#2
    IF ~~ THEN REPLY @3522 GOTO EU#LenaTalk.LoveTalk24#3
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk24#1
    SAY @3516
    IF ~~ DO ~IncrementGlobal("EU#LenaLoveTalk","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk24#8
    SAY @3518
    IF ~~ GOTO EU#LenaTalk.LoveTalk24#1
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk24#6
    SAY @3514
    IF ~~ DO ~IncrementGlobal("EU#LenaLoveTalk","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk24#5
    SAY @3511
    = @3512
    IF ~~ DO ~IncrementGlobal("EU#LenaLoveTalk","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk24#4
    SAY @3509
    IF ~~ THEN REPLY @3510 GOTO EU#LenaTalk.LoveTalk24#5
    IF ~~ THEN REPLY @3522 GOTO EU#LenaTalk.LoveTalk24#3
    IF ~~ THEN REPLY @3513 GOTO EU#LenaTalk.LoveTalk24#6
    IF ~~ THEN REPLY @3515 GOTO EU#LenaTalk.LoveTalk24#1
    IF ~~ THEN REPLY @3517 GOTO EU#LenaTalk.LoveTalk24#8
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk24#3
    SAY @3523
    IF ~~ THEN REPLY @3510 GOTO EU#LenaTalk.LoveTalk24#5
    IF ~~ THEN REPLY @3513 GOTO EU#LenaTalk.LoveTalk24#6
    IF ~~ THEN REPLY @3515 GOTO EU#LenaTalk.LoveTalk24#1
    IF ~~ THEN REPLY @3517 GOTO EU#LenaTalk.LoveTalk24#8
END

IF ~~ BEGIN EU#LenaTalk.LoveTalk24#2
    SAY @3520
    = @3521
    IF ~~ THEN REPLY @3510 GOTO EU#LenaTalk.LoveTalk24#5
    IF ~~ THEN REPLY @3513 GOTO EU#LenaTalk.LoveTalk24#6
    IF ~~ THEN REPLY @3515 GOTO EU#LenaTalk.LoveTalk24#1
    IF ~~ THEN REPLY @3517 GOTO EU#LenaTalk.LoveTalk24#8
    IF ~~ THEN REPLY @3522 GOTO EU#LenaTalk.LoveTalk24#3
END

// -------- TOB Lovetalks -------------------------------------------------------------------------------------------------------------------------------------

///////////////////////////////////////
//:.  Lovetalk: Bhaalspawns (#25)  .://
///////////////////////////////////////

IF ~Global("EU#LenaTOBLoveTalk.Bhaalspawn","LOCALS",2)~ BEGIN EU#LenaTalk.TOBLoveTalk.Bhaalspawn
    SAY @7000
    = @7001
    IF ~~ THEN REPLY @7002 GOTO EU#LenaTalk.TOBLoveTalk.Bhaalspawn#3
    IF ~~ THEN REPLY @7034 GOTO EU#LenaTalk.TOBLoveTalk.Bhaalspawn.2
    IF ~~ THEN REPLY @7036 GOTO EU#LenaTalk.TOBLoveTalk.Bhaalspawn.3
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Bhaalspawn.2
    SAY @7035
    IF ~~ GOTO EU#LenaTalk.TOBLoveTalk.Bhaalspawn#3
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Bhaalspawn.3
    SAY @7037
    IF ~~ GOTO EU#LenaTalk.TOBLoveTalk.Bhaalspawn#3
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Bhaalspawn#3
    SAY @7003
    IF ~InParty("Imoen2")
        InParty("Sarevok")~ GOTO EU#LenaTalk.TOBLoveTalk.Bhaalspawn#3-1
    IF ~!InParty("Imoen2")
        InParty("Sarevok")~ GOTO EU#LenaTalk.TOBLoveTalk.Bhaalspawn#3-2
    IF ~!InParty("Sarevok")~ GOTO EU#LenaTalk.TOBLoveTalk.Bhaalspawn#3-3
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Bhaalspawn#3-1
    SAY @7004
    IF ~~ THEN REPLY @7007 GOTO EU#LenaTalk.TOBLoveTalk.Bhaalspawn#3.1
    IF ~~ THEN REPLY @7030 GOTO EU#LenaTalk.TOBLoveTalk.Bhaalspawn#3.2
    IF ~~ THEN REPLY @7032 GOTO EU#LenaTalk.TOBLoveTalk.Bhaalspawn#3.3
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Bhaalspawn#3-2
    SAY @7005
    IF ~~ THEN REPLY @7007 GOTO EU#LenaTalk.TOBLoveTalk.Bhaalspawn#3.1
    IF ~~ THEN REPLY @7030 GOTO EU#LenaTalk.TOBLoveTalk.Bhaalspawn#3.2
    IF ~~ THEN REPLY @7032 GOTO EU#LenaTalk.TOBLoveTalk.Bhaalspawn#3.3
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Bhaalspawn#3-3
    SAY @7006
    IF ~~ THEN REPLY @7007 GOTO EU#LenaTalk.TOBLoveTalk.Bhaalspawn#3.1
    IF ~~ THEN REPLY @7030 GOTO EU#LenaTalk.TOBLoveTalk.Bhaalspawn#3.2
    IF ~~ THEN REPLY @7032 GOTO EU#LenaTalk.TOBLoveTalk.Bhaalspawn#3.3
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Bhaalspawn#3.2
    SAY @7031
    IF ~~ GOTO EU#LenaTalk.TOBLoveTalk.Bhaalspawn#2
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Bhaalspawn#3.3
    SAY @7033
    IF ~~ GOTO EU#LenaTalk.TOBLoveTalk.Bhaalspawn#2
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Bhaalspawn#3.1
    SAY @7008
    IF ~~ GOTO EU#LenaTalk.TOBLoveTalk.Bhaalspawn#2
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Bhaalspawn#2
    SAY @7009
    = @7010
    IF ~~ THEN REPLY @7011 GOTO EU#LenaTalk.TOBLoveTalk.Bhaalspawn#2.1
    IF ~~ THEN REPLY @7025 GOTO EU#LenaTalk.TOBLoveTalk.Bhaalspawn#2.2
    IF ~~ THEN REPLY @7027 GOTO EU#LenaTalk.TOBLoveTalk.Bhaalspawn#2.3
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Bhaalspawn#2.2
    SAY @7026
    IF ~~ GOTO EU#LenaTalk.TOBLoveTalk.Bhaalspawn#1
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Bhaalspawn#2.3
    SAY @7028
    = @7029
    IF ~~ DO ~SetGlobal("EU#LenaTOBLoveTalk.Bhaalspawn","LOCALS",3)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Bhaalspawn#2.1
    SAY @7012
    = @7013
    IF ~~ GOTO EU#LenaTalk.TOBLoveTalk.Bhaalspawn#1
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Bhaalspawn#1
    SAY @7014
    IF ~~ THEN REPLY @7015 GOTO EU#LenaTalk.TOBLoveTalk.Bhaalspawn#1.1
    IF ~~ THEN REPLY @7018 GOTO EU#LenaTalk.TOBLoveTalk.Bhaalspawn#1.2
    IF ~~ THEN REPLY @7021 GOTO EU#LenaTalk.TOBLoveTalk.Bhaalspawn#1.3
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Bhaalspawn#1.1
    SAY @7016
    = @7017
    IF ~~ DO ~SetGlobal("EU#LenaTOBLoveTalk.Bhaalspawn","LOCALS",3)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Bhaalspawn#1.2
    SAY @7019
    = @7020
    IF ~~ DO ~SetGlobal("EU#LenaTOBLoveTalk.Bhaalspawn","LOCALS",3)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Bhaalspawn#1.3
    SAY @7022
    = @7023
    = @7024
    IF ~~ DO ~SetGlobal("EU#LenaTOBLoveTalk.Bhaalspawn","LOCALS",3)~ EXIT
END

////////////////////////////////////
//:.  Lovetalk: Vacation (#26)  .://
////////////////////////////////////

IF ~Global("EU#LenaTOBLoveTalk.Vacation","LOCALS",2)~ BEGIN EU#LenaTalk.TOBLoveTalk.Vacation
    SAY @7100
    = @7101
    = @7102
    IF ~~ THEN REPLY @7103 GOTO EU#LenaTalk.TOBLoveTalk.Vacation.1
    IF ~~ THEN REPLY @7105 GOTO EU#LenaTalk.TOBLoveTalk.Vacation#1
    IF ~~ THEN REPLY @7117 GOTO EU#LenaTalk.TOBLoveTalk.Vacation.3
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Vacation.1
    SAY @7104
    IF ~~ GOTO EU#LenaTalk.TOBLoveTalk.Vacation#1
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Vacation.3
    SAY @7118
    IF ~~ GOTO EU#LenaTalk.TOBLoveTalk.Vacation#1
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Vacation#1
    SAY @7106
    = @7107
    IF ~~ THEN REPLY @7108 DO ~IncrementGlobal("EU#LenaTOBEpiloguePoints","GLOBAL",4)~ GOTO EU#LenaTalk.TOBLoveTalk.Vacation#1.1
    IF ~~ THEN REPLY @7111 DO ~IncrementGlobal("EU#LenaTOBEpiloguePoints","GLOBAL",4)~ GOTO EU#LenaTalk.TOBLoveTalk.Vacation#1.2
    IF ~~ THEN REPLY @7114 GOTO EU#LenaTalk.TOBLoveTalk.Vacation#1.3
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Vacation#1.1
    SAY @7109
    = @7110
    IF ~~ DO ~SetGlobal("EU#LenaTOBLoveTalk.Vacation","LOCALS",3)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Vacation#1.2
    SAY @7112
    = @7113
    IF ~~ DO ~SetGlobal("EU#LenaTOBLoveTalk.Vacation","LOCALS",3)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Vacation#1.3
    SAY @7115
    = @7116
    IF ~~ DO ~SetGlobal("EU#LenaTOBLoveTalk.Vacation","LOCALS",3)~ EXIT
END

////////////////////////////////
//:.  Lovetalk: Monk (#27)  .://
////////////////////////////////

IF ~Global("EU#LenaTOBLoveTalk.Monk","LOCALS",2)~ BEGIN EU#LenaTalk.TOBLoveTalk.Monk
    SAY @7200
    IF ~Class(Player1,MONK)~ GOTO EU#LenaTalk.TOBLoveTalk.Monk-1
    IF ~!Class(Player1,MONK)~ GOTO EU#LenaTalk.TOBLoveTalk.Monk-2
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Monk-1
    SAY @7201
    IF ~~ GOTO EU#LenaTalk.TOBLoveTalk.Monk-2
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Monk-2
    SAY @7202
    = @7203
    = @7204
    IF ~~ THEN REPLY @7205 GOTO EU#LenaTalk.TOBLoveTalk.Monk#2
    IF ~Class(Player1,MONK)~  THEN REPLY @7215 GOTO EU#LenaTalk.TOBLoveTalk.Monk.2
    IF ~Class(Player1,MONK)~  THEN REPLY @7217 GOTO EU#LenaTalk.TOBLoveTalk.Monk.3
    IF ~~ THEN REPLY @7219 GOTO EU#LenaTalk.TOBLoveTalk.Monk.4
    IF ~~ THEN REPLY @7221 GOTO EU#LenaTalk.TOBLoveTalk.Monk.5
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Monk.5
    SAY @7222
    IF ~~ GOTO EU#LenaTalk.TOBLoveTalk.Monk#1
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Monk#1
    SAY @7223
    IF ~~ GOTO EU#LenaTalk.TOBLoveTalk.Monk#2
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Monk.2
    SAY @7216
    IF ~~ GOTO EU#LenaTalk.TOBLoveTalk.Monk#1
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Monk.3
    SAY @7218
    IF ~~ GOTO EU#LenaTalk.TOBLoveTalk.Monk#1
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Monk.4
    SAY @7220
    IF ~~ GOTO EU#LenaTalk.TOBLoveTalk.Monk#1
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Monk#2
    SAY @7206
    = @7207
    IF ~~ THEN REPLY @7208 GOTO EU#LenaTalk.TOBLoveTalk.Monk#2.1
    IF ~~ THEN REPLY @7211 GOTO EU#LenaTalk.TOBLoveTalk.Monk#2.2
    IF ~~ THEN REPLY @7213 GOTO EU#LenaTalk.TOBLoveTalk.Monk#2.3
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Monk#2.1
    SAY @7209
    IF ~~ GOTO EU#LenaTalk.TOBLoveTalk.Monk#3
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Monk#2.2
    SAY @7212
    IF ~~ GOTO EU#LenaTalk.TOBLoveTalk.Monk#3
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Monk#2.3
    SAY @7214
    IF ~~ GOTO EU#LenaTalk.TOBLoveTalk.Monk#3
END
        
IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Monk#3
    SAY @7210
    IF ~~ DO ~SetGlobal("EU#LenaTOBLoveTalk.Monk","LOCALS",3)~ EXIT
END

///////////////////////////////////
//:.  Lovetalk: Jealous (#28)  .://
///////////////////////////////////

IF ~Global("EU#LenaTOBLoveTalk.Jealous","LOCALS",2)~ BEGIN EU#LenaTalk.TOBLoveTalk.Jealous
    SAY @7300
    IF ~~ THEN REPLY @7301 GOTO EU#LenaTalk.TOBLoveTalk.Jealous.1
    IF ~~ THEN REPLY @7312 GOTO EU#LenaTalk.TOBLoveTalk.Jealous.2
    IF ~~ THEN REPLY @7314 GOTO EU#LenaTalk.TOBLoveTalk.Jealous.3
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Jealous.1
    SAY @7302
    IF ~~ THEN REPLY @7303 GOTO EU#LenaTalk.TOBLoveTalk.Jealous#1
    IF ~~ THEN REPLY @7306 GOTO EU#LenaTalk.TOBLoveTalk.Jealous#2
    IF ~~ THEN REPLY @7307 GOTO EU#LenaTalk.TOBLoveTalk.Jealous#3
    IF ~~ THEN REPLY @7309 GOTO EU#LenaTalk.TOBLoveTalk.Jealous#2
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Jealous.2
    SAY @7313
    IF ~~ THEN REPLY @7303 GOTO EU#LenaTalk.TOBLoveTalk.Jealous#1
    IF ~~ THEN REPLY @7306 GOTO EU#LenaTalk.TOBLoveTalk.Jealous#2
    IF ~~ THEN REPLY @7307 GOTO EU#LenaTalk.TOBLoveTalk.Jealous#3
    IF ~~ THEN REPLY @7309 GOTO EU#LenaTalk.TOBLoveTalk.Jealous#2
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Jealous.3
    SAY @7315
    IF ~~ THEN REPLY @7303 GOTO EU#LenaTalk.TOBLoveTalk.Jealous#1
    IF ~~ THEN REPLY @7306 GOTO EU#LenaTalk.TOBLoveTalk.Jealous#2
    IF ~~ THEN REPLY @7307 GOTO EU#LenaTalk.TOBLoveTalk.Jealous#3
    IF ~~ THEN REPLY @7309 GOTO EU#LenaTalk.TOBLoveTalk.Jealous#2
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Jealous#1
    SAY @7304
    = @7305
    IF ~~ DO ~SetGlobal("EU#LenaTOBLoveTalk.Jealous","LOCALS",3)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Jealous#2
    SAY @7310
    = @7311
    IF ~~ DO ~SetGlobal("EU#LenaTOBLoveTalk.Jealous","LOCALS",3)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Jealous#3
    SAY @7308
    IF ~~ DO ~SetGlobal("EU#LenaTOBLoveTalk.Jealous","LOCALS",3)~ EXIT
END

/////////////////////////////////
//:.  Lovetalk: Seeds (#29)  .://
/////////////////////////////////

IF ~Global("EU#LenaTOBLoveTalk.Seeds","LOCALS",2)~ EU#LenaTalk.TOBLoveTalk.Seeds
    SAY @7400
    = @7401
    = @7402
    IF ~~ THEN REPLY @7403 GOTO EU#LenaTalk.TOBLoveTalk.Seeds.1
    IF ~~ THEN REPLY @7405 GOTO EU#LenaTalk.TOBLoveTalk.Seeds.2
    IF ~~ THEN REPLY @7407 GOTO EU#LenaTalk.TOBLoveTalk.Seeds.3
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Seeds.1
    SAY @7404
    IF ~~ GOTO EU#LenaTalk.TOBLoveTalk.Seeds#1
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Seeds.2
    SAY @7406
    IF ~~ GOTO EU#LenaTalk.TOBLoveTalk.Seeds#1
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Seeds.3
    SAY @7408
    IF ~~ GOTO EU#LenaTalk.TOBLoveTalk.Seeds#1
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Seeds#1
    SAY @7409
    IF ~~ THEN REPLY @7410 GOTO EU#LenaTalk.TOBLoveTalk.Seeds#1.1
    IF ~~ THEN REPLY @7413 GOTO EU#LenaTalk.TOBLoveTalk.Seeds#1.2
    IF ~~ THEN REPLY @7416 GOTO EU#LenaTalk.TOBLoveTalk.Seeds#1.3
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Seeds#1.1
    SAY @7411
    = @7412
    IF ~~ DO ~SetGlobal("EU#LenaTOBLoveTalk.Seeds","LOCALS",3)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Seeds#1.2
    SAY @7414
    = @7415
    IF ~~ DO ~SetGlobal("EU#LenaTOBLoveTalk.Seeds","LOCALS",3)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Seeds#1.3
    SAY @7417
    = @7418
    IF ~~ DO ~SetGlobal("EU#LenaTOBLoveTalk.Seeds","LOCALS",3)~ EXIT
END

//////////////////////////////////////
//:.  Lovetalk: Reputation (#30)  .://
//////////////////////////////////////

IF ~Global("EU#LenaTOBLoveTalk.Reputation","LOCALS",2)~ EU#LenaTalk.TOBLoveTalk.Reputation
    SAY @7500
    = @7501
    = @7502
    IF ~~ THEN REPLY @7503 GOTO EU#LenaTalk.TOBLoveTalk.Reputation.1
    IF ~~ THEN REPLY @7515 GOTO EU#LenaTalk.TOBLoveTalk.Reputation.2
    IF ~~ THEN REPLY @7517 GOTO EU#LenaTalk.TOBLoveTalk.Reputation.3
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Reputation.2
    SAY @7516
    IF ~~ GOTO EU#LenaTalk.TOBLoveTalk.Reputation#1
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Reputation.3
    SAY @7518
    IF ~~ GOTO EU#LenaTalk.TOBLoveTalk.Reputation#1
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Reputation.1
    SAY @7503
    IF ~~ GOTO EU#LenaTalk.TOBLoveTalk.Reputation#1
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Reputation#1
    SAY @7505
    = @7506
    IF ~~ THEN REPLY @7507 GOTO EU#LenaTalk.TOBLoveTalk.Reputation#1.1
    IF ~~ THEN REPLY @7510 GOTO EU#LenaTalk.TOBLoveTalk.Reputation#1.2
    IF ~~ THEN REPLY @7513 GOTO EU#LenaTalk.TOBLoveTalk.Reputation#1.3
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Reputation#1.1
    SAY @7508
    = @7509
    IF ~~ DO ~SetGlobal("EU#LenaTOBLoveTalk.Reputation","LOCALS",3)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Reputation#1.2
    SAY @7511
    IF ~~ GOTO EU#LenaTalk.TOBLoveTalk.Reputation#2
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Reputation#1.3
    SAY @7514
    IF ~~ GOTO EU#LenaTalk.TOBLoveTalk.Reputation#2
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Reputation#2
    SAY @7512
    IF ~~ DO ~SetGlobal("EU#LenaTOBLoveTalk.Reputation","LOCALS",3)~ EXIT
END

///////////////////////////////////
//:.  Lovetalk: Revenge (#31)  .://
///////////////////////////////////

IF ~Global("EU#LenaTOBLoveTalk.Revenge","LOCALS",2)~ EU#LenaTalk.TOBLoveTalk.Revenge
    SAY @7600
    IF ~~ THEN REPLY @7601 DO ~IncrementGlobal("EU#LenaTOBEpiloguePoints","GLOBAL",2)~ GOTO EU#LenaTalk.TOBLoveTalk.Revenge.1
    IF ~~ THEN REPLY @7612 GOTO EU#LenaTalk.TOBLoveTalk.Revenge.2
    IF ~~ THEN REPLY @7622 DO ~IncrementGlobal("EU#LenaTOBEpiloguePoints","GLOBAL",2)~ GOTO EU#LenaTalk.TOBLoveTalk.Revenge.3
    IF ~~ THEN REPLY @7634 DO ~IncrementGlobal("EU#LenaTOBEpiloguePoints","GLOBAL",2)~ GOTO EU#LenaTalk.TOBLoveTalk.Revenge.4
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Revenge.1
    SAY @7602
    IF ~~ THEN REPLY @7603 GOTO EU#LenaTalk.TOBLoveTalk.Revenge#1
    IF ~~ THEN REPLY @7606 GOTO EU#LenaTalk.TOBLoveTalk.Revenge#2
    IF ~~ THEN REPLY @7609 GOTO EU#LenaTalk.TOBLoveTalk.Revenge#3
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Revenge.4
    SAY @7635
    IF ~~ THEN REPLY @7603 GOTO EU#LenaTalk.TOBLoveTalk.Revenge#1
    IF ~~ THEN REPLY @7606 GOTO EU#LenaTalk.TOBLoveTalk.Revenge#2
    IF ~~ THEN REPLY @7609 GOTO EU#LenaTalk.TOBLoveTalk.Revenge#3
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Revenge#1
    SAY @7604
    = @7605
    IF ~~ DO ~SetGlobal("EU#LenaTOBLoveTalk.Revenge","LOCALS",3)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Revenge#2
    SAY @7607
    = @7608
    IF ~~ DO ~SetGlobal("EU#LenaTOBLoveTalk.Revenge","LOCALS",3)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Revenge#3
    SAY @7610
    = @7611
    IF ~~ DO ~SetGlobal("EU#LenaTOBLoveTalk.Revenge","LOCALS",3)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Revenge.2
    SAY @7613
    IF ~~ THEN REPLY @7614 GOTO EU#LenaTalk.TOBLoveTalk.Revenge.2.1
    IF ~~ THEN REPLY @7617 GOTO EU#LenaTalk.TOBLoveTalk.Revenge.2.2
    IF ~~ THEN REPLY @7620 GOTO EU#LenaTalk.TOBLoveTalk.Revenge.2.3
END
            
IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Revenge.2.1
    SAY @7615
    = @7616
    IF ~~ DO ~SetGlobal("EU#LenaTOBLoveTalk.Revenge","LOCALS",3)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Revenge.2.2
    SAY @7618
    IF ~~ GOTO EU#LenaTalk.TOBLoveTalk.Revenge#4
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Revenge.2.3
    SAY @7621
    IF ~~ GOTO EU#LenaTalk.TOBLoveTalk.Revenge#4
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Revenge#4
    SAY @7619
    IF ~~ DO ~SetGlobal("EU#LenaTOBLoveTalk.Revenge","LOCALS",3)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Revenge.3
    SAY @7623
    IF ~~ THEN REPLY @7624 GOTO EU#LenaTalk.TOBLoveTalk.Revenge.3.1
    IF ~~ THEN REPLY @7629 GOTO EU#LenaTalk.TOBLoveTalk.Revenge.3.2
    IF ~~ THEN REPLY @7631 GOTO EU#LenaTalk.TOBLoveTalk.Revenge.3.3
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Revenge.3.1
    SAY @7625
    = @7626
    IF ~~ GOTO EU#LenaTalk.TOBLoveTalk.Revenge#5
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Revenge.3.2
    SAY @7630
    IF ~~ GOTO EU#LenaTalk.TOBLoveTalk.Revenge#5
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Revenge.3.3
    SAY @7632
    = @7633
    IF ~~ GOTO EU#LenaTalk.TOBLoveTalk.Revenge#5
END

IF ~~ BEGIN EU#LenaTalk.TOBLoveTalk.Revenge#5
    SAY @7627
    = @7628
    IF ~~ DO ~SetGlobal("EU#LenaTOBLoveTalk.Revenge","LOCALS",3)~ EXIT
END
