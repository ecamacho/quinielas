class Game < ActiveRecord::Base
	belongs_to :local, class_name: "Team", foreign_key: :local_id
	belongs_to :visita, class_name: "Team", foreign_key: :visita_id
	belongs_to :stage
end
