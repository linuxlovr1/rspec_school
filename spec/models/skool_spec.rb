require 'rails_helper'

RSpec.describe Skool, type: :model do
  describe 'who is the teacher' do 
    it 'returns the name of the teacher' do 
      skool = Skool.create(name: 'harvard', teachers: 'Yoda')
      expect(skool.teachers_name).to eq('Yoda')
    end
  end

  describe 'validations' do 
    it { should validate_presence_of :name}
  end
end
