#
class AddToxicityToIngredients < ActiveRecord::Migration
  def change
    add_column :ingredients, :toxicity, :string
  end
end
