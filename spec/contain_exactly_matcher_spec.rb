RSpec.describe 'contain_exactly matcher' do
    subject { [1, 2, 3] }

    context 'long form syntax' do
        it 'should check the presence of elements' do
            expect(subject).to contain_exactly(1, 2, 3)
            expect(subject).to contain_exactly(3, 2, 1)
            expect(subject).to contain_exactly(3, 1, 2)

            # expect(subject).to contain_exactly(3, 1)
            # expect(subject).to contain_exactly(2, 1)
        end
    end

    it { is_expected.to contain_exactly(1, 2, 3) }
    it { is_expected.to contain_exactly(3, 2, 1) }
end
