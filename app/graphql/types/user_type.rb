module Types
 UserType = GraphQL::ObjectType.define do
   name "User"
   description "a user"
   
   field :id, !types.Int
   field :name, !types.String
   field :age, !types.Int

 end	
end	