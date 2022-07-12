FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email }

    psw = Faker::Alphanumeric.alphanumeric(number: 10)
    password { psw }
    password_confirmation { psw }

    trait :common do
      user_type { User.user_types[:common] }
      document { Faker::Number.number(digits: 11) }
      document_type { User.document_types[:cpf] }
    end

    trait :logist do
      user_type { User.user_types[:logist] }
      document { Faker::Number.number(digits: 13) }
      document_type { User.document_types[:cnpj] }
    end

    trait :common_inactive do
      common
      active { false }
    end

    trait :logist_inactive do
      logist
      active { false }
    end

    trait :common_blocked do
      common
      blocked { true }
    end

    trait :logist_blocked do
      logist
      blocked { true }
    end
  end
end
