class Users::CreateUser
  include Interactor

  def call
    user = User.create(context.user_params)

    if user.persisted?
      context.user = user
    else
      context.fail!(errors: user.errors.full_messages)
    end
  end

  def rollback
    context.user.destroy
  end
end
