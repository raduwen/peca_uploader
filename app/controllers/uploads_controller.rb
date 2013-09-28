class UploadsController < ApplicationController
  before_action :set_upload, only: [:destroy]

  def new
    @upload = Upload.new
  end

  def create
    @upload = Upload.new(upload_params)

    if @upload.save
      redirect_to root_url, notice: 'Upload was successfully created.'
    else
      render action: 'new'
    end
  end

  # DELETE /uploads/1
  # DELETE /uploads/1.json
  def destroy
    @upload.destroy
    redirect_to root_url
  end

  private

  def set_upload
    @upload = Upload.find(params[:id])
  end

  def upload_params
    params.require(:upload).permit(:file).merge(ip: request.remote_ip)
  end
end
