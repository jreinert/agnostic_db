module AgnosticDB
  abstract class QueryBuilder
    abstract def initialize(@table : String)
    abstract def where(field, value)
  end
end
