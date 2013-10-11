class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.string :filename,     null: false
      t.string :ext,          null: false
      t.string :content_type, null: false
      t.binary :data,         null: false
      t.string :download_password_encrypt
      t.string :delete_password_encrypt

      t.timestamps
    end
  end
end
