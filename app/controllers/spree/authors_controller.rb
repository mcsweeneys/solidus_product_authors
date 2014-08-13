class Spree::AuthorsController < Spree::StoreController

  rescue_from ActiveRecord::RecordNotFound, with: :render_404

  respond_to :html

  def show
    @author = Spree::Author.find_by_permalink!(params[:id])
    return unless @author

    @searcher = Spree::Config.searcher_class.new(params.merge(author: @author.id))
    @products = @author.products.includes(:taxons).reject {|p| p.taxons.empty?}

    respond_with(@author)
  end
end
