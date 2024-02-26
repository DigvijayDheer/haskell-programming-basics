-- ## Pragmatic intro to types
{-
  The  ::
  A type is a label that every expression has and restricts its usage.
  We use a double colon :: to show or assign the type of expression. For instance, the code
  myexpression :: MyType
  tells us that the expression `myexpression` has type of `MyType`.
-}

-- ===============================================

-- ### Frequently used types
{-
  There are the standard types that are frequently used in Haskell:
  1. `Int` and `Integer` for integer numbers.
  2. `Float` and `Double` for floating point real numbers.
  3. `Bool` for True and False.
  4. `Char` for characters.
  5. `String` for strings of text.
-}

-- ===============================================

-- The `:type` command (or `:t` for short) in GHCI, followed by any valid expression, tells us its type.

-- ghci > :type True

-- ghci > :type False

-- ghci > :t (3 < 5)

-- ghci > :t 'A'

-- ghci > :t "Hello world!"

-- ===============================================

-- ## Signature of a function