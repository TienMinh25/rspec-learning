class ProgrammingLanguage
  attr_reader :name

  def initialize(name = 'Ruby')
    @name = name
  end
end

RSpec.describe ProgrammingLanguage do
  let(:language) do
    ProgrammingLanguage.new('Python')
  end

  it 'should store the name of the language' do
    expect(language.name).to eq('Python')
  end

  context 'with no argument' do
    let(:language) do
      ProgrammingLanguage.new
    end

    it 'should default to Ruby as the name' do
      expect(language.name).to eq('Ruby')
    end
  end
end