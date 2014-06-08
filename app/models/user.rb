class User < ActiveRecord::Base
  # has_many :listings

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      if auth['info']
         puts "hey!"
         puts auth
         user.name = auth['info']['name'] || ""
         user.email = auth['info']['email'] || ""
         user.token = auth['credentials']['token'] || ""
         user.token_expires_at = auth['credentials']['expires_at'] || ""
      end
    end
  end

end
