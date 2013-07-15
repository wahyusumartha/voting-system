require 'spec_helper'

describe Voting do
  it { should validate_presence_of(:title) }
  it { should validate_uniqueness_of(:title) }
  it { should embed_many(:votingDetails) }
  it { should have_field(:title).of_type(String) } 
  it { should validate_presence_of(:title).on(:create, :update) }
  it { should validate_uniqueness_of(:title).on(:create, :update) }
end
