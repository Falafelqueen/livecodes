require_relative "../citizen"

describe Citizen do
  it "has a first name"  do
    citizen = Citizen.new("lucia","h",18)
    expect(citizen.first_name).to eq "lucia"
  end

  it "has a last name"  do
    citizen = Citizen.new("lucia","h",18)
    expect(citizen.last_name).to eq "h"
  end

  it "has a age"  do
    citizen = Citizen.new("lucia","h",18)
    expect(citizen.age).to eq 18
  end

  it "#can_vote? returns true if citizen is older or equal than 18" do
    citizen = Citizen.new("lucia","h",18)
    expect(citizen.can_vote?).to eq true
  end

  it "#can_vote? returns false if citizen is younger than 18" do
    citizen = Citizen.new("lucia","h",17)
    expect(citizen.can_vote?).to eq false
  end

  it "#full_name returns computed first and last name" do
    citizen = Citizen.new("lucia","h",17)
    expect(citizen.full_name).to eq "Lucia H"
  end
end
