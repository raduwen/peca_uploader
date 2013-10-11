# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :upload do
    filename     "xx.png"
    ext          ".png"
    content_type "image/png"
    data         "asdf"
  end
end
