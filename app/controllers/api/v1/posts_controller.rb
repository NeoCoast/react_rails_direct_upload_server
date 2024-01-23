module Api
  module V1
    class PostsController < ApiController
      def create
        @post = Post.build(post_params)

        if @post.save
          render status: :created
        else
          render json: { errors: @post.errors.full_messages }, status: :unprocessable_entity
        end
      end

      def index
        @posts = Post.all
      end

      private

      def post_params
        params.require(:post).permit(media_files: [])
      end
    end
  end
end
