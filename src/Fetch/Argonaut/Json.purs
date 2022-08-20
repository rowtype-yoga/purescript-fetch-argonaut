module Fetch.Argonaut.Json where

import Prelude

import Control.Monad.Error.Class (throwError)
import Data.Argonaut (class DecodeJson, JsonDecodeError, decodeJson, printJsonDecodeError)
import Data.Either (either)
import Effect.Aff (Aff, Error, error)
import Foreign (Foreign)
import Unsafe.Coerce (unsafeCoerce)

fromJson :: forall json. DecodeJson json ⇒ Aff Foreign -> Aff json
fromJson json = json >>= (unsafeCoerce >>> decodeJson >>> either (toError >>> throwError) pure)
  where
  toError :: JsonDecodeError -> Error
  toError = printJsonDecodeError >>> error
