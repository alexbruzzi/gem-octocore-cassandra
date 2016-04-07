require 'cequel'

module Octo
  class AppLogout
    include Cequel::Record

    belongs_to :enterprise, class_name: 'Octo::Enterprise'

    key :created_at, :timestamp
    key :userid, :bigint

    column :customid, :uuid, :index => true
  end
end
