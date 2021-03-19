module Mutations
  class CreateBirthday < BaseMutation
    # arguments passed to the `resolve` method
    argument :name, String, required: true
    argument :date, String, required: true
    argument :email, String, required: true

    # return type from the mutation
    type Types::BirthdayType

    def resolve(name: nil, date: nil, email: nil)
      Birthday.create!(
        name: name,
        date: date,
        email: email
      )
    end
  end
end
