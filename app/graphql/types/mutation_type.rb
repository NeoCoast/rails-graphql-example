module Types
  class MutationType < Types::BaseObject
    field :register_user, mutation: Mutations::RegisterUser
    field :sign_in, mutation: Mutations::SignIn
    field :sign_out, mutation: Mutations::SignOut
    field :create_user, mutation: Mutations::CreateUser
    field :edit_user, mutation: Mutations::EditUser

    field :create_post, mutation: Mutations::CreatePost
    field :edit_post, mutation: Mutations::EditPost

    field :create_comment, mutation: Mutations::CreateComment
    field :edit_comment, mutation: Mutations::EditComment

    field :create_reply, mutation: Mutations::CreateReply
    field :edit_reply, mutation: Mutations::EditReply
  end
end
