# 1.
# - Create a double with the name "Database Connection". 
# - The double should have a method called connect that returns the value true.
# - The double also have a method called disconnect that returns the value "Goodbye".
# - The double's methods should be assigned in the initial invocation of the double method.
# - Write two expectations, one for connect and one for disconnect, that confirms the return 
# value of each.
# - Assign the double to the variable db.

RSpec.describe 'doubles' do
  it "tests the db double to recieve and return specified methods and values " do
    db = double("Database Connection")
    allow(db).to receive_messages(connect: true, disconnect: "Goodbye")
    expect(db.connect).to eq(true)
    expect(db.disconnect).to eq("Goodbye")
  end
end

# 2.
# - Create a double with the name "File System". Assign the double to the variable fs.
# - Using the allow method, give the double a read method that returns the value 
# "Romeo and Juliet".
# - Using the allow method, give the double a write method that returns the value false.

RSpec.describe 'doubles' do
  it "tests the fs double to recieve and return specified methods and values " do
    fs = double("File System")
    allow(fs).to receive_messages(read: "Romeo and Juliet", write: false)
    expect(fs.read).to eq("Romeo and Juliet")
    expect(fs.write).to eq(false)
  end
end          