class ShopsController < BaseController
  layout 'darkswarm'

  before_filter :enable_embedded_shopfront

  def index
  	@enterprises = Enterprise.search(params[:search])
    # @enterprises = ShopsListService.new.open_shops
  end

  private
  	def shops_params
  		params.require(:shops).permit(:name, :enterprise_id, :search)
  	end
end
