class TweetsController < ApplicationController
  before_action :set_user

  def index
    @tweets = @user.tweets
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    @tweet.user = @user

    if @tweet.save
      redirect_to user_tweets_path(@user), notice: 'Tweet was successfully created.'
    else
      render :new 
    end
  end

  def destroy
    @tweet.destroy
    respond_to do |format|
      format.html { redirect_to tweets_url, notice: 'Tweet was successfully destroyed.' }
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:user_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tweet_params
      params.require(:tweet).permit(:content)
    #  params.require(:tweet).permit(:user_id)
    end
end
