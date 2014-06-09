class Team < ActiveRecord::Base
	belongs_to :group
	has_many :games
end
