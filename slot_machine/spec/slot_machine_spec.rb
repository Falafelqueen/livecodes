require_relative "../slot_machine"

def test_scenario(array, expected_score)
  it "returns #{expected_score} if #{array}" do
    slot = SlotMachine.new(array)
    expect(slot.score).to eq expected_score
  end
end

describe SlotMachine do
  it "returns 0 if all the reels are different" do
    slot = SlotMachine.new(["cherry", "joker", "seven"])
    expect(slot.score).to eq 0
  end

  test_scenario(["joker","joker","joker"], 50)
  test_scenario(["star","star","star"], 40)
  test_scenario(["bell","bell","bell"], 30)
  test_scenario(["seven","seven","seven"], 20)
  test_scenario(["cherry","cherry","cherry"], 10)
  test_scenario(["joker","star","star"], 20)
  test_scenario(["joker","bell","bell"], 15)
  test_scenario(["joker","seven","seven"], 10)
  test_scenario(["joker","cherry","cherry"], 5)

  it "#play returns an array of 3 random reels" do
    slot = SlotMachine.new
    slot.play
    expect(slot.reels.size).to eq 3
  end
end
