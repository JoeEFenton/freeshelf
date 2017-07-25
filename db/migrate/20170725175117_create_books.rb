class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :Title
      t.string :Author
      t.text :Description
      t.string :URL

      t.timestamps
    end
  end
end
