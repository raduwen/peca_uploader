# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :upload do
    filename "xx.png"
    ext      ".png"
    data     "asdf"
  end
end
