class Facility
  attr_reader :name, :address, :phone, :services

  def initialize(dmv)
    @name = dmv[:name]
    @address = dmv[:address]
    @phone = dmv[:phone]
    @services = []
  end

  def add_service(service)
    @services << service
  end
end
