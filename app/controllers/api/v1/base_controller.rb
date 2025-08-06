module Api
  module V1
    class BaseController < ActionController::API
      before_action :authenticate_api_request

      private

      def authenticate_api_request
        auth_header = request.headers["Authorization"]
        if auth_header&.start_with?("Bearer ")
          token = auth_header.split("Bearer ").last
          @current_user = User.find_by(api_token: token)
          unless @current_user
            render json: { error: "Invalid or missing token" }, status: :unauthorized
          end
        else
          render json: { error: "Authorization header must include Bearer token" }, status: :unauthorized
        end
      end

      attr_reader :current_user
    end
  end
end
