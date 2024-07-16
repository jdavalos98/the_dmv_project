class Facility
  attr_reader :name, :address, :phone, :services, :registered_vehicles, :collected_fees

  def initialize(dmv)
    @name = dmv[:name]
    @address = dmv[:address]
    @phone = dmv[:phone]
    @services = []
    @registered_vehicles = []
    @collected_fees = 0 
  end

  def add_service(service)
    @services << service
  end

end
