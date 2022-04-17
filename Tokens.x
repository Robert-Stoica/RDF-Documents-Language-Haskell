{
module Tokens where
}

%wrapper "posn"

$digit = 0-9
$alpha = [a-zA-Z]

tokens :-
  $white+     ;
  "--".*      ;
  $digit+     { \p s -> IntToken p (read s) }
  IMPORT      { \p s -> ImportToken p }
  WRITE       { \p s -> WriteToken p }
  WHERE       { \p s -> WhereToken p }
  INTO        { \p s -> IntoToken p }
  IN          { \p s -> InToken p }
  AS          { \p s -> AsToken p }
  GET         { \p s -> GetToken p }
  FROM        { \p s -> FromToken p }
  subj        { \p s -> SubjectToken p }
  OR          { \p s -> OrToken p }
  NOT         { \p s -> NotToken p }
  IF          { \p s -> IfToken p }
  THEN        { \p s -> ThenToken p }
  ELSE        { \p s -> ElseToken p }
  true        { \p s -> TrueToken p }
  false       { \p s -> FalseToken p }
  pred        { \p s -> PredicateToken p }
  obj         { \p s -> ObjectToken p }
  AND         { \p s -> AndToken p }
  \(          { \p s -> ParenLToken p }
  \)          { \p s -> ParenRToken p }
  \[          { \p s -> BracketLToken p }
  \]          { \p s -> BracketRToken p }
  \<          { \p s -> AngBracketLToken p }
  \>          { \p s -> AngBracketRToken p }
  \=          { \p s -> EqualsToken p }
  \,          { \p s -> CommaToken p }
  \;          { \p s -> SemiColonToken p }
  \{          { \p s -> CurLToken p }
  \}          { \p s -> CurRToken p }
  \+          { \p s -> PlusToken p }
  \-          { \p s -> MinusToken p }
  \<=         { \p s -> LessThanEqualToken p }
  \>=         { \p s -> MoreThanEqualToken p }
  \!=         { \p s -> NotEqualToken p }
  $alpha [$alpha $digit \_ \']* { \p s -> VarToken p s }

{

-- Action type: AlexPosn -> String -> Token
data Token =
  IntToken AlexPosn Int       |
  VarToken AlexPosn String    |
  InToken AlexPosn            |
  WriteToken AlexPosn         |
  NotEqualToken AlexPosn      |
  LessThanEqualToken AlexPosn |
  MoreThanEqualToken AlexPosn |
  PlusToken AlexPosn          |
  MinusToken AlexPosn         |
  CurLToken AlexPosn          |
  CurRToken AlexPosn          |
  SemiColonToken AlexPosn     |
  IntoToken AlexPosn          |
  WhereToken AlexPosn         |
  AsToken AlexPosn            |
  GetToken AlexPosn           |
  FromToken AlexPosn          |
  ImportToken AlexPosn        |
  SubjectToken AlexPosn       |
  PredicateToken AlexPosn     |
  ObjectToken AlexPosn        |
  EndToken AlexPosn           |
  ParenLToken AlexPosn        |
  ParenRToken AlexPosn        |
  AngBracketLToken AlexPosn   |
  AngBracketRToken AlexPosn   |
  BracketLToken AlexPosn      |
  BracketRToken AlexPosn      |
  EqualsToken AlexPosn        |
  AndToken AlexPosn           |
  OrToken AlexPosn            |
  NotToken AlexPosn           |
  IfToken AlexPosn            |
  ThenToken AlexPosn          |
  ElseToken AlexPosn          |
  TrueToken AlexPosn          |
  FalseToken AlexPosn         |
  CommaToken AlexPosn         
  deriving (Eq, Show)

tokenPosn :: Token -> String
tokenPosn (InToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (WriteToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (NotEqualToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (LessThanEqualToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (MoreThanEqualToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (CommaToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (PlusToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (MinusToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (CurLToken(AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (CurRToken(AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (SemiColonToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (IntoToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (GetToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (ThenToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (ElseToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (TrueToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (FalseToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (AndToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (OrToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (NotToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (IntToken (AlexPn _ l c) _) = (show l) ++ ":" ++ (show c)
tokenPosn (VarToken (AlexPn _ l c) _) = (show l) ++ ":" ++ (show c)
tokenPosn (ImportToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (SubjectToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (PredicateToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (ObjectToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (EndToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (ParenLToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (ParenRToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (BracketLToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (BracketRToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (AngBracketLToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (AngBracketRToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (EqualsToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
}
