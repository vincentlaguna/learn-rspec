RSpec.describe Array do
  subject(:sally) {[1, 2]}
  
  it 'caches the object within an example' do
    expect(subject.length).to eq(2)
    subject.pop
    expect(subject.length).to eq(1)
  end
  
  it 'create a new object for a new example' do
    expect(sally).to eq([1, 2])
  end
end
=begin
Create an example group using ​RSpec.describe​ with an argument of ​Array​.

Invoke the ​subject​ method outside of any example.

    Give the subject a name of ​:sally.

    Inside the block, declare a 2-element array with bracket syntax.

Add an example that tests that the ​subject​ has a length of 2. 

Invoke the ​pop method to remove an element from the ​subject​ array. 

In the same example, write another assertion to check that the length of the array is now 1.

In a second, separate example, write an assertion to confirm that ​sally​ is equal to the original array.
=end