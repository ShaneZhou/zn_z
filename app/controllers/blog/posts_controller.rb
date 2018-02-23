module Blog
  class PostsController < ApplicationController
    helper_method :post

    def show; end

    private

    def post
      @post ||= Blog::Post.find_by!(id: post_id).to_json
    end

    def post_id
      @post_id ||= params.require(:id)
    end
  end
end
