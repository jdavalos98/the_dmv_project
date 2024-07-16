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

  def register_vehicle(vehicle)
    return nil unless @services.include?('Vehicle Registration')

    if vehicle.antique?
      vechicle.plate_type = :antique
      @collected_fees += 25
    elsif vehicle.electric_vehicle?
      vehicle.plate_type = :ev
      @collected_fees += 200
    else
      vehicle.plate_type = :regular
      @collected_fees += 100
    end
    vehicle.registration_date = Date.today
    @registered_vehicles << vehicle
    @registered_vehicles
  end
end
