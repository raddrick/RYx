class User < ActiveRecord::Base
  has_many :articles
  def self.from_omniauth auth
    where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      # user.raw_data = user.get_fb_details if user.raw_data.blank?
      user.save!
    end
  end

  def facebook
    @facebook ||= Koala::Facebook::API.new(oauth_token)
  rescue Koala::Facebook::APIError => e
    logger.info e.to_s
    nil
  end
end
