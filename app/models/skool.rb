class Skool < ActiveRecord::Base
  validates_presence_of :name

  def teachers_name
     teachers_name = 'Yoda'
  end
end
