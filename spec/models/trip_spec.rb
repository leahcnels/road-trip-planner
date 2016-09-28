require 'rails_helper'

describe Trip do
  it { should have_many :locations }
end
