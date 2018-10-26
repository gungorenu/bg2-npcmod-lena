BEGIN ~EU#LEVLN~

//: actual dialogue for Valen, kinda long telling what happened actually "how"
CHAIN IF ~NumTimesTalkedTo(0)~ THEN ~EU#LEVLN~ EU#ValenTalk.Surprise
    @6023
    == ~EU#LENAJ~   @6008
    == ~EU#LEVLN~   @6009
    == ~EU#LENAJ~   @6010
    == ~EU#LEVLN~   @6011
    == ~EU#LENAJ~   @6012
    == ~EU#LEVLN~   @6013
    == ~EU#LENAJ~   @6014
    == ~EU#LEVLN~   @6015
    == ~EU#LENAJ~   @6016
    == ~EU#LEVLN~   @6017
    == ~EU#LENAJ~   @6018
END
IF ~~ THEN REPLY @6019 EXTERN ~HGWRA01~ 25
IF ~~ THEN REPLY @6020 EXTERN ~HGWRA01~ 25
IF ~~ THEN REPLY @6021 EXTERN ~HGWRA01~ 25
IF ~CheckStatGT(Player1,16,WIS)~ THEN REPLY @6022 EXTERN ~HGWRA01~ 25 //: am I really missing sth? or does this reply really have no different effect?
