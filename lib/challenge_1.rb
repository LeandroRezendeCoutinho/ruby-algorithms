# frozen_string_literal: true

require 'debug'

class TreeBuilder # rubocop:disable Style/Documentation
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
    @result_keys = []
  end

  def call
    @dependencies.each_key do |k|
      process(k)
    end
  end

  def print_result
    puts @result
  end

  private

  def process(key, _parent = nil) # rubocop:disable Metrics/MethodLength
    # binding.break
    values = @dependencies[key]

    values.each do |v|
      obj = find_hash_object(key)
      if obj&.key?(key)
        obj[key].merge!({ v => {} })
      else
        @result[key] = { v => {} }
      end
      @result_keys |= [key]
      process(v, key)
    end
    @result_keys |= [key]
  end

  def find_hash_object(_key)
    obj = nil
    obj = @result.dig(*@result_keys) if @result_keys.length.positive?
    obj
  end
end

p = TreeBuilder.new
p.call
p.print_result

# Expected output
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
#
# Result
{ 'A' => { 'C' => {} }, 'B' => { 'E' => {} }, 'D' => { 'F' => {} } }
