require './lib/registrant'

RSpec.describe Registrant do 
  before(:each) do 
    @registrant_1 = Registrant.new('Bruce', 18, true)
    @registrant_2 = Registrant.new('Penny', 15)
  end
  describe '#initalize' do 
  it 'exists and has attributes' do 
    expect(@registrant_1).to be_an_instance_of(Registrant)
    expect(@registrant_1.name).to eq("Bruce")
    expect(@registrant_1.age).to eq(18)
    expect(@registrant_1.permit?).to eq(true)
    expect(@registrant_1.license_data). to eq({ written: false, license: false, renewed: false})
  end
end
