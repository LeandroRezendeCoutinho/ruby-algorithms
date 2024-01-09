# frozen_string_literal: true

# walkt through the indexes and for each value put ir inside the index and check if the value
# is and index too and repeat the process
require 'debug'

# rubocop:disable Style/Documentation, Lint/MissingCopEnableDirective
class TreeBuilder
  attr_accessor :result

  def initialize
    @dependencies = {
      'A' => %w[B C],
      'B' => %w[D E],
      'C' => [],
      'D' => ['F'],
      'E' => [],
      'F' => []
    }
    @result = {}
  end

  def call
    # binding.break
    @dependencies.each_key do |k|
      process(k)
    end
  end

  def print_result
    puts @result
  end

  private

  def process(key)
    # binding.break
    node = {}
    values = @dependencies[key]
    values.each do |v|
      node[key] = { v => process(v) } if @dependencies.key?(v)
    end
  end
  node
end

p = TreeBuilder.new
p.call
p.print_result

# {
#   "A" => {
#     "B" => {
#       "D" => {
#         "F" => {}
#       },
#       "E" => {}
#     },
#     "C" => {}
#   }
# }
