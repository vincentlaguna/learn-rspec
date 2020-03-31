# Assignment 8: Predicate, all and be matchers

# 1. What is an alternate way to write the assertion below?

# expect({}.empty?).to be(true)

# answer:

RSpec.describe 'predicate matcher' do
  it 'asserts to be empty' do
    expect({}).to be_empty
  end
end

# Write an assertion that validates that every element in the array [10, 20, 30] is even.

RSpec.describe 'predicate matcher - all' do
  it 'asserts all items are even' do
    expect([10, 20, 30]).to all(be_even)
  end
end

# Write an assertion that validates that every element in the array [0, 1, 2] is greater than or equal to 0.

RSpec.describe 'predicate matcher using comparison operator' do 
  it 'asserts all items to be greater than or equal to 0' do
    expect([0, 1, 3]).to all(be >= 0)
  end
end

# Which of the values below are truthy and which are falsy? Submit your answer as two organized lists.

# "hello": truthy

# false: falsy

# 0: truthy

# -10: truthy

# []: truthy

# 99.99: truthy

# :hello: truthy

# true: truthy

# nil: falsy

# [1, 2, 3]: truthy