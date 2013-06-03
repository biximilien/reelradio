class Episode < ActiveRecord::Base
  attr_accessible :content, :title
  belongs_to :broadcast
end
