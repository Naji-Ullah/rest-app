module Api
  module V1
    class DashboardController < BaseController
      def show
        render json: {
          email: current_user.email,
          name: current_user.name,
          address: current_user.address,
          role: current_user.role
        }, status: :ok
      end
    end
  end
end
