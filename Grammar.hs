{-# OPTIONS_GHC -w #-}
module Grammar where
import Tokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.8

data HappyAbsSyn t4 t5 t6 t7 t8 t9
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,131) ([65024,17,32,36848,0,1,0,0,0,8192,0,0,63488,1,0,0,63488,71,128,0,1024,0,4606,8192,61440,143,256,32640,4,8,0,0,57345,287,512,65280,8,16,18424,32768,0,0,0,0,0,64,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,512,4096,0,0,2,0,4096,0,0,128,0,0,4,0,8192,0,0,256,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2303,4096,63488,3655,128,0,0,32,0,0,61442,143,256,0,0,0,32768,0,16384,0,0,0,1,0,0,0,0,0,8192,0,0,512,512,0,0,16,0,32768,0,0,0,0,0,2303,4096,63488,71,128,16320,2,4,37374,8195,0,0,2,0,0,32,0,0,57344,287,512,0,0,0,18424,32782,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","stmts","stmt","exp","listVar","listElement","listElementContent","int","var","IMPORT","WHERE","INTO","IN","AS","FROM","GET","AND","OR","IF","THEN","ELSE","subj","pred","obj","true","false","';'","'{'","'}'","'<'","'>'","'<='","'>='","'+'","'-'","'('","')'","'['","']'","','","%eof"]
        bit_start = st * 43
        bit_end = (st + 1) * 43
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..42]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (10) = happyShift action_4
action_0 (11) = happyShift action_5
action_0 (12) = happyShift action_6
action_0 (13) = happyShift action_7
action_0 (14) = happyShift action_8
action_0 (15) = happyShift action_9
action_0 (16) = happyShift action_10
action_0 (17) = happyShift action_11
action_0 (21) = happyShift action_12
action_0 (38) = happyShift action_13
action_0 (4) = happyGoto action_14
action_0 (5) = happyGoto action_2
action_0 (6) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (10) = happyShift action_4
action_1 (11) = happyShift action_5
action_1 (12) = happyShift action_6
action_1 (13) = happyShift action_7
action_1 (14) = happyShift action_8
action_1 (15) = happyShift action_9
action_1 (16) = happyShift action_10
action_1 (17) = happyShift action_11
action_1 (21) = happyShift action_12
action_1 (38) = happyShift action_13
action_1 (5) = happyGoto action_2
action_1 (6) = happyGoto action_3
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (29) = happyShift action_30
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (32) = happyShift action_24
action_4 (33) = happyShift action_25
action_4 (34) = happyShift action_26
action_4 (35) = happyShift action_27
action_4 (36) = happyShift action_28
action_4 (37) = happyShift action_29
action_4 _ = happyReduce_5

action_5 _ = happyReduce_4

action_6 (10) = happyShift action_4
action_6 (11) = happyShift action_5
action_6 (12) = happyShift action_6
action_6 (13) = happyShift action_7
action_6 (14) = happyShift action_8
action_6 (15) = happyShift action_9
action_6 (16) = happyShift action_10
action_6 (17) = happyShift action_11
action_6 (21) = happyShift action_12
action_6 (38) = happyShift action_13
action_6 (6) = happyGoto action_23
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (30) = happyShift action_22
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (10) = happyShift action_4
action_8 (11) = happyShift action_5
action_8 (12) = happyShift action_6
action_8 (13) = happyShift action_7
action_8 (14) = happyShift action_8
action_8 (15) = happyShift action_9
action_8 (16) = happyShift action_10
action_8 (17) = happyShift action_11
action_8 (21) = happyShift action_12
action_8 (38) = happyShift action_13
action_8 (6) = happyGoto action_21
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (10) = happyShift action_4
action_9 (11) = happyShift action_5
action_9 (12) = happyShift action_6
action_9 (13) = happyShift action_7
action_9 (14) = happyShift action_8
action_9 (15) = happyShift action_9
action_9 (16) = happyShift action_10
action_9 (17) = happyShift action_11
action_9 (21) = happyShift action_12
action_9 (38) = happyShift action_13
action_9 (6) = happyGoto action_20
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (10) = happyShift action_4
action_10 (11) = happyShift action_5
action_10 (12) = happyShift action_6
action_10 (13) = happyShift action_7
action_10 (14) = happyShift action_8
action_10 (15) = happyShift action_9
action_10 (16) = happyShift action_10
action_10 (17) = happyShift action_11
action_10 (21) = happyShift action_12
action_10 (38) = happyShift action_13
action_10 (6) = happyGoto action_19
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (40) = happyShift action_18
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (10) = happyShift action_4
action_12 (11) = happyShift action_5
action_12 (12) = happyShift action_6
action_12 (13) = happyShift action_7
action_12 (14) = happyShift action_8
action_12 (15) = happyShift action_9
action_12 (16) = happyShift action_10
action_12 (17) = happyShift action_11
action_12 (21) = happyShift action_12
action_12 (38) = happyShift action_13
action_12 (6) = happyGoto action_17
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (10) = happyShift action_4
action_13 (11) = happyShift action_5
action_13 (12) = happyShift action_6
action_13 (13) = happyShift action_7
action_13 (14) = happyShift action_8
action_13 (15) = happyShift action_9
action_13 (16) = happyShift action_10
action_13 (17) = happyShift action_11
action_13 (21) = happyShift action_12
action_13 (38) = happyShift action_13
action_13 (6) = happyGoto action_16
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (10) = happyShift action_4
action_14 (11) = happyShift action_5
action_14 (12) = happyShift action_6
action_14 (13) = happyShift action_7
action_14 (14) = happyShift action_8
action_14 (15) = happyShift action_9
action_14 (16) = happyShift action_10
action_14 (17) = happyShift action_11
action_14 (21) = happyShift action_12
action_14 (38) = happyShift action_13
action_14 (43) = happyAccept
action_14 (5) = happyGoto action_15
action_14 (6) = happyGoto action_3
action_14 _ = happyFail (happyExpListPerState 14)

action_15 _ = happyReduce_2

action_16 (39) = happyShift action_42
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (22) = happyShift action_41
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (11) = happyShift action_40
action_18 (7) = happyGoto action_39
action_18 _ = happyFail (happyExpListPerState 18)

action_19 _ = happyReduce_8

action_20 _ = happyReduce_7

action_21 _ = happyReduce_11

action_22 (40) = happyShift action_38
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (16) = happyShift action_37
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (10) = happyShift action_36
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (10) = happyShift action_35
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (10) = happyShift action_34
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (10) = happyShift action_33
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (10) = happyShift action_32
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (10) = happyShift action_31
action_29 _ = happyFail (happyExpListPerState 29)

action_30 _ = happyReduce_3

action_31 _ = happyReduce_16

action_32 _ = happyReduce_15

action_33 _ = happyReduce_18

action_34 _ = happyReduce_17

action_35 _ = happyReduce_14

action_36 _ = happyReduce_13

action_37 (10) = happyShift action_4
action_37 (11) = happyShift action_5
action_37 (12) = happyShift action_6
action_37 (13) = happyShift action_7
action_37 (14) = happyShift action_8
action_37 (15) = happyShift action_9
action_37 (16) = happyShift action_10
action_37 (17) = happyShift action_11
action_37 (21) = happyShift action_12
action_37 (38) = happyShift action_13
action_37 (6) = happyGoto action_52
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (10) = happyShift action_4
action_38 (11) = happyShift action_5
action_38 (12) = happyShift action_6
action_38 (13) = happyShift action_7
action_38 (14) = happyShift action_8
action_38 (15) = happyShift action_9
action_38 (16) = happyShift action_10
action_38 (17) = happyShift action_11
action_38 (21) = happyShift action_12
action_38 (24) = happyShift action_49
action_38 (25) = happyShift action_50
action_38 (26) = happyShift action_51
action_38 (38) = happyShift action_13
action_38 (6) = happyGoto action_46
action_38 (8) = happyGoto action_47
action_38 (9) = happyGoto action_48
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (41) = happyShift action_45
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (42) = happyShift action_44
action_40 _ = happyReduce_20

action_41 (10) = happyShift action_4
action_41 (11) = happyShift action_5
action_41 (12) = happyShift action_6
action_41 (13) = happyShift action_7
action_41 (14) = happyShift action_8
action_41 (15) = happyShift action_9
action_41 (16) = happyShift action_10
action_41 (17) = happyShift action_11
action_41 (21) = happyShift action_12
action_41 (38) = happyShift action_13
action_41 (6) = happyGoto action_43
action_41 _ = happyFail (happyExpListPerState 41)

action_42 _ = happyReduce_19

action_43 (23) = happyShift action_60
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (11) = happyShift action_40
action_44 (7) = happyGoto action_59
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (18) = happyShift action_58
action_45 _ = happyFail (happyExpListPerState 45)

action_46 _ = happyReduce_30

action_47 (41) = happyShift action_57
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (42) = happyShift action_56
action_48 _ = happyReduce_22

action_49 (15) = happyShift action_55
action_49 _ = happyReduce_24

action_50 (15) = happyShift action_54
action_50 _ = happyReduce_25

action_51 (15) = happyShift action_53
action_51 _ = happyReduce_26

action_52 _ = happyReduce_9

action_53 (10) = happyShift action_4
action_53 (11) = happyShift action_5
action_53 (12) = happyShift action_6
action_53 (13) = happyShift action_7
action_53 (14) = happyShift action_8
action_53 (15) = happyShift action_9
action_53 (16) = happyShift action_10
action_53 (17) = happyShift action_11
action_53 (21) = happyShift action_12
action_53 (38) = happyShift action_13
action_53 (6) = happyGoto action_67
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (10) = happyShift action_4
action_54 (11) = happyShift action_5
action_54 (12) = happyShift action_6
action_54 (13) = happyShift action_7
action_54 (14) = happyShift action_8
action_54 (15) = happyShift action_9
action_54 (16) = happyShift action_10
action_54 (17) = happyShift action_11
action_54 (21) = happyShift action_12
action_54 (38) = happyShift action_13
action_54 (6) = happyGoto action_66
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (10) = happyShift action_4
action_55 (11) = happyShift action_5
action_55 (12) = happyShift action_6
action_55 (13) = happyShift action_7
action_55 (14) = happyShift action_8
action_55 (15) = happyShift action_9
action_55 (16) = happyShift action_10
action_55 (17) = happyShift action_11
action_55 (21) = happyShift action_12
action_55 (38) = happyShift action_13
action_55 (6) = happyGoto action_65
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (10) = happyShift action_4
action_56 (11) = happyShift action_5
action_56 (12) = happyShift action_6
action_56 (13) = happyShift action_7
action_56 (14) = happyShift action_8
action_56 (15) = happyShift action_9
action_56 (16) = happyShift action_10
action_56 (17) = happyShift action_11
action_56 (21) = happyShift action_12
action_56 (24) = happyShift action_49
action_56 (25) = happyShift action_50
action_56 (26) = happyShift action_51
action_56 (38) = happyShift action_13
action_56 (6) = happyGoto action_46
action_56 (8) = happyGoto action_64
action_56 (9) = happyGoto action_48
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (31) = happyShift action_63
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (40) = happyShift action_62
action_58 _ = happyFail (happyExpListPerState 58)

action_59 _ = happyReduce_21

action_60 (10) = happyShift action_4
action_60 (11) = happyShift action_5
action_60 (12) = happyShift action_6
action_60 (13) = happyShift action_7
action_60 (14) = happyShift action_8
action_60 (15) = happyShift action_9
action_60 (16) = happyShift action_10
action_60 (17) = happyShift action_11
action_60 (21) = happyShift action_12
action_60 (38) = happyShift action_13
action_60 (6) = happyGoto action_61
action_60 _ = happyFail (happyExpListPerState 60)

action_61 _ = happyReduce_12

action_62 (10) = happyShift action_4
action_62 (11) = happyShift action_5
action_62 (12) = happyShift action_6
action_62 (13) = happyShift action_7
action_62 (14) = happyShift action_8
action_62 (15) = happyShift action_9
action_62 (16) = happyShift action_10
action_62 (17) = happyShift action_11
action_62 (21) = happyShift action_12
action_62 (24) = happyShift action_49
action_62 (25) = happyShift action_50
action_62 (26) = happyShift action_51
action_62 (38) = happyShift action_13
action_62 (6) = happyGoto action_46
action_62 (8) = happyGoto action_68
action_62 (9) = happyGoto action_48
action_62 _ = happyFail (happyExpListPerState 62)

action_63 _ = happyReduce_6

action_64 _ = happyReduce_23

action_65 _ = happyReduce_27

action_66 _ = happyReduce_28

action_67 _ = happyReduce_29

action_68 (41) = happyShift action_69
action_68 _ = happyFail (happyExpListPerState 68)

action_69 _ = happyReduce_10

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

happyReduce_6 = happyReduce 6 6 happyReduction_6
happyReduction_6 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Where happy_var_4
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

happyReduce_10 = happyReduce 8 6 happyReduction_10
happyReduction_10 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (From happy_var_3 happy_var_7
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

happyReduce_22 = happySpecReduce_1  8 happyReduction_22
happyReduction_22 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 ([happy_var_1]
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  8 happyReduction_23
happyReduction_23 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1 : happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  9 happyReduction_24
happyReduction_24 _
	 =  HappyAbsSyn9
		 (Subject
	)

happyReduce_25 = happySpecReduce_1  9 happyReduction_25
happyReduction_25 _
	 =  HappyAbsSyn9
		 (Predicate
	)

happyReduce_26 = happySpecReduce_1  9 happyReduction_26
happyReduction_26 _
	 =  HappyAbsSyn9
		 (Object
	)

happyReduce_27 = happySpecReduce_3  9 happyReduction_27
happyReduction_27 (HappyAbsSyn6  happy_var_3)
	_
	_
	 =  HappyAbsSyn9
		 (SubjectIn happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  9 happyReduction_28
happyReduction_28 (HappyAbsSyn6  happy_var_3)
	_
	_
	 =  HappyAbsSyn9
		 (PredicateIn happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  9 happyReduction_29
happyReduction_29 (HappyAbsSyn6  happy_var_3)
	_
	_
	 =  HappyAbsSyn9
		 (ObjectIn happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_1  9 happyReduction_30
happyReduction_30 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_30 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 43 43 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	IntToken _ happy_dollar_dollar -> cont 10;
	VarToken _ happy_dollar_dollar -> cont 11;
	ImportToken _ -> cont 12;
	WhereToken _ -> cont 13;
	IntoToken _ -> cont 14;
	InToken _ -> cont 15;
	AsToken _ -> cont 16;
	FromToken _ -> cont 17;
	GetToken _ -> cont 18;
	AndToken _ -> cont 19;
	OrToken _ -> cont 20;
	IfToken _ -> cont 21;
	ThenToken _ -> cont 22;
	ElseToken _ -> cont 23;
	SubjectToken _ -> cont 24;
	PredicateToken _ -> cont 25;
	ObjectToken _ -> cont 26;
	TrueToken _ -> cont 27;
	FalseToken _ -> cont 28;
	SemiColonToken _ -> cont 29;
	CurLToken _ -> cont 30;
	CurRToken _ -> cont 31;
	AngBracketLToken _ -> cont 32;
	AngBracketRToken _ -> cont 33;
	LessThanEqualToken _ -> cont 34;
	MoreThanEqualToken _ -> cont 35;
	PlusToken _ -> cont 36;
	MinusToken _ -> cont 37;
	ParenRToken _ -> cont 38;
	ParenLToken _ -> cont 39;
	BracketLToken _ -> cont 40;
	BracketRToken _ -> cont 41;
	CommaToken _ -> cont 42;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 43 tk tks = happyError' (tks, explist)
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
          | From [String] [Expr]
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
