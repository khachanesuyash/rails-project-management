FactoryBot.define do
    factory :task do
        title { "Test Task" }
        status {"not-started"}
        phase_id { 1 }
        priority { "high" }
        user_id { 1 }
        project_id { 1 }
    end
end