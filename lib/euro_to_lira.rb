# frozen_string_literal: true

require_relative "euro_to_lira/version"

module EuroToLira
  class Error < StandardError; end
  
  FIXED_RATE = 1936.27

  def self.to_lira(amount_eur)
    raise ArgumentError, 'Importo non valido' unless amount_eur.is_a?(Numeric)
    (amount_eur * FIXED_RATE).round(2)
  end

  def self.to_euro(amount_lira)
    raise ArgumentError, "Importo non valido" unless amount_lira.is_a?(Numeric)
    (amount_lira / FIXED_RATE).round(2)
  end

end
