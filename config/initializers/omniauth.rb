OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
 provider :facebook, '281101668729188',  'c240f2a878589e17f6755e58852c8af5'	
end