class Quantity < ApplicationRecord
	has_one :pattern
	has_one :size
end
