# frozen_string_literal: true

# Sample hash
my_hash = {
  'first_level' => {
    'second_level' => {
      'target_key' => 'initial_value'
    }
  }
}

# Array of keys
keys_array = %w[first_level second_level target_key]

# Access the nested key using the array of keys and set a new value
current_hash = my_hash
last_key = keys_array.pop

keys_array.each do |key|
  current_hash = current_hash[key]
end

current_hash[last_key] = 'new_value'

# Print the updated hash
puts my_hash.inspect

test = {
  'A' => {
    'B' => {
      'D' => {
        'F' => {}
      },
      'E' => {}
    },
    'C' => {}
  }
}

new_test = test
new_test['D'] = { 'H' => {} }
puts test.inspect
