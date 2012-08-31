class Guy < ActiveRecord::Base
  attr_accessible :down_votes, :name, :story, :up_votes, :mug
  has_attached_file :mug
end
