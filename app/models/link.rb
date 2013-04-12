class Link < ActiveRecord::Base
  attr_accessible :link, :read, :user_id
  belongs_to :users
end
