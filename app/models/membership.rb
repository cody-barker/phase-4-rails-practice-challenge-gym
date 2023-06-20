class Membership < ApplicationRecord
    belongs_to :gym
    belongs_to :client
    validates :charge, presence: true
    validates_uniqueness_of :client_id, scope: :gym_id
end
