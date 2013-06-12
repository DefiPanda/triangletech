class Event < ActiveRecord::Base
  attr_accessible :content, :date, :title, :organizer, :link

  validates :content, :date, :title, :organizer, :presence => true
  validates :title, :length => {:maximum => 100}

  def start_time
    date
  end
end
