require 'spec_helper'

describe Inventory do
  let(:blanks) { ['', nil] }

  it { should_not have_valid(:title).when(*blanks) }
  it { should have_valid(:title).when('Coffee') }

  it { should_not have_valid(:description).when(*blanks) }
  it { should have_valid(:description).when('It wakes you up') }

  it { should_not have_valid(:quantity).when(*blanks) }
  it { should have_valid(:quantity).when(1000) }

end
