require 'spec_helper'

describe VotingDetail do
  it { should have_fields(:name, :counter) }
  it { should have_field(:name).of_type(String) }
  it { should have_field(:counter).of_type(Integer) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:counter) }
  it { should be_embedded_in(:voting) }
  it { should validate_presence_of(:name).on(:create, :update) }
  it { should validate_presence_of(:counter).on(:create, :update) }
  it { should validate_numericality_of(:counter).on(:create, :update) }
end
