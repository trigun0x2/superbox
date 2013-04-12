class Notes < ActiveRecord::Base
  attr_accessible :note, :user_id
  belongs_to :users
end
