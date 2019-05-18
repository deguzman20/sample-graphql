Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  # types[Types::UserType] => User.all
  field :userField, Types::UserType do
    description "An sample field added by the generator"
    resolve ->(obj, args, ctx) {
      User.first
    }
  end
  
 field :projectField, types[Types::ProjectType] do
  description "project field"
  resolve ->(obj, args, ctx){
     Project.all
  }
 end
  
  
end
