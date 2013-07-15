class Voting
  include Mongoid::Document
  include Mongoid::MultiParameterAttributes 

  field :title, :type => String 
  embeds_many :votingDetails

  # validation 
  validates :title, :presence => true, :uniqueness => true 
  
end
