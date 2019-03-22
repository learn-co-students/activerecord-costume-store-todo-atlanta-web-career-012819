require_relative 'spec_helper'

describe "CostumeStore" do

  it "has a name" do
    spirit_halloween = CostumeStore.create(
      name: "Spirit Halloween"
    )
    expect(CostumeStore.find_by(name: "Spirit Halloween")).to eq(spirit_halloween)
  end

  it "has a location" do
    abracadabra = CostumeStore.create(
      location: "19 W 21st St"
    )
    expect(CostumeStore.find_by(location: "19 W 21st St")).to eq(abracadabra)
  end

  it "has a costume inventory" do
    adventure = CostumeStore.create(
      costume_inventory: 785
    )
    expect(CostumeStore.find_by(costume_inventory: 785)).to eq(adventure)
  end

  it "has an employee count" do
    rickys = CostumeStore.create(
      name: "Ricky’s", 
      location: "375 Broadway",
      costume_inventory: 650,
      employee_count: 17
    )
    expect(CostumeStore.find_by(employee_count: 17)).to eq(rickys)
  end

  it "knows if it's still in business or permanently closed" do
    CostumeStore.create(
      name: "Frankie", 
      location: "580 Broadway",
      active_status: true
    )
    CostumeStore.create(
      name: "Spirit",
      location: "105 Amsterdam Ave",
      active_status: false      
    )
    expect(CostumeStore.find_by(name: "Frankie").active_status).to eq(true)
    expect(CostumeStore.find_by(name: "Spirit").active_status).to eq(false)
  end

  it "has an opens at" do
    start_time = get_opens_at
    creative = CostumeStore.create(
      name: "Creative Costume Co", 
      opens_at: start_time 
    )
    expect(CostumeStore.find_by(name: "Creative Costume Co").opens_at).to eq(start_time)
  end

  it "has a closing time" do
    end_time = get_closes_at
    ny_costumes = CostumeStore.create(
      name: "New York Costumes", 
      closes_at: end_time 
    )
    expect(CostumeStore.find_by(name: "New York Costumes").closes_at).to eq(end_time)
  end

end
