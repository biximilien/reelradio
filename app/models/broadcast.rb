class Broadcast < ActiveRecord::Base
  attr_accessible :content, :title
  has_many :episodes
end
