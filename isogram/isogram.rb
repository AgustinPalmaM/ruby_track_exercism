# Write your code for the 'Isogram' exercise in this file. Make the tests in
# `isogram_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/isogram` directory.

module Isogram
  def self.isogram?(input)
    new_input = input.downcase.gsub(/[- ]/, '')
    new_input.length == new_input.split('').uniq.length
  end
end
