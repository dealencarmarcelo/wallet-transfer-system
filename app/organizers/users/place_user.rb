class Users::PlaceUser
  include Interactor::Organizer

  organize Users::CreateUser
end
