class AddPriceToTheTentModel < ActiveRecord::Migration[5.2]
  def change
    add_column :tents, :price, :integer
  end
end
