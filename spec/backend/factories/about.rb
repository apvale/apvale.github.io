# frozen_string_literal: true

FactoryBot.define do
  factory :about do
    job_title { Faker::Job.title }
    description { Faker::Lorem.paragraphs(5).join("\n\n") }
    city { Faker::Address.city }
    country { Faker::Address.country_code }
    phone_number { Faker::PhoneNumber.cell_phone }
    email { Faker::Internet.email }
    locale { :en }

    cv do
      path = Rails.root.join('spec', 'backend', 'support', 'assets', 'cv-en.pdf')
      Rack::Test::UploadedFile.new(path, 'application/pdf')
    end

    trait :invalid do
      job_title { nil }
    end
  end
end
