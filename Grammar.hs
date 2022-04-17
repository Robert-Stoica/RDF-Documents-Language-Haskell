{-# OPTIONS_GHC -w #-}
module Grammar where
import Tokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.8

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,151) ([64512,35,64,16320,2,4,0,0,0,0,2,0,0,63,0,0,0,9212,16384,0,0,4,64512,35,64,16320,2,4,9212,16384,32768,0,0,64512,35,64,16320,2,4,9212,16384,0,0,0,0,0,128,0,4,0,1024,0,0,0,16384,0,0,0,0,0,0,0,0,49152,575,5120,0,1,0,64,0,0,4,0,16384,0,0,1024,0,0,64,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9212,16384,0,0,4096,0,32768,0,16320,114,4,8,0,49152,575,5120,64512,35,64,0,0,0,32768,0,0,0,0,0,0,0,0,0,0,6144,0,6,8,0,32768,0,0,2048,0,0,0,0,49152,29247,1024,0,0,0,32768,1,64,9212,16384,49152,575,1024,64512,35,64,16320,2,20,0,0,0,0,0,0,0,0,0,0,0,9212,16384,0,0,0,0,0,512,0,0,0,0,0,0,0,0,64512,35,320,0,0,32,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","stmts","stmt","exp","listVar","listElement","separator","listElementContent","int","var","IMPORT","WHERE","INTO","IN","AS","FROM","GET","AND","OR","IF","THEN","ELSE","subj","pred","obj","true","false","';'","'{'","'}'","'<'","'>'","'<='","'>='","'+'","'-'","'('","')'","'['","']'","','","%eof"]
        bit_start = st * 44
        bit_end = (st + 1) * 44
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..43]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (11) = happyShift action_4
action_0 (12) = happyShift action_5
action_0 (13) = happyShift action_6
action_0 (14) = happyShift action_7
action_0 (15) = happyShift action_8
action_0 (16) = happyShift action_9
action_0 (17) = happyShift action_10
action_0 (18) = happyShift action_11
action_0 (22) = happyShift action_12
action_0 (39) = happyShift action_13
action_0 (4) = happyGoto action_14
action_0 (5) = happyGoto action_2
action_0 (6) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (11) = happyShift action_4
action_1 (12) = happyShift action_5
action_1 (13) = happyShift action_6
action_1 (14) = happyShift action_7
action_1 (15) = happyShift action_8
action_1 (16) = happyShift action_9
action_1 (17) = happyShift action_10
action_1 (18) = happyShift action_11
action_1 (22) = happyShift action_12
action_1 (39) = happyShift action_13
action_1 (5) = happyGoto action_2
action_1 (6) = happyGoto action_3
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (30) = happyShift action_31
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (33) = happyShift action_25
action_4 (34) = happyShift action_26
action_4 (35) = happyShift action_27
action_4 (36) = happyShift action_28
action_4 (37) = happyShift action_29
action_4 (38) = happyShift action_30
action_4 _ = happyReduce_5

action_5 _ = happyReduce_4

action_6 (11) = happyShift action_4
action_6 (12) = happyShift action_5
action_6 (13) = happyShift action_6
action_6 (14) = happyShift action_7
action_6 (15) = happyShift action_8
action_6 (16) = happyShift action_9
action_6 (17) = happyShift action_10
action_6 (18) = happyShift action_11
action_6 (22) = happyShift action_12
action_6 (39) = happyShift action_13
action_6 (6) = happyGoto action_24
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (31) = happyShift action_23
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (11) = happyShift action_4
action_8 (12) = happyShift action_5
action_8 (13) = happyShift action_6
action_8 (14) = happyShift action_7
action_8 (15) = happyShift action_8
action_8 (16) = happyShift action_9
action_8 (17) = happyShift action_10
action_8 (18) = happyShift action_11
action_8 (22) = happyShift action_12
action_8 (39) = happyShift action_13
action_8 (6) = happyGoto action_22
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (11) = happyShift action_4
action_9 (12) = happyShift action_5
action_9 (13) = happyShift action_6
action_9 (14) = happyShift action_7
action_9 (15) = happyShift action_8
action_9 (16) = happyShift action_9
action_9 (17) = happyShift action_10
action_9 (18) = happyShift action_11
action_9 (22) = happyShift action_12
action_9 (39) = happyShift action_13
action_9 (6) = happyGoto action_21
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (11) = happyShift action_4
action_10 (12) = happyShift action_5
action_10 (13) = happyShift action_6
action_10 (14) = happyShift action_7
action_10 (15) = happyShift action_8
action_10 (16) = happyShift action_9
action_10 (17) = happyShift action_10
action_10 (18) = happyShift action_11
action_10 (22) = happyShift action_12
action_10 (39) = happyShift action_13
action_10 (6) = happyGoto action_20
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (12) = happyShift action_19
action_11 (7) = happyGoto action_18
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (11) = happyShift action_4
action_12 (12) = happyShift action_5
action_12 (13) = happyShift action_6
action_12 (14) = happyShift action_7
action_12 (15) = happyShift action_8
action_12 (16) = happyShift action_9
action_12 (17) = happyShift action_10
action_12 (18) = happyShift action_11
action_12 (22) = happyShift action_12
action_12 (39) = happyShift action_13
action_12 (6) = happyGoto action_17
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (11) = happyShift action_4
action_13 (12) = happyShift action_5
action_13 (13) = happyShift action_6
action_13 (14) = happyShift action_7
action_13 (15) = happyShift action_8
action_13 (16) = happyShift action_9
action_13 (17) = happyShift action_10
action_13 (18) = happyShift action_11
action_13 (22) = happyShift action_12
action_13 (39) = happyShift action_13
action_13 (6) = happyGoto action_16
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (11) = happyShift action_4
action_14 (12) = happyShift action_5
action_14 (13) = happyShift action_6
action_14 (14) = happyShift action_7
action_14 (15) = happyShift action_8
action_14 (16) = happyShift action_9
action_14 (17) = happyShift action_10
action_14 (18) = happyShift action_11
action_14 (22) = happyShift action_12
action_14 (39) = happyShift action_13
action_14 (44) = happyAccept
action_14 (5) = happyGoto action_15
action_14 (6) = happyGoto action_3
action_14 _ = happyFail (happyExpListPerState 14)

action_15 _ = happyReduce_2

action_16 (40) = happyShift action_45
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (23) = happyShift action_44
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (19) = happyShift action_43
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (43) = happyShift action_42
action_19 _ = happyReduce_20

action_20 _ = happyReduce_8

action_21 _ = happyReduce_7

action_22 _ = happyReduce_11

action_23 (11) = happyShift action_4
action_23 (12) = happyShift action_5
action_23 (13) = happyShift action_6
action_23 (14) = happyShift action_7
action_23 (15) = happyShift action_8
action_23 (16) = happyShift action_9
action_23 (17) = happyShift action_10
action_23 (18) = happyShift action_11
action_23 (22) = happyShift action_12
action_23 (39) = happyShift action_13
action_23 (41) = happyShift action_41
action_23 (6) = happyGoto action_39
action_23 (8) = happyGoto action_40
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (17) = happyShift action_38
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (11) = happyShift action_37
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (11) = happyShift action_36
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (11) = happyShift action_35
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (11) = happyShift action_34
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (11) = happyShift action_33
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (11) = happyShift action_32
action_30 _ = happyFail (happyExpListPerState 30)

action_31 _ = happyReduce_3

action_32 _ = happyReduce_16

action_33 _ = happyReduce_15

action_34 _ = happyReduce_18

action_35 _ = happyReduce_17

action_36 _ = happyReduce_14

action_37 _ = happyReduce_13

action_38 (11) = happyShift action_4
action_38 (12) = happyShift action_5
action_38 (13) = happyShift action_6
action_38 (14) = happyShift action_7
action_38 (15) = happyShift action_8
action_38 (16) = happyShift action_9
action_38 (17) = happyShift action_10
action_38 (18) = happyShift action_11
action_38 (22) = happyShift action_12
action_38 (39) = happyShift action_13
action_38 (6) = happyGoto action_56
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (41) = happyShift action_55
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (32) = happyShift action_54
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (11) = happyShift action_4
action_41 (12) = happyShift action_5
action_41 (13) = happyShift action_6
action_41 (14) = happyShift action_7
action_41 (15) = happyShift action_8
action_41 (16) = happyShift action_9
action_41 (17) = happyShift action_10
action_41 (18) = happyShift action_11
action_41 (22) = happyShift action_12
action_41 (25) = happyShift action_51
action_41 (26) = happyShift action_52
action_41 (27) = happyShift action_53
action_41 (39) = happyShift action_13
action_41 (6) = happyGoto action_49
action_41 (10) = happyGoto action_50
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (12) = happyShift action_19
action_42 (7) = happyGoto action_48
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (11) = happyShift action_4
action_43 (12) = happyShift action_5
action_43 (13) = happyShift action_6
action_43 (14) = happyShift action_7
action_43 (15) = happyShift action_8
action_43 (16) = happyShift action_9
action_43 (17) = happyShift action_10
action_43 (18) = happyShift action_11
action_43 (22) = happyShift action_12
action_43 (39) = happyShift action_13
action_43 (41) = happyShift action_41
action_43 (6) = happyGoto action_39
action_43 (8) = happyGoto action_47
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (11) = happyShift action_4
action_44 (12) = happyShift action_5
action_44 (13) = happyShift action_6
action_44 (14) = happyShift action_7
action_44 (15) = happyShift action_8
action_44 (16) = happyShift action_9
action_44 (17) = happyShift action_10
action_44 (18) = happyShift action_11
action_44 (22) = happyShift action_12
action_44 (39) = happyShift action_13
action_44 (6) = happyGoto action_46
action_44 _ = happyFail (happyExpListPerState 44)

action_45 _ = happyReduce_19

action_46 (24) = happyShift action_66
action_46 _ = happyFail (happyExpListPerState 46)

action_47 _ = happyReduce_10

action_48 _ = happyReduce_21

action_49 _ = happyReduce_34

action_50 (20) = happyShift action_62
action_50 (21) = happyShift action_63
action_50 (42) = happyShift action_64
action_50 (43) = happyShift action_65
action_50 (9) = happyGoto action_61
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (16) = happyShift action_60
action_51 _ = happyReduce_28

action_52 (16) = happyShift action_59
action_52 _ = happyReduce_29

action_53 (16) = happyShift action_58
action_53 _ = happyReduce_30

action_54 _ = happyReduce_6

action_55 (11) = happyShift action_4
action_55 (12) = happyShift action_5
action_55 (13) = happyShift action_6
action_55 (14) = happyShift action_7
action_55 (15) = happyShift action_8
action_55 (16) = happyShift action_9
action_55 (17) = happyShift action_10
action_55 (18) = happyShift action_11
action_55 (22) = happyShift action_12
action_55 (25) = happyShift action_51
action_55 (26) = happyShift action_52
action_55 (27) = happyShift action_53
action_55 (39) = happyShift action_13
action_55 (6) = happyGoto action_49
action_55 (10) = happyGoto action_57
action_55 _ = happyFail (happyExpListPerState 55)

action_56 _ = happyReduce_9

action_57 (20) = happyShift action_62
action_57 (21) = happyShift action_63
action_57 (43) = happyShift action_65
action_57 (9) = happyGoto action_72
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (11) = happyShift action_4
action_58 (12) = happyShift action_5
action_58 (13) = happyShift action_6
action_58 (14) = happyShift action_7
action_58 (15) = happyShift action_8
action_58 (16) = happyShift action_9
action_58 (17) = happyShift action_10
action_58 (18) = happyShift action_11
action_58 (22) = happyShift action_12
action_58 (39) = happyShift action_13
action_58 (6) = happyGoto action_71
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (11) = happyShift action_4
action_59 (12) = happyShift action_5
action_59 (13) = happyShift action_6
action_59 (14) = happyShift action_7
action_59 (15) = happyShift action_8
action_59 (16) = happyShift action_9
action_59 (17) = happyShift action_10
action_59 (18) = happyShift action_11
action_59 (22) = happyShift action_12
action_59 (39) = happyShift action_13
action_59 (6) = happyGoto action_70
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (11) = happyShift action_4
action_60 (12) = happyShift action_5
action_60 (13) = happyShift action_6
action_60 (14) = happyShift action_7
action_60 (15) = happyShift action_8
action_60 (16) = happyShift action_9
action_60 (17) = happyShift action_10
action_60 (18) = happyShift action_11
action_60 (22) = happyShift action_12
action_60 (39) = happyShift action_13
action_60 (6) = happyGoto action_69
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (11) = happyShift action_4
action_61 (12) = happyShift action_5
action_61 (13) = happyShift action_6
action_61 (14) = happyShift action_7
action_61 (15) = happyShift action_8
action_61 (16) = happyShift action_9
action_61 (17) = happyShift action_10
action_61 (18) = happyShift action_11
action_61 (22) = happyShift action_12
action_61 (39) = happyShift action_13
action_61 (41) = happyShift action_41
action_61 (6) = happyGoto action_39
action_61 (8) = happyGoto action_68
action_61 _ = happyFail (happyExpListPerState 61)

action_62 _ = happyReduce_25

action_63 _ = happyReduce_26

action_64 _ = happyReduce_22

action_65 _ = happyReduce_27

action_66 (11) = happyShift action_4
action_66 (12) = happyShift action_5
action_66 (13) = happyShift action_6
action_66 (14) = happyShift action_7
action_66 (15) = happyShift action_8
action_66 (16) = happyShift action_9
action_66 (17) = happyShift action_10
action_66 (18) = happyShift action_11
action_66 (22) = happyShift action_12
action_66 (39) = happyShift action_13
action_66 (6) = happyGoto action_67
action_66 _ = happyFail (happyExpListPerState 66)

action_67 _ = happyReduce_12

action_68 (42) = happyShift action_74
action_68 _ = happyFail (happyExpListPerState 68)

action_69 _ = happyReduce_31

action_70 _ = happyReduce_32

action_71 _ = happyReduce_33

action_72 (11) = happyShift action_4
action_72 (12) = happyShift action_5
action_72 (13) = happyShift action_6
action_72 (14) = happyShift action_7
action_72 (15) = happyShift action_8
action_72 (16) = happyShift action_9
action_72 (17) = happyShift action_10
action_72 (18) = happyShift action_11
action_72 (22) = happyShift action_12
action_72 (39) = happyShift action_13
action_72 (41) = happyShift action_41
action_72 (6) = happyGoto action_39
action_72 (8) = happyGoto action_73
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (42) = happyShift action_75
action_73 _ = happyFail (happyExpListPerState 73)

action_74 _ = happyReduce_23

action_75 _ = happyReduce_24

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 ([happy_var_1]
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_2  4 happyReduction_2
happyReduction_2 (HappyAbsSyn5  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_2 : happy_var_1
	)
happyReduction_2 _ _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_2  5 happyReduction_3
happyReduction_3 _
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_3 _ _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_1  6 happyReduction_4
happyReduction_4 (HappyTerminal (VarToken _ happy_var_1))
	 =  HappyAbsSyn6
		 (Var happy_var_1
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_1  6 happyReduction_5
happyReduction_5 (HappyTerminal (IntToken _ happy_var_1))
	 =  HappyAbsSyn6
		 (AssignInt happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happyReduce 4 6 happyReduction_6
happyReduction_6 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Where happy_var_3
	) `HappyStk` happyRest

happyReduce_7 = happySpecReduce_2  6 happyReduction_7
happyReduction_7 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (In happy_var_2
	)
happyReduction_7 _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_2  6 happyReduction_8
happyReduction_8 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (As happy_var_2
	)
happyReduction_8 _ _  = notHappyAtAll 

happyReduce_9 = happyReduce 4 6 happyReduction_9
happyReduction_9 ((HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Import happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_10 = happyReduce 4 6 happyReduction_10
happyReduction_10 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (From happy_var_2
	) `HappyStk` happyRest

happyReduce_11 = happySpecReduce_2  6 happyReduction_11
happyReduction_11 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Into happy_var_2
	)
happyReduction_11 _ _  = notHappyAtAll 

happyReduce_12 = happyReduce 6 6 happyReduction_12
happyReduction_12 ((HappyAbsSyn6  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (IfThenElse happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_13 = happySpecReduce_3  6 happyReduction_13
happyReduction_13 (HappyTerminal (IntToken _ happy_var_3))
	_
	(HappyTerminal (IntToken _ happy_var_1))
	 =  HappyAbsSyn6
		 (LessThan happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  6 happyReduction_14
happyReduction_14 (HappyTerminal (IntToken _ happy_var_3))
	_
	(HappyTerminal (IntToken _ happy_var_1))
	 =  HappyAbsSyn6
		 (MoreThan happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  6 happyReduction_15
happyReduction_15 (HappyTerminal (IntToken _ happy_var_3))
	_
	(HappyTerminal (IntToken _ happy_var_1))
	 =  HappyAbsSyn6
		 (Add happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  6 happyReduction_16
happyReduction_16 (HappyTerminal (IntToken _ happy_var_3))
	_
	(HappyTerminal (IntToken _ happy_var_1))
	 =  HappyAbsSyn6
		 (Minus happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  6 happyReduction_17
happyReduction_17 (HappyTerminal (IntToken _ happy_var_3))
	_
	(HappyTerminal (IntToken _ happy_var_1))
	 =  HappyAbsSyn6
		 (LessThanEqual happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  6 happyReduction_18
happyReduction_18 (HappyTerminal (IntToken _ happy_var_3))
	_
	(HappyTerminal (IntToken _ happy_var_1))
	 =  HappyAbsSyn6
		 (MoreThanEqual happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  6 happyReduction_19
happyReduction_19 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (happy_var_2
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  7 happyReduction_20
happyReduction_20 (HappyTerminal (VarToken _ happy_var_1))
	 =  HappyAbsSyn7
		 ([happy_var_1]
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  7 happyReduction_21
happyReduction_21 (HappyAbsSyn7  happy_var_3)
	_
	(HappyTerminal (VarToken _ happy_var_1))
	 =  HappyAbsSyn7
		 (happy_var_1 : happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  8 happyReduction_22
happyReduction_22 _
	(HappyAbsSyn10  happy_var_2)
	_
	 =  HappyAbsSyn8
		 ([happy_var_2]
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happyReduce 5 8 happyReduction_23
happyReduction_23 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (happy_var_2 : happy_var_4
	) `HappyStk` happyRest

happyReduce_24 = happyReduce 6 8 happyReduction_24
happyReduction_24 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (happy_var_3 : happy_var_5
	) `HappyStk` happyRest

happyReduce_25 = happySpecReduce_1  9 happyReduction_25
happyReduction_25 _
	 =  HappyAbsSyn9
		 (And
	)

happyReduce_26 = happySpecReduce_1  9 happyReduction_26
happyReduction_26 _
	 =  HappyAbsSyn9
		 (Or
	)

happyReduce_27 = happySpecReduce_1  9 happyReduction_27
happyReduction_27 _
	 =  HappyAbsSyn9
		 (Comma
	)

happyReduce_28 = happySpecReduce_1  10 happyReduction_28
happyReduction_28 _
	 =  HappyAbsSyn10
		 (Subject
	)

happyReduce_29 = happySpecReduce_1  10 happyReduction_29
happyReduction_29 _
	 =  HappyAbsSyn10
		 (Predicate
	)

happyReduce_30 = happySpecReduce_1  10 happyReduction_30
happyReduction_30 _
	 =  HappyAbsSyn10
		 (Object
	)

happyReduce_31 = happySpecReduce_3  10 happyReduction_31
happyReduction_31 (HappyAbsSyn6  happy_var_3)
	_
	_
	 =  HappyAbsSyn10
		 (SubjectIn happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  10 happyReduction_32
happyReduction_32 (HappyAbsSyn6  happy_var_3)
	_
	_
	 =  HappyAbsSyn10
		 (PredicateIn happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  10 happyReduction_33
happyReduction_33 (HappyAbsSyn6  happy_var_3)
	_
	_
	 =  HappyAbsSyn10
		 (ObjectIn happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_1  10 happyReduction_34
happyReduction_34 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1
	)
happyReduction_34 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 44 44 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	IntToken _ happy_dollar_dollar -> cont 11;
	VarToken _ happy_dollar_dollar -> cont 12;
	ImportToken _ -> cont 13;
	WhereToken _ -> cont 14;
	IntoToken _ -> cont 15;
	InToken _ -> cont 16;
	AsToken _ -> cont 17;
	FromToken _ -> cont 18;
	GetToken _ -> cont 19;
	AndToken _ -> cont 20;
	OrToken _ -> cont 21;
	IfToken _ -> cont 22;
	ThenToken _ -> cont 23;
	ElseToken _ -> cont 24;
	SubjectToken _ -> cont 25;
	PredicateToken _ -> cont 26;
	ObjectToken _ -> cont 27;
	TrueToken _ -> cont 28;
	FalseToken _ -> cont 29;
	SemiColonToken _ -> cont 30;
	CurLToken _ -> cont 31;
	CurRToken _ -> cont 32;
	AngBracketLToken _ -> cont 33;
	AngBracketRToken _ -> cont 34;
	LessThanEqualToken _ -> cont 35;
	MoreThanEqualToken _ -> cont 36;
	PlusToken _ -> cont 37;
	MinusToken _ -> cont 38;
	ParenRToken _ -> cont 39;
	ParenLToken _ -> cont 40;
	BracketLToken _ -> cont 41;
	BracketRToken _ -> cont 42;
	CommaToken _ -> cont 43;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 44 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parseCalc tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError [] = error "Unknown Parse Error - empty token list." 
parseError (t:ts) = error ("Parse error at line:column " ++ (tokenPosn t))

data Expr = Var String
          | AssignInt Int
          | Import Expr Expr
          | From [String]
          | Where [Expr]
          | Into Expr
          | In Expr
          | As Expr
          | IfThenElse Expr Expr Expr
          | MoreThan Int Int 
          | LessThan Int Int  
          | Add Int Int 
          | Minus Int Int 
          | MoreThanEqual Int Int 
          | LessThanEqual Int Int 
          | Subject 
          | Predicate 
          | Object
          | PredicateIn Expr
          | SubjectIn Expr
          | ObjectIn Expr
  deriving (Eq,Show)

data Separator = And
               | Or
               | Comma
  deriving (Eq, Show)
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 8 "<command-line>" #-}
# 1 "/usr/include/stdc-predef.h" 1 3 4

# 17 "/usr/include/stdc-predef.h" 3 4














































{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "/usr/lib/ghc/include/ghcversion.h" #-}

















{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "/tmp/ghc8814_0/ghc_2.h" #-}




























































































































































{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 









{-# LINE 43 "templates/GenericTemplate.hs" #-}

data Happy_IntList = HappyCons Int Happy_IntList







{-# LINE 65 "templates/GenericTemplate.hs" #-}

{-# LINE 75 "templates/GenericTemplate.hs" #-}

{-# LINE 84 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 137 "templates/GenericTemplate.hs" #-}

{-# LINE 147 "templates/GenericTemplate.hs" #-}
indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 267 "templates/GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 333 "templates/GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
