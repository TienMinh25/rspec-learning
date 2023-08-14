RSpec.shared_context 'common' do
    before do
        @foods = []
    end

    def some_helper_method
        5
    end

    let(:some_variable) { [1,2,3] }
end

RSpec.describe 'first example group' do
    include_context 'common'

    it 'can use outside instace variables' do
        expect(@foods.size).to eq(0)
        @foods << 'Sushi'
        expect(@foods.size).to eq(1)
    end

    it 'can reuse instance variables across different examples' do
        expect(@foods.size).to eq(0)
    end
end

RSpec.describe 'second example group' do
    include_context 'common'

    it 'use outer let variable' do
        expect(some_variable.length).to eq(3)
        expect(some_variable).to eq([1,2,3])
    end

    it 'use helper method' do
        expect(some_helper_method).to eq(5)
    end

end
