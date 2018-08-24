require 'test_helper'

class TweetTest < ActiveSupport::TestCase
  test "should have a post" do
    tweet = Tweet.new({post: 'this is a post'})
    assert tweet.post
  end

  test "should have a user" do 
    tweet = Tweet.new({user: 'Tom'})
    assert tweet.user
  end

  test "should have date" do 
    tweet = Tweet.new({user: 'Tom', post: 'hey this is my first post'})
    tweet.save
    assert tweet.created_at
  end

  test "should have likes" do 
    tweet = Tweet.new({likes: 2})
    assert tweet.likes
  end

  test "should have dislikes" do 
    tweet = Tweet.new({dislikes: 3})
    assert tweet.dislikes
  end
end
