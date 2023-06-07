# in need of refactor

require 'clipboard'

print "copy whole text and press enter: "
gets

total_word_count = Clipboard.paste.split.size
puts "(#{total_word_count} words)"

accumulated_word_count = 0

while accumulated_word_count < total_word_count
    print "copy each section and press enter: "
    gets

    count = Clipboard.paste.split.size
    accumulated_word_count_word_count += count

    percentage = (count.to_f / total_word_count.to_f * 100)
    prior_percentage = ((accumulated_word_count - count).to_f / total_word_count.to_f * 100)
    accumulated_percentage = (accumulated_word_count.to_f / total_word_count.to_f * 100)

    for range in (0..20)
        if range < (prior_percentage.to_f / 5)
            print "-"
        elsif range >= (prior_percentage.to_f / 5) && range < (accumulated_percentage.to_f / 5)
            print "="
        else
            print "-"
        end
    end

    puts
end

puts "maximun percentage reached"
