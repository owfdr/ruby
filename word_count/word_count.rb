require 'clipboard'

def word_count
    word_count = Clipboard.paste.split.size

    puts "(#{word_count} words)"
end

word_count
