require_relative "../credit_card_checker"
# Rspec

describe "#credit_card_checker" do
  it "return 'Invalid credit card number' if the input is an empty string" do
    actual = credit_card_checker("")
    expected = 'Invalid credit card number'
    expect(actual).to eq expected
  end

  it "return 'Invalid credit card number' if it has less than 16 digits" do
    actual = credit_card_checker("123412345")
    expected = 'Invalid credit card number'
    expect(actual).to eq expected
  end

  it "return 'Invalid credit card number' if it has more than 16 digits" do
    actual = credit_card_checker("1234 12345 1234 1234")
    expected = 'Invalid credit card number'
    expect(actual).to eq expected
  end

  it "return 'Invalid credit card number' if it has some non-numeric characters" do
    actual = credit_card_checker("1234-1234-1234-1234")
    expected = 'Invalid credit card number'
    expect(actual).to eq expected
  end

  context "starts with 4" do
    it "returns 'Valid VISA credit card number' if the number has 16 digits (4 groups with spaces)" do
      actual = credit_card_checker("4234 1234 1234 1234")
      expected = 'Valid VISA credit card number'
      expect(actual).to eq expected
    end

    it "returns 'Valid creadit card number' if the number has 16 digits no spaces" do
      expect(credit_card_checker("4234123412341234")).to eq 'Valid VISA credit card number'
    end

    it "returns 'Valid creadit card number' if the number has 16 digits lot of strange spaces" do
      actual = credit_card_checker("42 3412341   2341234")
      expected = 'Valid VISA credit card number'
      expect(actual).to eq expected
    end
  end

  context "starts with 5" do
    it "returns 'Valid Mastercard credit card number' if the number has 16 digits (4 groups with spaces)" do
      actual = credit_card_checker("5234 1234 1234 1234")
      expected = 'Valid Mastercard credit card number'
      expect(actual).to eq expected
    end

    it "returns 'Valid Mastercard creadit card number' if the number has 16 digits no spaces" do
      expect(credit_card_checker("5234123412341234")).to eq 'Valid Mastercard credit card number'
    end

    it "returns 'Valid Mastercard creadit card number' if the number has 16 digits lot of strange spaces" do
      actual = credit_card_checker("52 3412341   2341234")
      expected = 'Valid Mastercard credit card number'
      expect(actual).to eq expected
    end
  end

  context "AMEX" do
    it "returns 'Inalid AMEX card' if the number has 15 digits)" do
      actual = advanced_credit_card_checker("3426 666666 55555", "AMEX")
      expected = 'Valid AMEX card'
      expect(actual).to eq expected
    end

    it "returns 'Inalid AMEX card' if the number has 15 digits)" do
      actual = advanced_credit_card_checker("3426-666666-55555", "AMEX")
      expected = 'Valid AMEX card'
      expect(actual).to eq expected
    end

    it "returns 'Invalid AMEX card' if the number has 15 digits(separated by dashes)" do
      actual = advanced_credit_card_checker("3726 666666 55555", "AMEX")
      expected = 'Valid AMEX card'
      expect(actual).to eq expected
    end

    it "returns 'Inalid AMEX card' if the number has more 15 digits)" do
      actual = advanced_credit_card_checker("3726 66666 555555555", "AMEX")
      expected = 'Invalid credit card number'
      expect(actual).to eq expected
    end
  end
end
