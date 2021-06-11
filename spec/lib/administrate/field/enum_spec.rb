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

  describe '#option_filter' do
    it 'returns a supplied option_filter Proc' do
      page = :form
      option_filter = Proc.new { |option| option != 'x' }
      field = Administrate::Field::Enum.with_options(option_filter: option_filter)
                                       .new(:status, 'status', page)

      expect(field.option_filter).to eq(option_filter)
    end

    it 'returns a no-op filter Proc by default' do
      page = :form
      field = Administrate::Field::Enum.new(:status, 'status', page)

      expect(field.evaluator.call).to be_truthy
    end
  end

  describe '#filtered_options' do
    it 'returns array of filtered arrays' do
      page = :form
      options = ['I', 'Am', 'Groot']
      option_filter = Proc.new { |option| option != 'Am' }
      field = Administrate::Field::Enum.with_options(option_filter: option_filter)
                                       .new(:status, 'status', page)

      expect(field.filtered_options(options)).to eq([['I', 'I'], ['Groot', 'Groot']])
    end
  end
end
