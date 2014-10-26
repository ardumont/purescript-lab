module Data.PhoneBook where

import Data.List
import Data.Maybe

import Control.Plus (empty)

type Entry = { firstName :: String
             , lastName :: String
             , phone :: String
             }

type PhoneBook = List Entry

sampleEntry :: Entry
sampleEntry = { firstName: "John", lastName: "Smith", phone: "555-555-5555" }

showEntry :: Entry -> String
showEntry entry = entry.lastName ++ ", " ++ entry.firstName ++ ": " ++ entry.phone ++ "\n"

--showBook :: PhoneBook -> [String]
--showBook = mapMaybe showEntry

emptyBook :: PhoneBook
emptyBook = empty

insertEntry :: Entry -> PhoneBook -> PhoneBook
insertEntry = Cons
