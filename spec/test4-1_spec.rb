RSpec.describe 'doubles' do
    db = double("Database Connection", { connect: true, disconnect: "Goodbye"})

    expect(db.connect).to eq(true)
    expect(db.disconnect).to eq("Goodbye")
end

RSpec.describe 'doubles-2' do
    fs = double("File System")
    allow(:fs).to receive_messages(read: "Romeo and Juliet", write: false)
end
