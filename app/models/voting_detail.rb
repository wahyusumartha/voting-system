class VotingDetail
  include Mongoid::Document

  field :name, :type => String 
  field :counter, :type => Integer 
  embedded_in :voting

  # validation 
  validates :name, :presence => true 
  validates :counter, :presence => true, numericality: { only_integer: true }
end
