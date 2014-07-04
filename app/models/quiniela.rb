class Quiniela < ActiveRecord::Base
  has_many :usuario_quiniela
  has_many :user, through: :usuario_quiniela
end
