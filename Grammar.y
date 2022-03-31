{
module Grammar where
import Tokens
}

%name prseCalc
%tokentype { Token }
%error { parseError }
%token
  int         { IntToken $$ }
  var         { VarToken $$ }
  select      { SelectTokens _ }
  prefix      { PrefxToken _ }
  where       { WhereToken _ }
  import      { ImportToken _ }
  base        { BaseToken _ }
  subject     { SubjectToken _ }
  predicate   { PredicateToken _ }
  object      { ObjectToken _ }
  begin       { BeginToken _ }
  end         { EndToken _ }
  in          { InToken _ }
  "("         { ParenLToken _ }
  ")"         { ParentRToken _ }
  "{"         { CurBracketLToken _ }
  "}"         { CurBracketRToken _ }
  "."         { DotToken _ }
  "<"         { AngBracketLToken _ }
  ">"         { AngBracketRToken _ }
  "="         { EqualsToken _ }


  
  
