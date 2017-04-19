class Borough < ActiveRecord::Base

  has_many :station
  has_many :route

end
