class ProfessionWrestler
    attr_reader :name, :finishing_move

    def initialize(name, finishing_move) 
        @name = name
        @finishing_move = finishing_move
    end
end

RSpec.describe 'have_attributes matcher' do
    context ProfessionWrestler.new("Stone Cold Steve Austin", "Stunner") do
        it "checks for object attribute and proper values" do
            expect(subject).to have_attributes(name: "Stone Cold Steve Austin")
            expect(subject).to have_attributes(finishing_move: "Stunner")
            expect(subject).to have_attributes(finishing_move: "Stunner", name: "Stone Cold Steve Austin")
        end

        it { is_expected.to have_attributes(name: "Stone Cold Steve Austin") }
        it { is_expected.to have_attributes(finishing_move: "Stunner") }
    
    end

end
