FactoryGirl.define do
  factory :user do
    username { LoremIpsum::Generator.new.generate(words: 1) }
  end
end
