require 'rails_helper'

RSpec.describe Board, type: :model do
  it { should belong_to(:user) }
  it { should validate_presence_of(:name) }
  # pending "add some examples to (or delete) #{__FILE__}"
end
