module Types
  class BirthdayType < Types::BaseObject
    field :id, ID, null: false
    field :date, String, null: false
    field :name, String, null: false
    field :email, String, null: false
  end
end
