
module Queries
  class Users < Queries::BaseQuery
    description 'list all Users'

    type [Types::UserType], null: false

    def resolve
      ::User.all
    end
  end
end
