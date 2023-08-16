RSpec.describe 'not_to method' do
    it 'checks for inverse of a matcher' do
        expect(5).not_to eq(3)
        expect([1,2,3]).not_to equal([1,2,3])
        expect(10).not_to be_odd
        expect([1,2,3]).not_to be_empty

        expect(nil).not_to be_truthy
        expect { 11 / 3 }.not_to raise_error

        expect([:a, :b, :c]).not_to include(:d)
    
    end

end
