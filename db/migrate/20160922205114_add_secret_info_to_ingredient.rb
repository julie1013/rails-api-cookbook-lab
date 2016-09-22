class AddSecretInfoToIngredient < ActiveRecord::Migration
  def change
    add_column :ingredients, :secret_info, :string
  end
end
