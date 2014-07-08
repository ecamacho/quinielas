class User < ActiveRecord::Base
  belongs_to :quiniela
  has_many :usuario_quinielas
  has_many :quinielas, through: :usuario_quinielas
	
  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.nombre = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end
end