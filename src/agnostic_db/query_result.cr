module AgnosticDB
  abstract class QueryResult
    include Enumerable(Hash)
    include Iterable
    abstract def initialize(@query : Query)
  end
end
