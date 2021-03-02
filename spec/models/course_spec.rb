require 'rails_helper'

RSpec.describe Course, type: :model do

  describe '#attributes' do
    it { should have_db_column(:name) }
    it { should have_db_column(:short_name) }
    it { should have_db_column(:description) }
  end
end