require 'administrate/field/enum'

describe Administrate::Field::Enum do
  describe '#to_partial_path' do
    it 'returns a partial based on the page being rendered' do
      page = :show
      field = Administrate::Field::Enum.new(:status, 'status', page)

      path = field.to_partial_path

      expect(path).to eq("/fields/enum/#{page}")
    end
  end
end
