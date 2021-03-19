module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :all_birthdays, [BirthdayType], null: false

    # this method is invoked, when `all_link` fields is being resolved
    def all_birthdays
      Birthday.all
    end

    field :birthday, BirthdayType, null: false do
      argument :id, ID, required: true
    end

    def birthday(id:)
      Birthday.find(id)
    end
  end
end
