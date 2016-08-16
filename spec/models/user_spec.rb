require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Associations' do
    it { expect(subject).to belong_to(:something_that_does_not_exist) }
  end

  context 'Validations' do
  end
end
