require "rails_helper"

RSpec.describe JobSeeker, type: :model do
  it { should belong_to(:user) }
end
