RSpec.describe Array do
    subject(:sally) do
        [2, 3]
    end

    it 'should has two elements' do
        expect(sally.length).to eq(2)
        sally.pop()
        expect(sally.length).to eq(1)
    end

    it 'should has two elements as origin initialize' do
        expect(sally.length).to eq(2)
    end
end
