require 'rails_helper'

describe Location do
  it { should belong_to :trip }
end
