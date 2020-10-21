def badge_maker(name)
  badge_string = "Hello, my name is #{name}."
  return badge_string
end

def batch_badge_creator(names_array)
  badge_messages_array = names_array.collect do |name|
    badge_maker(name)
  end
  return badge_messages_array
end

def assign_rooms(speakers_array)
  speakers_array.collect do |speaker|
    "Hello, #{speaker}! You'll be assigned to room #{speakers_array.index(speaker) + 1}!"
  end
end

def printer_helper(array)
  array.each do |element|
    puts element
  end
end

def printer(speakers_array)
  printer_helper(batch_badge_creator(speakers_array))
  printer_helper(assign_rooms(speakers_array))
end
