{
module Grammar where
import Tokens
}

%name parseCalc
%tokentype { Token }
%error { parseError }
%token
  int         { IntToken _ $$ }
  var         { VarToken _ $$ }
  IMPORT      { ImportToken _ }
  INTO        { IntoToken _ }
  WHERE       { WhereToken _ }
  IN          { InToken _ }
  AS          { AsToken _ }
  FROM        { FromToken _ }
  GET         { GetToken _ }
  AND         { AndToken _ }
  OR          { OrToken _ }
  IF          { IfToken _ }
  THEN        { ThenToken _ }
  ELSE        { ElseToken _ }
  subj        { SubjectToken _ }
  pred        { PredicateToken _ }
  obj         { ObjectToken _ }
  true        { TrueToken _ }
  false       { FalseToken _ }
  ';'         { SemiColonToken _ }
  '{'         { CurLToken _ }
  '}'         { CurRToken _ }
  '<'         { AngBracketLToken _ } 
  '>'         { AngBracketRToken _ }
  '<='        { LessThanEqualToken _ }
  '>='        { MoreThanEqualToken _ }
  '+'         { PlusToken _ }
  '-'         { MinusToken _ }
  '('         { ParenRToken _ }
  ')'         { ParenLToken _ }
  '['         { BracketLToken _ }
  ']'         { BracketRToken _ }
  ','         { CommaToken _ }

-- Operations wiht lowest precedence are listed first
-- Operations with equal precedence are listed on the same line

%left in
%right '='
%nonassoc int var '(' ')'

%%

stmts : stmt                                                                { [$1] }
      | stmts stmt                                                          { $2 : $1 }

stmt : exp ';'                                                              { $1 }

exp : FROM '[' listElement ']' GET '[' listElement ']' exp                  { From $3 $7 $9 }
    | var                                                                   { Var $1 }
    | int                                                                   { AssignInt $1 }
    | WHERE '{' compareLists '}' exp                                        { Where $3 $5 }
    | INTO exp                                                              { Into $2 }
    | IN exp                                                                { In $2 }
    | AS exp                                                                { As $2 } 
    | IMPORT exp AS exp                                                     { Import $2 $4 }
    | IF exp THEN exp ELSE exp                                              { IfThenElse $2 $4 $6 }
    | int '<' int                                                           { LessThan $1 $3 }
    | int '>' int                                                           { MoreThan $1 $3 }
    | int '+' int                                                           { Add $1 $3 }
    | int '-' int                                                           { Minus $1 $3 }
    | int '<=' int                                                          { LessThanEqual $1 $3 }
    | int '>=' int                                                          { MoreThanEqual $1 $3 }
    | '(' exp ')'                                                           { $2 }

listElement : listElementContent                                            { [$1] }
            | listElementContent ',' listElement                            { $1 : $3 }

listElementContent : subj                                                   { Subject }
                   | pred                                                   { Predicate }
                   | obj                                                    { Object }
                   | subj IN exp                                            { SubjectIn $3}
                   | pred IN exp                                            { PredicateIn $3 }
                   | obj IN exp                                             { ObjectIn $3}
                   | true                                                   { TrueElem }
                   | false                                                  { FalseElem }
                   | exp                                                    { $1 }

compareLists : '[' listElement ']'                                          { [$2] }
             | '[' listElement ']' comparison compareLists                  { $2 : $5 }

comparison : OR                                                             { Or }
           | AND                                                            { And }

{
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
}
