module Test.Main where

import Prelude

import Effect (Effect)
import Effect.Console (log)
import Test.Data.Char (testChar)
import Test.Data.String (testString)
import Test.Data.String.CaseInsensitive (testCaseInsensitiveString)
import Test.Data.String.CodePoints (testStringCodePoints)
import Test.Data.String.NonEmpty (testNonEmptyString)
import Test.Data.String.Regex (testStringRegex)
import Test.Data.String.Unsafe (testStringUnsafe)

main :: Effect Unit
main = do
  log "\n--- Data.Char ---\n"
  testChar
  log "\n--- Data.String ---\n"
  testString
  log "\n--- Data.String.CodePoints ---\n"
  testStringCodePoints
  log "\n--- Data.String.Unsafe ---\n"
  testStringUnsafe
  log "\n--- Data.String.Regex ---\n"
  testStringRegex
  log "\n--- Data.String.CaseInsensitive ---\n"
  testCaseInsensitiveString
  log "\n--- Data.String.NonEmpty ---\n"
  testNonEmptyString
