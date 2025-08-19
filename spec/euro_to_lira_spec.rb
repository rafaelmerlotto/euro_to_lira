# frozen_string_literal: true

RSpec.describe EuroToLira do
  it "has a version number" do
    expect(EuroToLira::VERSION).not_to be nil
  end

  it "converte 1 EUR in 1936.27 lire" do
    expect(EuroToLira.to_lira(1)).to eq(1936.27)
  end

end
