class BillsController < ApplicationController
  before_action :set_bill, only: [:show, :edit, :update, :destroy]

  def index
    if params[:search]
      @bills = Bill.search(params[:search]).paginate(:page => params[:page])
    else
      @bills = Bill.all.paginate(:page => params[:page])
    end
  end

  def show
    @xfile = Bill.where(bill_num: @bill.cross_file).first
  end

  def new
    @bill = Bill.new
  end

  def create
    @bill = Bill.new(bill_params)

    respond_to do |format|
      if @bill.save
        format.html { redirect_to @bill, notice: 'Bill was successfully created.' }
        format.json { render :show, status: :created, location: @bill }
      else
        format.html { render :new }
        format.json { render json: @bill.errors, status: :unprocessable_entity }
      end
    end
  end

  def update

  end

  def destroy

  end

  private
    def set_bill
      @bill = Bill.find(params[:id])
    end

    def bill_params
      params.permit(:bill, :description, :vip, :category)
    end
end
