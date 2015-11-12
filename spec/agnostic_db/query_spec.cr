require "../spec_helper"

describe AgnosticDB::Query do
  describe ".build" do
    it "yields a builder" do
      MemDB::Query.build("test_table") do |builder|
        builder.should be_a(MemDB::QueryBuilder)
      end
    end
  end
end
