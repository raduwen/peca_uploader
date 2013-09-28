# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :upload do
    file { fixture_file_upload(Rails.root.join('spec', 'fixtures', 'upload.png'), 'image/png') }
    comment { Forgery(:basic).text(at_most: 200) }
    ip { Forgery(:internet).ip_v4 }
    # ext
    # view_count
  end
end
