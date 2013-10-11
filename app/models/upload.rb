class Upload < ActiveRecord::Base
  attr_accessor :delete_password
  attr_accessor :download_password

  before_save :encrypt

  validates :filename,     presence: true
  validates :ext,          presence: true
  validates :content_type, presence: true
  validates :data,         presence: true

  private

  def encrypt
    true
  end
end
