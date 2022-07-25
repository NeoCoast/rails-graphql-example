
module Queries
  class Users < Queries::BaseQuery
    description 'list all Users'
    type Types::UserType.connection_type, null: false

    def resolve
      ::User.all
    end
  end
end
