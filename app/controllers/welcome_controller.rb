class WelcomeController < ApplicationController
  def index
    @files = Upload.order(:created_at).page params[:page]
    @upload = Upload.new
  end
end
