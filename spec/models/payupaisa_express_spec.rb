require 'spec_helper'

describe Spree::Gateway::PayupaisaExpress do
  let(:gateway) { Spree::Gateway::PayupaisaExpress.create!(name: "PayupaisaExpress", :environment => Rails.env) }

  end
end
