class Apuesta < ActiveRecord::Base
  belongs_to :user
  belongs_to :quiniela
  belongs_to :stage
  belongs_to :game
end
