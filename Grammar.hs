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
happyExpList = Happy_Data_Array.listArray (0,138) ([64512,35,64,16320,2,4,0,0,0,0,2,0,0,63,0,0,0,9212,16384,49152,575,1024,0,16384,0,16320,2,4,9212,16384,0,0,4096,64512,35,64,16320,2,4,9212,16384,0,0,0,0,0,128,0,4,0,9212,16415,0,0,0,0,0,0,0,0,16,0,0,0,16,0,1024,0,0,64,0,0,4,0,16384,0,0,1024,0,0,64,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16320,2,4,0,128,49152,62015,1025,0,0,0,0,0,32,0,0,4,8,0,32768,0,0,2048,0,0,0,0,0,0,0,64512,35,64,0,0,0,32768,0,49152,575,1024,64512,35,64,16320,2,4,9212,16415,0,64,0,0,0,512,16320,2,4,0,0,0,0,0,0,24,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,9212,16384,0,0,0,64512,7971,64,0,0,16,0,0,0,0,0,0,0,0,0,0,32,9212,16384,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","stmts","stmt","exp","listElement","listElementContent","compareLists","comparison","int","var","IMPORT","INTO","WHERE","IN","AS","FROM","GET","AND","OR","IF","THEN","ELSE","subj","pred","obj","true","false","';'","'{'","'}'","'<'","'>'","'<='","'>='","'+'","'-'","'('","')'","'['","']'","','","%eof"]
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

action_3 (30) = happyShift action_30
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (33) = happyShift action_24
action_4 (34) = happyShift action_25
action_4 (35) = happyShift action_26
action_4 (36) = happyShift action_27
action_4 (37) = happyShift action_28
action_4 (38) = happyShift action_29
action_4 _ = happyReduce_6

action_5 _ = happyReduce_5

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
action_6 (6) = happyGoto action_23
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (11) = happyShift action_4
action_7 (12) = happyShift action_5
action_7 (13) = happyShift action_6
action_7 (14) = happyShift action_7
action_7 (15) = happyShift action_8
action_7 (16) = happyShift action_9
action_7 (17) = happyShift action_10
action_7 (18) = happyShift action_11
action_7 (22) = happyShift action_12
action_7 (39) = happyShift action_13
action_7 (6) = happyGoto action_22
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (31) = happyShift action_21
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
action_9 (6) = happyGoto action_20
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
action_10 (6) = happyGoto action_19
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (41) = happyShift action_18
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

action_16 (40) = happyShift action_49
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (23) = happyShift action_48
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (11) = happyShift action_4
action_18 (12) = happyShift action_5
action_18 (13) = happyShift action_6
action_18 (14) = happyShift action_7
action_18 (15) = happyShift action_8
action_18 (16) = happyShift action_9
action_18 (17) = happyShift action_10
action_18 (18) = happyShift action_11
action_18 (22) = happyShift action_12
action_18 (25) = happyShift action_43
action_18 (26) = happyShift action_44
action_18 (27) = happyShift action_45
action_18 (28) = happyShift action_46
action_18 (29) = happyShift action_47
action_18 (39) = happyShift action_13
action_18 (6) = happyGoto action_40
action_18 (7) = happyGoto action_41
action_18 (8) = happyGoto action_42
action_18 _ = happyFail (happyExpListPerState 18)

action_19 _ = happyReduce_10

action_20 _ = happyReduce_9

action_21 (41) = happyShift action_39
action_21 (9) = happyGoto action_38
action_21 _ = happyFail (happyExpListPerState 21)

action_22 _ = happyReduce_8

action_23 (17) = happyShift action_37
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (11) = happyShift action_36
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (11) = happyShift action_35
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (11) = happyShift action_34
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (11) = happyShift action_33
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (11) = happyShift action_32
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (11) = happyShift action_31
action_29 _ = happyFail (happyExpListPerState 29)

action_30 _ = happyReduce_3

action_31 _ = happyReduce_16

action_32 _ = happyReduce_15

action_33 _ = happyReduce_18

action_34 _ = happyReduce_17

action_35 _ = happyReduce_14

action_36 _ = happyReduce_13

action_37 (11) = happyShift action_4
action_37 (12) = happyShift action_5
action_37 (13) = happyShift action_6
action_37 (14) = happyShift action_7
action_37 (15) = happyShift action_8
action_37 (16) = happyShift action_9
action_37 (17) = happyShift action_10
action_37 (18) = happyShift action_11
action_37 (22) = happyShift action_12
action_37 (39) = happyShift action_13
action_37 (6) = happyGoto action_58
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (32) = happyShift action_57
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (11) = happyShift action_4
action_39 (12) = happyShift action_5
action_39 (13) = happyShift action_6
action_39 (14) = happyShift action_7
action_39 (15) = happyShift action_8
action_39 (16) = happyShift action_9
action_39 (17) = happyShift action_10
action_39 (18) = happyShift action_11
action_39 (22) = happyShift action_12
action_39 (25) = happyShift action_43
action_39 (26) = happyShift action_44
action_39 (27) = happyShift action_45
action_39 (28) = happyShift action_46
action_39 (29) = happyShift action_47
action_39 (39) = happyShift action_13
action_39 (6) = happyGoto action_40
action_39 (7) = happyGoto action_56
action_39 (8) = happyGoto action_42
action_39 _ = happyFail (happyExpListPerState 39)

action_40 _ = happyReduce_30

action_41 (42) = happyShift action_55
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (43) = happyShift action_54
action_42 _ = happyReduce_20

action_43 (16) = happyShift action_53
action_43 _ = happyReduce_22

action_44 (16) = happyShift action_52
action_44 _ = happyReduce_23

action_45 (16) = happyShift action_51
action_45 _ = happyReduce_24

action_46 _ = happyReduce_28

action_47 _ = happyReduce_29

action_48 (11) = happyShift action_4
action_48 (12) = happyShift action_5
action_48 (13) = happyShift action_6
action_48 (14) = happyShift action_7
action_48 (15) = happyShift action_8
action_48 (16) = happyShift action_9
action_48 (17) = happyShift action_10
action_48 (18) = happyShift action_11
action_48 (22) = happyShift action_12
action_48 (39) = happyShift action_13
action_48 (6) = happyGoto action_50
action_48 _ = happyFail (happyExpListPerState 48)

action_49 _ = happyReduce_19

action_50 (24) = happyShift action_66
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (11) = happyShift action_4
action_51 (12) = happyShift action_5
action_51 (13) = happyShift action_6
action_51 (14) = happyShift action_7
action_51 (15) = happyShift action_8
action_51 (16) = happyShift action_9
action_51 (17) = happyShift action_10
action_51 (18) = happyShift action_11
action_51 (22) = happyShift action_12
action_51 (39) = happyShift action_13
action_51 (6) = happyGoto action_65
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (11) = happyShift action_4
action_52 (12) = happyShift action_5
action_52 (13) = happyShift action_6
action_52 (14) = happyShift action_7
action_52 (15) = happyShift action_8
action_52 (16) = happyShift action_9
action_52 (17) = happyShift action_10
action_52 (18) = happyShift action_11
action_52 (22) = happyShift action_12
action_52 (39) = happyShift action_13
action_52 (6) = happyGoto action_64
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (11) = happyShift action_4
action_53 (12) = happyShift action_5
action_53 (13) = happyShift action_6
action_53 (14) = happyShift action_7
action_53 (15) = happyShift action_8
action_53 (16) = happyShift action_9
action_53 (17) = happyShift action_10
action_53 (18) = happyShift action_11
action_53 (22) = happyShift action_12
action_53 (39) = happyShift action_13
action_53 (6) = happyGoto action_63
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (11) = happyShift action_4
action_54 (12) = happyShift action_5
action_54 (13) = happyShift action_6
action_54 (14) = happyShift action_7
action_54 (15) = happyShift action_8
action_54 (16) = happyShift action_9
action_54 (17) = happyShift action_10
action_54 (18) = happyShift action_11
action_54 (22) = happyShift action_12
action_54 (25) = happyShift action_43
action_54 (26) = happyShift action_44
action_54 (27) = happyShift action_45
action_54 (28) = happyShift action_46
action_54 (29) = happyShift action_47
action_54 (39) = happyShift action_13
action_54 (6) = happyGoto action_40
action_54 (7) = happyGoto action_62
action_54 (8) = happyGoto action_42
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (19) = happyShift action_61
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (42) = happyShift action_60
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (11) = happyShift action_4
action_57 (12) = happyShift action_5
action_57 (13) = happyShift action_6
action_57 (14) = happyShift action_7
action_57 (15) = happyShift action_8
action_57 (16) = happyShift action_9
action_57 (17) = happyShift action_10
action_57 (18) = happyShift action_11
action_57 (22) = happyShift action_12
action_57 (39) = happyShift action_13
action_57 (6) = happyGoto action_59
action_57 _ = happyFail (happyExpListPerState 57)

action_58 _ = happyReduce_11

action_59 _ = happyReduce_7

action_60 (20) = happyShift action_70
action_60 (21) = happyShift action_71
action_60 (10) = happyGoto action_69
action_60 _ = happyReduce_31

action_61 (41) = happyShift action_68
action_61 _ = happyFail (happyExpListPerState 61)

action_62 _ = happyReduce_21

action_63 _ = happyReduce_25

action_64 _ = happyReduce_26

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

action_68 (11) = happyShift action_4
action_68 (12) = happyShift action_5
action_68 (13) = happyShift action_6
action_68 (14) = happyShift action_7
action_68 (15) = happyShift action_8
action_68 (16) = happyShift action_9
action_68 (17) = happyShift action_10
action_68 (18) = happyShift action_11
action_68 (22) = happyShift action_12
action_68 (25) = happyShift action_43
action_68 (26) = happyShift action_44
action_68 (27) = happyShift action_45
action_68 (28) = happyShift action_46
action_68 (29) = happyShift action_47
action_68 (39) = happyShift action_13
action_68 (6) = happyGoto action_40
action_68 (7) = happyGoto action_73
action_68 (8) = happyGoto action_42
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (41) = happyShift action_39
action_69 (9) = happyGoto action_72
action_69 _ = happyFail (happyExpListPerState 69)

action_70 _ = happyReduce_34

action_71 _ = happyReduce_33

action_72 _ = happyReduce_32

action_73 (42) = happyShift action_74
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (11) = happyShift action_4
action_74 (12) = happyShift action_5
action_74 (13) = happyShift action_6
action_74 (14) = happyShift action_7
action_74 (15) = happyShift action_8
action_74 (16) = happyShift action_9
action_74 (17) = happyShift action_10
action_74 (18) = happyShift action_11
action_74 (22) = happyShift action_12
action_74 (39) = happyShift action_13
action_74 (6) = happyGoto action_75
action_74 _ = happyFail (happyExpListPerState 74)

action_75 _ = happyReduce_4

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

happyReduce_4 = happyReduce 9 6 happyReduction_4
happyReduction_4 ((HappyAbsSyn6  happy_var_9) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (From happy_var_3 happy_var_7 happy_var_9
	) `HappyStk` happyRest

happyReduce_5 = happySpecReduce_1  6 happyReduction_5
happyReduction_5 (HappyTerminal (VarToken _ happy_var_1))
	 =  HappyAbsSyn6
		 (Var happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_1  6 happyReduction_6
happyReduction_6 (HappyTerminal (IntToken _ happy_var_1))
	 =  HappyAbsSyn6
		 (AssignInt happy_var_1
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happyReduce 5 6 happyReduction_7
happyReduction_7 ((HappyAbsSyn6  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Where happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_8 = happySpecReduce_2  6 happyReduction_8
happyReduction_8 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Into happy_var_2
	)
happyReduction_8 _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_2  6 happyReduction_9
happyReduction_9 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (In happy_var_2
	)
happyReduction_9 _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_2  6 happyReduction_10
happyReduction_10 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (As happy_var_2
	)
happyReduction_10 _ _  = notHappyAtAll 

happyReduce_11 = happyReduce 4 6 happyReduction_11
happyReduction_11 ((HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Import happy_var_2 happy_var_4
	) `HappyStk` happyRest

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
happyReduction_20 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 ([happy_var_1]
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  7 happyReduction_21
happyReduction_21 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1 : happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  8 happyReduction_22
happyReduction_22 _
	 =  HappyAbsSyn8
		 (Subject
	)

happyReduce_23 = happySpecReduce_1  8 happyReduction_23
happyReduction_23 _
	 =  HappyAbsSyn8
		 (Predicate
	)

happyReduce_24 = happySpecReduce_1  8 happyReduction_24
happyReduction_24 _
	 =  HappyAbsSyn8
		 (Object
	)

happyReduce_25 = happySpecReduce_3  8 happyReduction_25
happyReduction_25 (HappyAbsSyn6  happy_var_3)
	_
	_
	 =  HappyAbsSyn8
		 (SubjectIn happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  8 happyReduction_26
happyReduction_26 (HappyAbsSyn6  happy_var_3)
	_
	_
	 =  HappyAbsSyn8
		 (PredicateIn happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  8 happyReduction_27
happyReduction_27 (HappyAbsSyn6  happy_var_3)
	_
	_
	 =  HappyAbsSyn8
		 (ObjectIn happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_1  8 happyReduction_28
happyReduction_28 _
	 =  HappyAbsSyn8
		 (TrueElem
	)

happyReduce_29 = happySpecReduce_1  8 happyReduction_29
happyReduction_29 _
	 =  HappyAbsSyn8
		 (FalseElem
	)

happyReduce_30 = happySpecReduce_1  8 happyReduction_30
happyReduction_30 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_30 _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  9 happyReduction_31
happyReduction_31 _
	(HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn9
		 ([happy_var_2]
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happyReduce 5 9 happyReduction_32
happyReduction_32 ((HappyAbsSyn9  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (happy_var_2 : happy_var_5
	) `HappyStk` happyRest

happyReduce_33 = happySpecReduce_1  10 happyReduction_33
happyReduction_33 _
	 =  HappyAbsSyn10
		 (Or
	)

happyReduce_34 = happySpecReduce_1  10 happyReduction_34
happyReduction_34 _
	 =  HappyAbsSyn10
		 (And
	)

happyNewToken action sts stk [] =
	action 44 44 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	IntToken _ happy_dollar_dollar -> cont 11;
	VarToken _ happy_dollar_dollar -> cont 12;
	ImportToken _ -> cont 13;
	IntoToken _ -> cont 14;
	WhereToken _ -> cont 15;
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
          | From [Expr] [Expr] Expr 
          | Where [[Expr]] Expr
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
          | FalseElem
          | TrueElem
          | And
          | Or
  deriving (Eq,Show)
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
