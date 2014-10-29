class Marca < ActiveRecord::Base
  belongs_to :fabricante
  has_many :modelos
end
