require "../spec_helper"

def db
  MemDB::Adapter.new("foobar")
end

describe AgnosticDB::Adapter do
  describe ".new" do
    it "takes a database name" do
      MemDB::Adapter.new("test_db")
    end
  end

  describe "#build_query" do
    it "takes a table name" do
      db.build_query("foobar") { |builder| }
    end
  end
end
