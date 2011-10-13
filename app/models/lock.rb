class Lock < ActiveRecord::Base
  belongs_to :user
  belongs_to :lockable, polymorphic: true
end
