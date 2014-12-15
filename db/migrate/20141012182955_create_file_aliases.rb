class CreateFileAliases < ActiveRecord::Migration
  def change
    create_table :file_aliases do |t|
      t.string :name
      t.references :directory, index: true

      t.timestamps
    end
  end
end
