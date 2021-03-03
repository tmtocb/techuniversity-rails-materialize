require 'rails_helper'

RSpec.describe Student, type: :model do

  describe '#attributes' do
    it { should have_db_column(:name) }
    it { should have_db_column(:email) }
    it { should have_db_column(:encrypted_password) }
  end

  describe '#validations' do

    describe '.length' do
      it { should validate_length_of(:password).is_at_least(6).is_at_most(128) }
      it { should validate_length_of(:name).is_at_least(5).is_at_most(50) }
    end

    describe '.presence' do
      it { should validate_presence_of(:name) }
      it { should validate_presence_of(:email) }
      it { should validate_presence_of(:password) }
    end 
  end
end
