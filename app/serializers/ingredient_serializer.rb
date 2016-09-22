class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :std_measure, :color, :toxicity
end
