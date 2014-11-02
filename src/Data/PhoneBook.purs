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

-- > showEntry <$> findEntry "John" "Smith" samplePhoneBook
-- Just ("Smith, John: 555-555-5555\n")
-- > showEntry <$> findEntry "Josh" "Smith" samplePhoneBook
-- Nothing

findEntryPhone :: String -> PhoneBook -> Maybe Entry
findEntryPhone phone = head <<< filter filterEntryPhone
  where filterEntryPhone :: Entry -> Boolean
        filterEntryPhone e = e.phone == phone

-- > showEntry <$> findEntryPhone "555-555-5555" samplePhoneBook
--   Just ("Smith, John: 555-555-5555\n")

headEntry :: PhoneBook -> Maybe Entry
headEntry Nil = Nothing
headEntry (Cons e _) = Just e

--
-- Samples
--
sampleEntry :: Entry
sampleEntry = { firstName: "John", lastName: "Smith", phone: "555-555-5555" }

samplePhoneBook :: PhoneBook
samplePhoneBook = insertEntry sampleEntry emptyBook

-- > :t Data.List.null
-- forall a. Data.List.List a -> Prim.Boolean

entryPresent :: String -> PhoneBook -> Boolean
entryPresent lastName phone = if null phone
                              then false
                              else (not <<< null <<< filter filterEntry) phone
                              where filterEntry entry = entry.lastName == lastName
-- > entryPresent "Smith" samplePhoneBook
--   true
-- > entryPresent "John" samplePhoneBook
--   false
