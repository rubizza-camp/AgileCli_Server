FactoryBot.define do
  factory :ticket do
    project_id { 1 }
    status_id { 1 }
    title { "MyString" }
    description { "MyText" }
    estimation { 1 }
  end
end
