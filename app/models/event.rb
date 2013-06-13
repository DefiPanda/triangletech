class Event < ActiveRecord::Base
  attr_accessible :content, :date, :title, :organizer, :link

  validates :content, :date, :title, :organizer, :presence => true
  validates :title, :length => {:maximum => 100}

  def start_time
    date
  end

  def self.pair_exists?(date, title, organizer)
    Event.find_all_by_date_and_title_and_organizer(date, title, organizer).any?
  end
end
