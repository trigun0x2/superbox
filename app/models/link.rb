class Link < ActiveRecord::Base
  attr_accessible :name, :read, :user_id
end
