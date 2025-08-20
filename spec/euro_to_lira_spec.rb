# frozen_string_literal: true

RSpec.describe EuroToLira do
  it "has a version number" do
    expect(EuroToLira::VERSION).not_to be nil
  end
  
  describe ".to_lire" do
    it "convert 1 EUR in 1936.27 lire" do
      expect(EuroToLira.to_lira(1)).to eq(1936.27)
    end

    it "returns a value for conversion" do
      expect(EuroToLira.to_lira(1)).not_to be_nil
    end

    it "check if value is numeric" do
      expect(EuroToLira.to_lira(1)).to be_a(Numeric)
    end
  end

  describe ".to_euro" do
    it "Convert 1936.27 lire in 1 EUR" do
      expect(EuroToLira.to_euro(1936.27)).to eq(1)
    end

    it "returns a value for conversion" do
      expect(EuroToLira.to_euro(1)).not_to be_nil
    end
  
    it "check if value is numeric" do
      expect(EuroToLira.to_euro(1)).to be_a(Numeric)
    end
  end
  
end
