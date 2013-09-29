class Upload < ActiveRecord::Base
  attr_accessor :file

  before_validation :set_attributes_from_file, :if => Proc.new { |instance| instance.new_record? }

  validates :filename, presence: true, format: { with: /\.[A-Za-z]+\Z/ }
  validates :ext, presence: true
  validates :ip, presence: true
  validates :content_type, presence: true

  private

  def set_attributes_from_file
    set_filename
    set_ext
    set_data
    set_content_type
  end

  def set_data
    self.data = @file.read
  end

  def set_content_type
    self.content_type = @file.content_type
  end

  def set_filename
    self.filename = @file.original_filename
  end

  def set_ext
    self.ext = File.extname(@file.original_filename)
  end
end
