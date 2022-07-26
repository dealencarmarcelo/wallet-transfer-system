require 'rails_helper'

RSpec.describe 'Api::V1::Users', type: :request do
  before do
    password = Faker::Alphanumeric.alphanumeric(number: 8)
    @common_params = {
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      email: Faker::Internet.email,
      document: Faker::Number.number(digits: 11),
      user_type: 'common',
      document_type: 'cpf',
      password: password,
      password_confirmation: password
    }
  end

  describe 'POST /create' do
    context 'with valid params' do
      it 'returns success' do
        post '/api/v1/users', params: @common_params
        expect(response).to have_http_status(:success)
      end
    end
  end
end
