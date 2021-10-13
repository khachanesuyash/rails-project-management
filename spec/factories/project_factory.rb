FactoryBot.define do
    factory :project do
        title { "Test Project" }
        status {"not-started"}
        phase {"completed"}
    end
end