RSpec.describe 'nested hooks' do
  before :context do
    puts 'OUTER Before context'
  end

  before :example do
    puts "OUTER Before example"
  end

  after :example do
    puts "OUTER After example"
  end

  it 'does basic math' do
    expect(1 + 1).to eq(2)
  end

  context 'with condition A' do
    before :context do
      puts 'INNER Before context'
    end

    before :example do
      puts "INNER Before example"
    end

    after :example do
      puts "INNER After example"
    end

    it 'does some more basic math' do
      expect(1 + 1).to eq(2)
    end

    it 'does subtraction as well' do
      expect(1 - 1).to eq(0)
    end
  end
end