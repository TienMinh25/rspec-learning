RSpec.describe 'start_with and end_with matchers' do
    context 'caterpillar' do
        it 'should check for substring at the beginning or end' do
            expect(subject).to start_with('cat')
            expect(subject).to end_with('pillar')
        end

        it { is_expected.to start_with('cat') }
        it { is_expected.to end_with('pillar') }
    end

    context [:a, :b, :c, :d] do
        it 'should check for elements at beginning or end of the array' do
            expect(subject).to start_with(:a)
            expect(subject).to start_with(:a, :b, :c)
            expect(subject).to start_with(:a, :b)
            expect(subject).to end_with(:d)
            expect(subject).to end_with(:c, :d)
            expect(subject).to end_with(:b, :c, :d)
        end

        it { is_expected.to start_with(:a) }
        it { is_expected.to start_with(:a, :b) }
        it { is_expected.to end_with(:d) }
        it { is_expected.to end_with(:c, :d) }
    end
end
