class Pattern < ApplicationRecord
	has_many :sizes
	has_many :quantities, through: :sizes

	def size?(size)
		sizes.any? { |s| s.name.underscore.to_sym == size }
	end
end
