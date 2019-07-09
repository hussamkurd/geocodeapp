require "./app/services/gecode_conditions_check.rb"
require "spec_helper"

describe GecodeConditionsCheck do

  it "pass wrong coordinates" do
    status, message = GecodeConditionsCheck.check_longlat_within_conditions("asdasdasd", "sadasdas")
    p message

    expect(status).to eq(false)
  end

  it "pass true coordinates with false country" do
    status, message = GecodeConditionsCheck.check_longlat_within_conditions("48.864716", "2.349014")
    p message
    expect(status).to eq(false)
  end

  it "pass true coordinates with true country" do
    status, message = GecodeConditionsCheck.check_longlat_within_conditions("52.520008", "13.404954")
    p message
    expect(status).to eq(true)
  end
end
