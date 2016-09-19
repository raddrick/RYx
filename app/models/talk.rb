class Talk < ActiveRecord::Base
  extend FriendlyId
  belongs_to :speaker
  friendly_id :title, use: :slugged
end
