class Vendedor < ActiveRecord::Base
	belongs_to :pessoa
	accepts_nested_attributes_for :pessoa 
end
