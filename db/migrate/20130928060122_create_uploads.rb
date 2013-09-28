class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.string :filename,  presence: true
      t.string :ext,      presence: true
      t.string :comment
      t.string :ip,       presence: true
      t.integer :view_count
      t.binary :data, :limit => 5.megabytes

      t.timestamps
    end
  end
end
