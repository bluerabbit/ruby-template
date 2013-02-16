# -*- coding:utf-8 -*-
FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }

    after(:build) do |u|
    end
  end
end
