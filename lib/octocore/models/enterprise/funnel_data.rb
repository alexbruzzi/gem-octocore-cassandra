require 'cequel'
require 'octocore/record'

module Octo

  # Stores the data for funnels
  class FunnelData
    include Cequel::Record
    include Octo::Record

    belongs_to :enterprise, class_name: 'Octo::Enterprise'

    key :funnel_slug, :text

    key :ts, :timestamp
    list :value, :float

  end
end

