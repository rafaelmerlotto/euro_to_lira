# frozen_string_literal: true

RSpec.describe EuroToLira do
  it "has a version number" do
    expect(EuroToLira::VERSION).not_to be nil
  end

  it "converts back and forth between euro and lira" do
    value = 123.45
    lira = EuroToLira.to_lira(value)
    euro = EuroToLira.to_euro(lira)
    expect(euro).to be_within(0.01).of(value)
  end
  
  describe ".to_lire" do
    it "converts 1 EUR in 1936.27 lire" do
      expect(EuroToLira.to_lira(1)).to eq(1936.27)
    end

    it "returns a value for conversion" do
      expect(EuroToLira.to_lira(1)).not_to be_nil
    end

    it "check if value is numeric" do
      expect(EuroToLira.to_lira(1)).to be_a(Numeric)
    end

    it "raises error for non-numeric inputs" do
      expect { EuroToLira.to_lira("abc") }.to raise_error(ArgumentError)
      expect { EuroToLira.to_lira("1") }.to raise_error(ArgumentError)
      expect { EuroToLira.to_lira(nil) }.to raise_error(ArgumentError)
    end
  end

  describe ".to_euro" do
    it "converts 1936.27 lire in 1 EUR" do
      expect(EuroToLira.to_euro(1936.27)).to eq(1)
    end

    it "returns a value for conversion" do
      expect(EuroToLira.to_euro(1)).not_to be_nil
    end
  
    it "check if value is numeric" do
      expect(EuroToLira.to_euro(1)).to be_a(Numeric)
    end

    it "raises error for non-numeric inputs" do
      expect { EuroToLira.to_euro("abc") }.to raise_error(ArgumentError)
      expect { EuroToLira.to_euro("1936.27") }.to raise_error(ArgumentError)
      expect { EuroToLira.to_euro(nil) }.to raise_error(ArgumentError)
    end
  end
  
end
