class Spree::Admin::ProductAuthorsController < Spree::Admin::BaseController

  respond_to :html, :json, :js
  
  def index
    redirect_to action: "selected"
  end

  def create
    @author = Spree::Author.build(params[:author])
    if @author.save
      respond_with(@author) do |format|
        format.json {render json: @author.to_json }
      end
    else
      flash[:error] = I18n.t('errors.messages.could_not_create_author')
      respond_with(@author) do |format|
        format.html { redirect_to admin_authors_url }
      end
    end
  end

  def edit
    @author = Spree::Author.find_by_permalink(params[:id])

    respond_with(:admin, @author) 
  end

  def update
    @author = Spree::Author.find_by_permalink(params[:id])

    if @author.update_attributes(params[:author])
      flash[:notice] = flash_message_for(@author, :successfully_updated)
    end
    
    respond_with(@author) do |format|
      format.html {redirect_to edit_admin_author_url(@author) }
      format.json {render json: @author.to_json }
    end
  end

  def destroy
    @author = Spree::Author.find_by_permalink(params[:id])
    @author.destroy
    respond_with(@author) { |format| format.json { render json: '' } }
  end

  def selected
    @product = load_product
    @authors = @product.authors

    respond_with(:admin, @authors)
  end

  def available
    @product = load_product
    @authors = params[:q].blank? ? [] : Spree::Author.where('lower(name) LIKE ?', "%#{params[:q].mb_chars.downcase}%")
    @authors.delete_if { |author| @product.authors.include?(author) }

    respond_with(:admin, @authors)
  end

  def remove
    @product = load_product
    @author = Spree::Author.find_by_permalink(params[:id])
    @product.authors.delete(@author)
    @product.save
    @authors = @product.authors

    respond_with(@author) { |format| format.js { render_js_for_destroy } }
  end

  def select
    @product = load_product
    @author = Spree::Author.find_by_permalink(params[:id])
    @product.authors << @author
    @product.save
    @authors = @product.authors

    respond_with(:admin, @authors)
  end

  def batch_select
    @product = load_product
    @authors = params[:author_ids].map{|id| Spree::Author.find_by_permalink(id)}.compact
    @product.authors = @authors
    @product.save
    redirect_to selected_admin_product_authors_url(@product)
  end

  private

  def load_product
    Spree::Product.with_deleted.friendly.find(params[:product_id])
  end

end
