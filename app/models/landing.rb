require 'github/markup'

class Landing < ActiveRecord::Base
  has_many :articles
end
