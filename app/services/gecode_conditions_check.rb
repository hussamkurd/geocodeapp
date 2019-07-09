module GecodeConditionsCheck
  module_function

  def check_longlat_within_conditions(lat, long)
    begin
      results = Geocoder.search([lat, long])
      if GecodeConfig::RESTRICTED_COUNTRY_LOCATION.include? results.first.country
        return true, ""
      else
        return false, "The coordinates out of allowed country"
      end
    rescue StandardError => e
      return false, e.message
    end
  end
end
