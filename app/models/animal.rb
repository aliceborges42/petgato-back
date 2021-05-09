class Animal < ApplicationRecord
    belongs_to :section
    has_many :vaccines
end
