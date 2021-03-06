# frozen_string_literal: true

FactoryBot.define do
  factory :work_experience do
    company_name { Faker::Company.name }
    position { Faker::Job.title }
    city { Faker::Address.city }
    country { Faker::Address.country_code }
    start_date { Faker::Date.between(5.years.ago, 2.years.ago) }
    description { Faker::Lorem.paragraphs(5).join("\n\n") }
    locale { :en }

    trait :invalid do
      company_name { nil }
    end
  end
end
