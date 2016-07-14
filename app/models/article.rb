class Article < ActiveRecord::Base
  belongs_to :landing
  belongs_to :author, class_name: :user
end
