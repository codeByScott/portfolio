require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  
  def setup
    @user = users(:michael)
    @article = @user.articles.build(title: "Example Article", 
                                    text: "Lorem Ipsum")
  end

  test "should be valid" do
    assert @article.valid?
  end

  test "user id should be present" do
    @article.user_id = nil
    assert_not @article.valid?
  end

  test "content should be present" do
    @article.text = "  "
    assert_not @article.valid?
  end
end