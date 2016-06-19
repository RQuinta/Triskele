class ServiceSalesCounterUpdater

  def initialize(service)
    @service = service
  end

  def update_sales_counter
      @service.sales_counter = total_acquisitions_calculator(@service.acquisitions)
      @service.save
  end
  
  private

  def total_acquisitions_calculator(acquisitions)
      acquisitions.inject(0) {|acc,acquisition| acc + acquisition.slots }
  end

end