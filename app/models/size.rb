class Size < ApplicationRecord
    has_many :patterns
    has_one :quantity, through: :pattern

    validates :name, presence: true, uniqueness: { case_sensitive: false }
end
