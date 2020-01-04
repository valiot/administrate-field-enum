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

  describe '#html_options' do
    it 'returns a hash of :html options' do
      page = :show
      field = Administrate::Field::Enum.with_options(html: { disabled: true, hidden: true, class: 'test' })
                                       .new(:status, 'status', page)

      expect(field.html_options[:disabled]).to be_truthy
      expect(field.html_options[:hidden]).to be_truthy
      expect(field.html_options[:class]).to eq('test')
    end

    it 'is empty by default' do
      page = :show
      field = Administrate::Field::Enum.new(:status, 'status', page)

      expect(field.html_options[:disabled]).to be_falsy
      expect(field.html_options[:hidden]).to be_falsy
      expect(field.html_options[:class]).to be_nil
    end
  end
end
