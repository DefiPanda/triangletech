class Event < ActiveRecord::Base
  attr_accessible :content, :date, :title

  validates :content, :date, :title, :presence => true
  validates :title, :length => {:maximum => 30}

  def start_time
    date
  end
end
