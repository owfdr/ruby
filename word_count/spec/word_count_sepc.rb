require 'clipboard'
require_relative '../word_count'

RSpec.describe '#world_count' do
  it 'count correct words in a sentence' do
    text = "This is a test string (for RSpec)."
    count = "(7 words)" + "\n"

    Clipboard.copy(text)
    expect { word_count }.to output(count).to_stdout
  end

  it 'count correct words in a paragraph' do
    text = "This is a test string (for RSpec).\nIt has multiple sentences."
    count = "(11 words)" + "\n"

    Clipboard.copy(text)
    expect { word_count }.to output(count).to_stdout
  end
end
