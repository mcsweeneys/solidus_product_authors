module Spree
  module Admin
    class AuthorsController < ResourceController
      def show
        redirect_to action: :edit
      end

      def index
        session[:return_to] = request.url
        respond_with(@collection)
      end

      def find_resource
        result = Spree::Author.find_by_permalink(params[:id])
        unless result.present?
          result = Spree::Author.all.select { |author| author.to_param == params[:id] }.first
         end
        result
      end

      protected

      def collection
        return @collection if @collection.present?
        params[:q] ||= {}
        params[:q][:deleted_at_null] ||= '1'

        params[:q][:s] ||= 'name asc'

        @search = super.ransack(params[:q])
        @collection = @search.result
                             .page(params[:page])
                             .per(Spree::Config[:admin_products_per_page])

        @collection
       end
    end
  end
end
