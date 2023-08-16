RSpec.describe 'change matchers' do
    subject { [1,2,3] }

    it 'checks that a method changes object state' do
        # expect { subject.push(4) }.to change { subject.length }.from(3).to(4)

        # o day co nghia la kiem tra su thay doi cua do dai array so voi ban dau la 1 phan tu -> tang len
        expect { subject.push(4); subject.push(5) }.to change { subject.length }.by(2)
    end

    it 'accepts negative arguments' do
        # expect { subject.pop }.to change { subject.length }.from(3).to(2)
        
        expect { subject.pop; subject.pop }.to change { subject.length }.by(-2)
    end
end
