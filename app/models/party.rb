class Party < ApplicationRecord
    has_many :snacks

    accepts_nested_attributes_for :snacks
end
