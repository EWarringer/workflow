require 'rails_helper'

RSpec.describe Industry, type: :model do
  it { should validate_presence_of(:name) }
end
