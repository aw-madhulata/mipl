require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:boards).dependent(:destroy) }
  # pending "add some examples to (or delete) #{__FILE__}"
end