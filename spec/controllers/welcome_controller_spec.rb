require 'spec_helper'

describe WelcomeController do
  describe "GET 'index'" do
    before { get :index }
    it { response.should be_success }
  end
end
