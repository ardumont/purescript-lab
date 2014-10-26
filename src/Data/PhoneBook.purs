module Data.PhoneBook where

import Data.List
import Data.Maybe

import Control.Plus (empty)

type Entry = { firstName :: String
             , lastName :: String
             , phone :: String
             }

type PhoneBook = List Entry

showMaybeEntry Nothing = ""
showMaybeEntry (Just e) = showEntry e

showEntry :: Entry -> String
showEntry entry = entry.lastName ++ ", " ++ entry.firstName ++ ": " ++ entry.phone ++ "\n"

--showBook :: PhoneBook -> [String]
--showBook = mapMaybe showEntry

emptyBook :: PhoneBook
emptyBook = empty

insertEntry :: Entry -> PhoneBook -> PhoneBook
insertEntry = Cons

findEntry :: String -> String -> PhoneBook -> Maybe Entry
findEntry firstName lastName = head <<< filter filterEntry
  where filterEntry :: Entry -> Boolean
        filterEntry e = e.firstName == firstName && e.lastName == lastName

headEntry :: PhoneBook -> Maybe Entry
headEntry Nil = Nothing
headEntry (Cons e _) = Just e

--
-- Samples
--
sampleEntry :: Entry
sampleEntry = { firstName: "John", lastName: "Smith", phone: "555-555-5555" }

samplePhoneBook :: PhoneBook
samplePhoneBook = Cons sampleEntry emptyBook
