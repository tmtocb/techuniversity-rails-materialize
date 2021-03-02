require 'rails_helper'

RSpec.describe Course, type: :model do

  describe '#attributes' do
    it { should have_db_column(:name) }
    it { should have_db_column(:short_name) }
    it { should have_db_column(:description) }
  end

  describe '#validations' do

    describe '.length' do
      it { should validate_length_of(:name).is_at_least(5).is_at_most(50) }
      it { should validate_length_of(:short_name).is_at_least(3).is_at_most(20) }
      it { should validate_length_of(:description).is_at_least(10).is_at_most(300) }
    end

    describe '.presence' do
      it { should validate_presence_of(:name) }
      it { should validate_presence_of(:short_name) }
      it { should validate_presence_of(:description) }
    end 
  end
end