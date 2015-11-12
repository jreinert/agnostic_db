module AgnosticDB
  abstract class Query
    def self.build(table)
      yield(QueryBuilder.build(table))
    end

    abstract def only(*fields : String) : Query
    abstract def without(*fields : String) : Query

    def result
      QueryResult.new(self)
    end
  end
end
