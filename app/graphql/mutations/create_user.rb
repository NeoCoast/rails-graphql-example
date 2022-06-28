# frozen_string_literal: true

module Mutations
  class CreateUser < Mutations::BaseMutation
    graphql_name "CreateUser"

    argument :email, String, required: true
    argument :first_name, String, required: true
    argument :last_name, String, required: true

    field :user, Types::UserType, null: false

    def resolve(email:, first_name:, last_name:)
      user = User.create({
        email: email,
        first_name: first_name,
        last_name: last_name
      })
      MutationResult.call(
        obj: { user: user },
        success: user.persisted?,
        errors: user.errors
      )
    rescue ActiveRecord::RecordInvalid => invalid
      GraphQL::ExecutionError.new(
        "Invalid Attributes for #{invalid.record.class.name}: " \
        "#{invalid.record.errors.full_messages.join(', ')}"
      )
    end
  end
end
