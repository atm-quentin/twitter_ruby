require 'test_helper'

class TweetTest < ActiveSupport::TestCase
   test "tweet destroyed if user destroyed" do
     user = User.new(nom:"boby")
     tweet = Tweet.new(content:"contn")
     tweet.user = user
     user.destroy
     assert tweet.save
   end
end
