require 'clipboard'
require_relative '../create_numbered_list'

RSpec.describe '#create_numbered_list' do
    it 'create numbered list' do
        count = 5
        list = "1. \n2. \n3. \n4. \n5. "
        message = "\n(copied to clipboard ✓)\n"

        expect { create_numbered_list(count) }.to output(list + message).to_stdout
        expect(Clipboard.paste).to eql(list)
    end
end
