main: alexComp happyComp
	alexComp
	happyComp

alexComp: Tokens.x Tokens.hs
	alex Tokens.x
	stack ghc Tokens.hs

happyComp: Grammar.y Grammar.hs
	happy Grammar.y
	stack ghc Grammar.hs
