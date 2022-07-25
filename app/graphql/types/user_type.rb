module Types
  class UserType < Types::BaseObject

    field :id, ID, null: false
    field :email, String, null: false

    field :authentication_token, String, null: true

    field :first_name, String, null: false
    field :last_name, String, null: false

    field :full_name, String, null: false

    field :created_at, String, null: false

    field :posts, [Types::PostType], null: true, preload: { posts: [:user, { comments: [:user, { replies: [:user] }] }] }
    field :comments, [Types::CommentType], null: true, preload: { comments: [:user, {replies: [:user]}] }

    field :password, String, null: false

    def authentication_token
      if object.id != context[:current_user]&.id
        raise GraphQL::UnauthorizedFieldError,
              "Unable to access authentication_token"
      end

      object.authentication_token
    end

    def full_name
      "#{object.first_name} #{object.last_name}"
    end
  end
end
