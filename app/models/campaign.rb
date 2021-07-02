class Campaign < ApplicationRecord
    belongs_to :user, optional: true

    validates :title, presence: true
    validates :party, presence: true
    validates :level, presence: true
    validates :c_notes, presence: true
    validates :dm_notes, presence: true
    
end
