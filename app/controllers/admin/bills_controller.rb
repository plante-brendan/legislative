class Admin::BillsController < Admin::BaseController
  before_action :set_bill, only: [:show, :edit, :update, :destroy]

  def index  
    if params[:search]
      @bills = Bill.search(params[:search]).paginate(:page => params[:page]).order(bill_num: :asc)
    else
      @bills = Bill.all.paginate(:page => params[:page]).order(bill_num: :asc)
    end
  end

  def show
    @xfile = Bill.where(bill_num: @bill.cross_file).first
  end

  def new
    @bill = Bill.new
  end

  def edit
    @xfile = Bill.where(bill_num: @bill.cross_file).first
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
    @bill.update(description: params[:description], vip: params[:vip], category: params[:category])
    redirect_to admin_bill_path(@bill)
  end

  def destroy

  end

  def import
    Bill.import(params[:file])
    redirect_to admin_root_path
  end

  private
    def set_bill
      @bill = Bill.find(params[:id])
    end

    def bill_params
      params.permit(:bill, :description, :vip, :category)
    end
end
