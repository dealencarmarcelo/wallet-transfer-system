# Users requests controller
class Api::V1::UsersController < ApplicationController
  def create
    result = Users::PlaceUser.call(user_params: create_params)

    if result.success?
      render json: result.user, status: :ok
    else
      render json: result.errors, status: :unprocessable_entity
    end
  end

  private

  def create_params
    params.permit(
      :email,
      :document,
      :first_name,
      :last_name,
      :user_type,
      :document_type,
      :password,
      :password_confirmation
    )
  end
end
