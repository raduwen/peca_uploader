require 'spec_helper'

describe UploadsController do
  let(:valid_attributes) { FactoryGirl.attributes_for(:upload) }
  let(:invalid_attribtues) { {} }
  let(:valid_session) { {} }

  describe "GET new" do
    it "assigns a new upload as @upload" do
      get :new
      assigns(:upload).should be_a_new(Upload)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      # before { fixture_file_upload('upload.png', 'image/png') }
      it "creates a new Upload" do
        expect {
          post :create, {:upload => valid_attributes}, valid_session
        }.to change(Upload, :count).by(1)
      end

      it "assigns a newly created upload as @upload" do
        post :create, {:upload => valid_attributes}, valid_session
        assigns(:upload).should be_a(Upload)
        assigns(:upload).should be_persisted
      end

      it "redirects to the created upload" do
        post :create, {:upload => valid_attributes}, valid_session
        response.should redirect_to(root_url)
      end
    end

    describe "with invalid params" do
      it "raises an exception" do
        expect { post :create, {upload: invalid_attribtues} }.to raise_error ActionController::ParameterMissing
      end

      it "re-renders the 'new' template" do
        Upload.any_instance.stub(:save).and_return(false)
        post :create, {:upload => valid_attributes.merge(filename: Forgery(:basic).text)}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested upload" do
      upload = Upload.create! valid_attributes
      expect {
        delete :destroy, {:id => upload.to_param}, valid_session
      }.to change(Upload, :count).by(-1)
    end

    it "redirects to the uploads list" do
      upload = Upload.create! valid_attributes
      delete :destroy, {:id => upload.to_param}, valid_session
      response.should redirect_to(root_url)
    end
  end

end
