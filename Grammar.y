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
  IMPORT      { ImportToken _ }
  WHERE       { WhereToken _ }
  INTO        { IntoToken _ }
  IN          { InToken _ }
  AS          { AsToken _ }
  FROM        { FromToken _ }
  WRITE       { WriteToken _ }
  GET         { GetToken _ }
  AND         { AndToken _ }
  OR          { OrToken _ }
  NOT         { NotToken _ }
  IF          { IfToken _ }
  THEN        { ThenToken _ }
  ELSE        { ElseToken _ }
  subj        { SubjectToken _ }
  pred        { PredicateToken _ }
  obj         { ObjectToken _ }
  true        { TrueToken _ }
  false       { FalseToken _ }
  '['         { BracketLToken _ }
  ']'         { BracketRToken _ }
  '('         { ParenLToken _ }
  ')'         { ParentRToken _ }
  '{'         { CurLToken _ }
  '}'         { CurRToken _ }
  '<'         { AngBracketLToken _ }
  '>'         { AngBracketRToken _ }
  '='         { EqualsToken _ }
  ','         { CommaToken _ }
  ';'         { SemiColonToken _ }
  '+'         { PlusToken _ }
  '-'         { MinusToken _ }
  '<='        { LessThanEqualToken _ }
  '>='        { MoreThanEqualToken _ }
  '!='        { NotEqualToken _ }

-- Operations wiht lowest precedence are listed first
-- Operations with equal precedence are listed on the same line

%left in
%right '='
%nonassoc int var '(' ')'
  
%%

import : IMPORT var AS var ';'                                      {}

imports : import                                                    {}
        | imports import                                            {}

stmt : FROM listVar GET listTriple WHERE '{' exp '}' INTO var ';'   {}

prog : imports stmt                                                 {}

triple : subj                                                       {}
       | pred                                                       {}
       | obj                                                        {}
       | subj IN var                                                {}
       | pred IN var                                                {}
       | obj IN var                                                 {}

listTriple : '[' triple ',' triple ',' triple ']'                   {}

listVar : var                                                       {}
        | var '[' var ',' listVar ']'                               {}
        | '[' var ',' listVar ']'                                   {}

compare : AND                                                       {}
        | OR                                                        {}
        | NOT                                                       {}

listCompare : listVar compare listCompare                           {}
            | listVar                                               {}

operator : '<'                                                      {}
         | '>'                                                      {}
         | '='                                                      {}
         | '+'                                                      {}
         | '-'                                                      {}
         | '<='                                                     {}
         | '>='                                                     {}
         | '!='                                                     {}

out : WRITE listVar out                                             {}
    | WRITE listVar                                                 {}

exp : 
    | var                                                           {}
    | int                                                           {}
    | listVar                                                       {}
    | listCompare                                                   {}
    | triple                                                        {}
    | '(' IF exp operator exp THEN out ELSE out ')'                 {}
    | '(' IF exp operator exp THEN out ')'                          {}


