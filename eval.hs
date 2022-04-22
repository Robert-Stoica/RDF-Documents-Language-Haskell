module Eval where
import Grammar
import Tokens
import System.IO


readTTL :: FilePath -> IO [String]
readTTL file = readFile file >>= \content -> return (lines content)

data Frame = AddVarFrame String | InsertFrame | SelectFrame [Int] | AsFrame String
      deriving (Show, Eq)

type Environment = [ (String, Expr)]

type Kontinuation = [Frame]

type State = (Expr, Environment, Kontinuation)


--Look up the value of given string in environment
getValue :: String -> Environment -> Expr
getValue x [] = error "Not Found : Value binding for given variable"
getValue x ((y,e):env) | x == y = e
                       | otherwise = getValue x env
 
--Update environment
update :: Environment -> String -> Expr -> Environment
update env x e = (x,e) : env

--Check for terminating expressions
isValue :: Expr -> Bool
isValue _ = False


--Evaluation function
eval1 :: State -> IO State


--Variable
eval1 (Var x, env, k) = return (e', env, k)
                      where e' = getValue x env


--Terminated expressions
eval1 (x, env, []) | isValue x = return (x, env, [])


--import As
eval1 (Import (Var var1) (Var var2), env, k) = readTTL (var1++".ttl") >>= \content -> return (As $ FileLines content, env, AsFrame var2:k)





