# frozen_string_literal: true

# Controller used to provide the API products for the DFC application
module DfcProvider
  module Api
    class ProductsController < ::ActionController::Base
      # To access 'base_url' helper
      include Rails.application.routes.url_helpers

      before_filter :check_authorization,
                    :check_user,
                    :check_enterprise

      respond_to :json

      def index
        products = @enterprise.
          inventory_variants.
          includes(:product, :inventory_items)

        serialized_data = ::DfcProvider::ProductSerializer.
          new(products, base_url).
          serialized_data

        render json: serialized_data
      end

      private

      def check_enterprise
        @enterprise =
          if params[:enterprise_id] == 'default'
            @user.enterprises.first
          else
            @user.enterprises.where(id: params[:enterprise_id]).first
          end

        return if @enterprise.present?

        head :not_found
      end

      def check_authorization
        return if access_token.present?

        head :unprocessable_entity
      end

      def check_user
        @user = authorization_control.process

        return if @user.present?

        head :unauthorized
      end

      def base_url
        "#{root_url}api/dfc_provider"
      end

      def access_token
        request.headers['Authorization'].to_s.split(' ').last
      end

      def authorization_control
        DfcProvider::AuthorizationControl.new(access_token)
      end
    end
  end
end
