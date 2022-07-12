class User < ApplicationRecord
  has_secure_password

  enum :user_type, { common: 0, logist: 1 }
  enum :document_type, { cpf: 0, cnpj: 1 }

  validates_presence_of :first_name,
                        :last_name,
                        :email,
                        :document,
                        :user_type,
                        :document_type

  validates :password, length: { minimum: 6 },
                       presence: true,
                       if: :password

  validates_format_of :email, with: URI::MailTo::EMAIL_REGEXP
  validates_uniqueness_of :email, case_sensitive: false
  validates_uniqueness_of :document
end
