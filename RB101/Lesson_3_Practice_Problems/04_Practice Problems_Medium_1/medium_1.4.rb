# RB101 Lesson 3: Practice Problems - Medium 1.4

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# rollingbuffer1 modifies the input buffer directly. 2 does not modify the input arguement
# outside the method