import Tokens
import Grammar

import System.Environment
import Control.Exception
import System.IO

-- alexScanTokens generates a list of tokens
-- where: alexScanTokens :: [Tokens] -> String

--main = do
--  fileName <- getArgs
--  output <- readFile $ head fileName
--  let toks = alexScanTokens output
--  print $ toks!!0
--  print $ parseCalc ([toks!!0])

main = do
  (fileName : _ ) <- getArgs 
  sourceText <- readFile fileName
  putStrLn ("Parsing : " ++ sourceText)
  let parsedProg = parseCalc (alexScanTokens sourceText)
  putStrLn ("Parsed as " ++ (show parsedProg) ++ "\n")


