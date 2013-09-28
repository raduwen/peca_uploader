require 'spec_helper'

describe 'visit /uploads/new' do
  before { visit '/uploads/new' }

  it { find('#new_upload').should have_button('Upload') }
  it { find("#new_upload").should have_css("#upload_file") }
  it { find("#new_upload").should have_css("#upload_comment") }

  describe 'click with Upload button' do
    before {
      attach_file("upload_file", "#{Rails.root}/spec/fixtures/upload.png")
      find("input[name='upload[comment]']").set Forgery(:basic).text
      click_button 'Upload'
    }

    it { page.current_path.should eql root_path }
  end
end

