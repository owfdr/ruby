require 'clipboard'

def create_numbered_list range = nil
  if range == nil
    print "how many: "
    range = gets.chomp.to_i
  end

  list = (1..range).map { |i| "#{i}. " }
  puts list

  Clipboard.copy(list.join("\n"))
  puts "(copied to clipboard ✓)"
end

create_numbered_list
