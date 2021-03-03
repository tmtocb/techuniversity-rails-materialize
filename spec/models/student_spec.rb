require 'rails_helper'

RSpec.describe Student, type: :model do

  describe '#attributes' do
    it { should have_db_column(:name) }
    it { should have_db_column(:email) }
    it { should have_db_column(:encrypted_password) }
  end
end