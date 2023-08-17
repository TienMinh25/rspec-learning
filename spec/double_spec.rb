RSpec.describe 'a random double' do
    it 'only allows defined methods to be invoked' do
        # stunman = double("Mr. Danger", fall_off_ladder: "Ouch", light_on_fire: true)
        # expect(stunman.fall_off_ladder).to eq("Ouch")
        # expect(stunman.light_on_fire).to eq(true)
    
        # stunman = double("Mr. Danger")
        # allow(stunman).to receive(:fall_off_ladder).and_return("Ouch")
        # expect(stunman.fall_off_ladder).to eq("Ouch")
    
        stunman = double("Mr. Danger")
        allow(stunman).to receive_messages(fall_off_ladder: "ouch", light_on_fire: true)
        expect(stunman.fall_off_ladder).to eq("ouch")
        expect(stunman.light_on_fire).to eq(true)
    end
end
