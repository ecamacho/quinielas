class Quiniela < ActiveRecord::Base
   belongs_to :user
  has_many :usuario_quinielas
  has_many :users, through: :usuario_quinielas
end
