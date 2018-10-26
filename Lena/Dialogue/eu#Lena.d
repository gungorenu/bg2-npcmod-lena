BEGIN ~EU#LENA~

/////////////////////////////////////
//:.  Party Initial Join Dialog  .://
/////////////////////////////////////

IF ~!Global("EU#LenaSpokenOnce","GLOBAL",1)~ BEGIN EU#LenaTalk.Join
    SAY @101
    IF ~~ THEN REPLY @102 DO ~SetGlobal("EU#LenaSpokenOnce","GLOBAL",1)~ GOTO EU#LenaTalk.Join.1
    IF ~~ THEN REPLY @137 DO ~SetGlobal("EU#LenaSpokenOnce","GLOBAL",1)~ GOTO EU#LenaTalk.Join#2
    IF ~~ THEN REPLY @138 DO ~SetGlobal("EU#LenaSpokenOnce","GLOBAL",1)~ GOTO EU#LenaTalk.Join#1
END

IF ~~ BEGIN EU#LenaTalk.Join.1
    SAY @103
    IF ~~ GOTO EU#LenaTalk.Join#2
END

IF ~~ BEGIN EU#LenaTalk.Join.1.1
    SAY @107
    IF ~~ THEN REPLY @108 GOTO EU#LenaTalk.Join#5
    IF ~~ THEN REPLY @109 GOTO EU#LenaTalk.Join.1.1.2
END

IF ~~ BEGIN EU#LenaTalk.Join.1.1.2
    SAY @110
    IF ~~ THEN REPLY @113 GOTO EU#LenaTalk.Join#3
    IF ~~ THEN REPLY @133 GOTO EU#LenaTalk.Join#4
END

IF ~~ BEGIN EU#LenaTalk.Join.1.2.1.1
    SAY @117
    IF ~~ THEN REPLY @121 GOTO EU#LenaTalk.Join#7
    IF ~!Global("EU#LenaJoinBetray","LOCALS",1)~ THEN REPLY @126 GOTO EU#LenaTalk.Join#8
    IF ~~ THEN REPLY @128 GOTO EU#LenaTalk.Join#9
    IF ~!Global("EU#LenaJoinFreeloader","LOCALS",1)~ THEN REPLY @130 GOTO EU#LenaTalk.Join#10
END

IF ~~ BEGIN EU#LenaTalk.Join.1.2.1.2
    SAY @119
    = @120
    IF ~~ THEN REPLY @121 GOTO EU#LenaTalk.Join#7
    IF ~!Global("EU#LenaJoinBetray","LOCALS",1)~ THEN REPLY @126 GOTO EU#LenaTalk.Join#8
    IF ~~ THEN REPLY @128 GOTO EU#LenaTalk.Join#9
    IF ~!Global("EU#LenaJoinFreeloader","LOCALS",1)~ THEN REPLY @130 GOTO EU#LenaTalk.Join#10
END

IF ~~ BEGIN EU#LenaTalk.Join.1.3
    SAY @136
    IF ~~ THEN REPLY @113 GOTO EU#LenaTalk.Join#3
    IF ~~ THEN REPLY @133 GOTO EU#LenaTalk.Join#4
END

IF ~~ BEGIN EU#LenaTalk.Join#1
    SAY @139
    = @140
    IF ~~ DO ~
        ActionOverride("EU#LENA", DestroySelf())
        SetGlobal("#EULenaJoined","GLOBAL",2)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.Join#2
    SAY @104
    = @105
    IF ~~ THEN REPLY @106 GOTO EU#LenaTalk.Join.1.1
    IF ~~ THEN REPLY @111 GOTO EU#LenaTalk.Join#5
    IF ~~ THEN REPLY @135 GOTO EU#LenaTalk.Join.1.3
END

IF ~~ BEGIN EU#LenaTalk.Join#3
    SAY @114
    IF ~~ GOTO EU#LenaTalk.Join#6
END

IF ~~ BEGIN EU#LenaTalk.Join#4
    SAY @134
    IF ~~ GOTO EU#LenaTalk.Join#6
END

IF ~~ BEGIN EU#LenaTalk.Join#5
    SAY @112
    IF ~~ THEN REPLY @113 GOTO EU#LenaTalk.Join#3
    IF ~~ THEN REPLY @133 GOTO EU#LenaTalk.Join#4
END

IF ~~ BEGIN EU#LenaTalk.Join#6
    SAY @115
    IF ~~ THEN REPLY @116 GOTO EU#LenaTalk.Join.1.2.1.1
    IF ~~ THEN REPLY @118 GOTO EU#LenaTalk.Join.1.2.1.2
    IF ~~ THEN REPLY @132 GOTO EU#LenaTalk.Join#1
END

IF ~~ BEGIN EU#LenaTalk.Join#7
    SAY @122
    = @123
    = @124
    = @125
    IF ~~ DO ~
        SetGlobal("EU#LenaJoined","GLOBAL",1)
        JoinParty()~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.Join#8
    SAY @127 
    IF ~~ THEN REPLY @121 DO ~SetGlobal("EU#LenaJoinBetray","LOCALS",1)~ GOTO EU#LenaTalk.Join#7
    IF ~~ THEN REPLY @128 DO ~SetGlobal("EU#LenaJoinBetray","LOCALS",1)~ GOTO EU#LenaTalk.Join#9
    IF ~~ THEN REPLY @130 DO ~SetGlobal("EU#LenaJoinBetray","LOCALS",1)~ GOTO EU#LenaTalk.Join#10
END

IF ~~ BEGIN EU#LenaTalk.Join#9
    SAY @129 
    IF ~~ DO ~SetGlobal("EU#LenaJoined","GLOBAL",0)
        SetGlobal("EU#LenaKickedOut","LOCALS",1)~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.Join#10
    SAY @131 
    IF ~~ THEN REPLY @121 DO ~SetGlobal("EU#LenaJoinFreeloader","LOCALS",1)~ GOTO EU#LenaTalk.Join#7
    IF ~~ THEN REPLY @126 DO ~SetGlobal("EU#LenaJoinFreeloader","LOCALS",1)~ GOTO EU#LenaTalk.Join#8
    IF ~~ THEN REPLY @128 DO ~SetGlobal("EU#LenaJoinFreeloader","LOCALS",1)~ GOTO EU#LenaTalk.Join#9
END

////////////////////////////////
//:.  Party Re-Join Dialog  .://
////////////////////////////////

IF ~Global("EU#LenaKickedOut","LOCALS",1)~ BEGIN EU#LenaTalk.Rejoin
    SAY @301
    IF ~~ THEN REPLY @302 GOTO EU#LenaTalk.Rejoin.1
    IF ~~ THEN REPLY @304 GOTO EU#LenaTalk.Rejoin.2
END

IF ~~ BEGIN EU#LenaTalk.Rejoin.1
    SAY @303
    IF ~~ DO ~
        SetGlobal("EU#LenaJoined","GLOBAL",1)
        SetGlobal("EU#LenaKickedOut","LOCALS",0)
        JoinParty()~ EXIT
END

IF ~~ BEGIN EU#LenaTalk.Rejoin.2
    SAY @305
    IF ~~ EXIT
END
