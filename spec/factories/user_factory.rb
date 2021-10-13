FactoryBot.define do
    factory :user do
        name { "Test User" }
        email {"testuser@gmail.com"}
        password {"testpass"}
    end
end