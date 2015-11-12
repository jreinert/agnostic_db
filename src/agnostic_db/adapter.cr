module AgnosticDB
  abstract class Adapter
    abstract def initialize(@db)

    def build_query(table)
      Query.build(table) do |builder|
        yield(builder)
      end
    end
  end
end
