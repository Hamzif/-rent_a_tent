class CreateTents < ActiveRecord::Migration[5.2]
  def change
    create_table :tents do |t|
      t.string :title
      t.text :description
      t.text :address
      t.string :photo
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
