RSpec.describe Hash do
    # let(:subject) { {} }
    # is behind scenes of subject implicit
    it 'should start off empty' do
        expect(subject.length).to eq(0)
        subject[:some_key] = 'Some value'
        expect(subject.length).to eq(1)
    end

    it 'is isolated between examples' do
        expect(subject.length).to eq(0)
    end

end
