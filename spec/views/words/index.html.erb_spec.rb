require 'rails_helper'

RSpec.describe "words/index", type: :view do
  before(:each) do
    assign(:words, [
      Word.create!(
        word_name: "Word Name",
        word_def: "Word Def"
      ),
      Word.create!(
        word_name: "Word Name",
        word_def: "Word Def"
      )
    ])
  end

  it "renders a list of words" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Word Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Word Def".to_s), count: 2
  end
end
