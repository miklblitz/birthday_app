module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    field :create_birthday, mutation: Mutations::CreateBirthday
  end
end
