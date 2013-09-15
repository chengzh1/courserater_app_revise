class StaticPagesController < ApplicationController
    def home
        if signed_in?
            @rater = current_user.raters.build
            @feed_items = current_user.feed.paginate(page: params[:page])
        end
    end

  def about
  end

  def contact
  end
end
