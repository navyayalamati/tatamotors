class EnquiryFormsController < ApplicationController
  before_action :set_enquiry_form, only: [:show, :edit, :update, :destroy]

  # GET /enquiry_forms
  # GET /enquiry_forms.json
  def index
    @enquiry_forms = EnquiryForm.all
  end

  # GET /enquiry_forms/1
  # GET /enquiry_forms/1.json
  def show
  end

  # GET /enquiry_forms/new
  def new
    @enquiry_form = EnquiryForm.new
  end

  # GET /enquiry_forms/1/edit
  def edit
  end

  # POST /enquiry_forms
  # POST /enquiry_forms.json
  def create
    @enquiry_form = EnquiryForm.new(enquiry_form_params)

    respond_to do |format|
      if @enquiry_form.save
        format.html { redirect_to @enquiry_form, notice: 'Enquiry form was successfully created.' }
        format.json { render :show, status: :created, location: @enquiry_form }
      else
        format.html { render :new }
        format.json { render json: @enquiry_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enquiry_forms/1
  # PATCH/PUT /enquiry_forms/1.json
  def update
    respond_to do |format|
      if @enquiry_form.update(enquiry_form_params)
        format.html { redirect_to @enquiry_form, notice: 'Enquiry form was successfully updated.' }
        format.json { render :show, status: :ok, location: @enquiry_form }
      else
        format.html { render :edit }
        format.json { render json: @enquiry_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enquiry_forms/1
  # DELETE /enquiry_forms/1.json
  def destroy
    @enquiry_form.destroy
    respond_to do |format|
      format.html { redirect_to enquiry_forms_url, notice: 'Enquiry form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enquiry_form
      @enquiry_form = EnquiryForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def enquiry_form_params
      params.require(:enquiry_form).permit(:name, :address, :email, :mobile, :city, :zip_code, :vehicle_type, :query)
    end
end
