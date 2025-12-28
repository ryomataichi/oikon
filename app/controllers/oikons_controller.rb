class OikonsController < ApplicationController
    def index
        @tweets = Tweet.all
        list = Tweet.active.pluck(:id)
        @url = list.shuffle!.first
    end
end
