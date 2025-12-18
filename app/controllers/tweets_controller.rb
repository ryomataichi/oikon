class TweetsController < ApplicationController
    
    def index
        @tweets = Tweet.all
        list = Tweet.active.pluck(:id)
        @url = list.shuffle!.first
    end

    def show
        @tweet = Tweet.find(params[:id])
        list = Tweet.active.pluck(:id)
        @url = list.shuffle!.first
    end

    def new
    @tweet = Tweet.new
    end

    def create
        tweet = Tweet.new(tweet_params)
        if tweet.save
        redirect_to :action => "index"
        else
        redirect_to :action => "new"
        end
    end

    def edit
    @tweet = Tweet.find(params[:id])
    end

    def destroy
      tweet = Tweet.find(params[:id])
      tweet.destroy
      redirect_to action: :index
    end

    def update
        tweet = Tweet.find(params[:id])
        if tweet.update(tweet_params)
        redirect_to :action => "show", :id => tweet.id
        else
        redirect_to :action => "new"
        end
     end

    def match
        @tweet = Tweet.find(params[:bangou])
        list = Tweet.active.pluck(:id)
        @url = list.shuffle!.first
    end
    
    def leftmatch
        @tweet = Tweet.find(params[:bangou])
        list = Tweet.active.pluck(:id)
        @url = list.shuffle!.first
    end

    private
    def tweet_params
        params.require(:tweet).permit(:name, :year, :profile, :place, :job, :hobby, :active, :image)
    end
end
