class Episode < ApplicationRecord
    has_and_belongs_to_many :guests
end
