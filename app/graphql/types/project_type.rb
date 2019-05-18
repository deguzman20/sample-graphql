module Types
 ProjectType  = GraphQL::ObjectType.define do 
  name "Project"
  description "this is project"
  
  field :name, !types.String
  # field :age, !types.Int
  field :user_id, !types.Int
 end	
end	