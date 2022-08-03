require 'rails_helper'

RSpec.describe "words/show", type: :view do
  before(:each) do
    @word = assign(:word, Word.create!(
      word_name: "Word Name",
      word_def: "Word Def"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Word Name/)
    expect(rendered).to match(/Word Def/)
  end
end
