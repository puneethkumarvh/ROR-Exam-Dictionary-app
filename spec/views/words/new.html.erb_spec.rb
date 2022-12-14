require 'rails_helper'

RSpec.describe "words/new", type: :view do
  before(:each) do
    assign(:word, Word.new(
      word_name: "MyString",
      word_def: "MyString"
    ))
  end

  it "renders new word form" do
    render

    assert_select "form[action=?][method=?]", words_path, "post" do

      assert_select "input[name=?]", "word[word_name]"

      assert_select "input[name=?]", "word[word_def]"
    end
  end
end
