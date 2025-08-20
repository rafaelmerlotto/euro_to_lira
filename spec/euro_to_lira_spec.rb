# frozen_string_literal: true

RSpec.describe EuroToLira do
  it "has a version number" do
    expect(EuroToLira::VERSION).not_to be nil
  end

  it "convert 1 EUR in 1936.27 lire" do
    expect(EuroToLira.to_lira(1)).to eq(1936.27)
  end

  it "Convert 1936.27 lire in 1 EUR" do
    expect(EuroToLira.to_euro(1936.27)).to eq(1)
  end

  it "returns a value for conversion" do
    expect(EuroToLira.to_lira(1)).not_to be_nil
    expect(EuroToLira.to_euro(1)).not_to be_nil
  end

  it "check if value is numeric" do
    expect(EuroToLira.to_lira(1)).to be_a(Numeric)
    expect(EuroToLira.to_euro(1)).to be_a(Numeric)
  end

end
