class ReportController < ApplicationController
  layout false

  def index
    @reports = Report.sorted
  end

  def show
  end

  def new
    @report = Report.new
    #@reports = Report.sorted
  end

  def create
    #instantiate a new object using form parameters
    @report = Report.new(report_params)
    #if save succeeds, redirect to the index actions
    if @report.save
      redirect_to(:action => 'index')
    else
      #if save fails, redisplay the form so user can fix problems
      render('new')
    end
  end

  private
  def report_params
    params.require(:report).permit(:first_name, :last_name, :address, :city, :state, :zip_code, :message)
  end

end
