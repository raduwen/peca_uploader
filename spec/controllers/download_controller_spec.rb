require 'spec_helper'

describe DownloadController do
  let(:file) { FactoryGirl.create :upload }

  describe "GET 'file'" do
    it "returns http success" do
      get :file, id: file.id
      response.should be_success
    end
  end
end
