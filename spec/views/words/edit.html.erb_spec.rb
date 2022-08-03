require 'rails_helper'

RSpec.describe "words/edit", type: :view do
  before(:each) do
    @word = assign(:word, Word.create!(
      word_name: "MyString",
      word_def: "MyString"
    ))
  end

  it "renders the edit word form" do
    render

    assert_select "form[action=?][method=?]", word_path(@word), "post" do

      assert_select "input[name=?]", "word[word_name]"

      assert_select "input[name=?]", "word[word_def]"
    end
  end
end
