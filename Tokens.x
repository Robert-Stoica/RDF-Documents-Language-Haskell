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
  select      { \p s -> SelectToken p }
  prefix      { \p s -> PrefixToken p }
  where       { \p s -> WhereToken p }
  import      { \p s -> ImportToken p }
  base        { \p s -> BaseToken p }
  subject     { \p s -> SubjectToken p }
  predicate   { \p s -> PredicateToken p }
  object      { \p s -> ObjectToken p }
  begin       { \p s -> BeginToken p }
  end         { \p s -> EndToken p }
  in          { \p s -> InToken p }
  \(          { \p s -> ParenLToken p }
  \)          { \p s -> ParenRToken p }
  \{          { \p s -> CurBracketLToken p }
  \}          { \p s -> CurBracketRToken p }
  \.          { \p s -> DotToken p }
  \<          { \p s -> AngBracketLToken p }
  \>          { \p s -> AngBracketRToken p }
  \=          { \p s -> EqualsToken p }
  $alpha [$alpha $digit \_ \']* { \p s -> VarToken p s }

{
-- Action type: AlexPosn -> String -> Token

data Token =
  IntToken AlexPosn Int       |
  VarToken AlexPosn String    |
  SelectToken AlexPosn        |
  PrefixToken AlexPosn        |
  WhereToken AlexPosn         |
  ImportToken AlexPosn        |
  BaseToken AlexPosn          |
  SubjectToken AlexPosn       |
  PredicateToken AlexPosn     |
  ObjectToken AlexPosn        |
  BeginToken AlexPosn         |
  EndToken AlexPosn           |
  InToken AlexPosn            |
  ParenLToken AlexPosn        |
  ParenRToken AlexPosn        |
  CurBracketLToken AlexPosn   |
  CurBracketRToken AlexPosn   |
  DotToken AlexPosn           |
  AngBracketLToken AlexPosn   |
  AngBracketRToken AlexPosn   |
  EqualsToken AlexPosn
  deriving (Eq, Show)

tokenPosn :: Token -> String
tokenPosn (IntToken (AlexPn _ l c) _) = (show l) ++ ":" ++ (show c)
tokenPosn (VarToken (AlexPn _ l c) _) = (show l) ++ ":" ++ (show c)
tokenPosn (SelectToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (PrefixToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (WhereToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (ImportToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (BaseToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (SubjectToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (PredicateToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (ObjectToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (BeginToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (EndToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (InToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (ParenLToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (ParenRToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (CurBracketLToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (CurBracketRToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (DotToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (AngBracketLToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (AngBracketRToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
tokenPosn (EqualsToken (AlexPn _ l c) ) = (show l) ++ ":" ++ (show c)
}
