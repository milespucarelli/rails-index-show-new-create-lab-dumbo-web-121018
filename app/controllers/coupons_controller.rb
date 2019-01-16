class CouponsController < ApplicationController
  def new; end

  def show
    find_coupon
  end

  def index
    @coupons = Coupon.all
  end

  def create
    coupon = Coupon.create(coupon_params)
    redirect_to coupon_path(coupon)
  end

  private

  def find_coupon
    @coupon = Coupon.find(params[:id])
  end

  def coupon_params
    params.require(:coupon).permit(:coupon_code, :store)
  end
end
