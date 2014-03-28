class Event < ActiveRecord::Base
  attr_accessible :content, :date, :title, :organizer, :typesite, :typeid, :link

  validates :content, :date, :title, :organizer, :presence => true
  validates :title, :length => {:maximum => 100}

  def start_time
    date
  end

  def self.pair_exists?(typesite, typeid)
    Event.find_all_by_typesite_and_typeid(typesite, typeid).any?
  end
end
