class DownloadController < ApplicationController
  def file
    @file = Upload.find(params[:id])
    send_data(@file.data, filename: @file.filename, type: @file.content_type)
  end
end
