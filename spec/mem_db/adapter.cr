require "../../src/agnostic_db/adapter"

module MemDB
  class Adapter < AgnosticDB::Adapter
    alias EntryValue = String
    alias Entry = Hash(String, EntryValue)
    alias Table = Array(Entry)
    alias Database = Hash(String, Table)

    DATABASES = {} of String => Database

    def initialize(@db_name)
      DATABASES[@db_name] ||= Database.new
    end
  end
end
