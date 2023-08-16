# falsy values --- false, nil
# truthy values --- everything else

RSpec.describe 'be matchers' do
    it 'can be test for truthiness' do
        expect([5]).to be_truthy
        expect([]).to be_truthy
        expect("").to be_truthy
        expect("Hello").to be_truthy
        expect(3.14).to be_truthy
        expect(3).to be_truthy
        expect({}).to be_truthy
        expect({a: 1}).to be_truthy
    end

    it 'can be test for falsiness' do
        expect(nil).to be_falsy
        expect(false).to be_falsy
    end

    it 'can be test for nil' do
        expect(nil).to be_nil
        my_hash = { a: 1 }
        expect(my_hash[:b]).to be_nil
    end
end
