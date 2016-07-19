module Awspec::Type
  class Cloudtrail < Base
    aws_resource Aws::CloudTrail

    def initialize(id)
      super
      @resource_via_client = find_trail(id)
      @id = @resource_via_client.name if @resource_via_client
    end

    def has_global_service_events_included?
      @resource_via_client.include_global_service_events
    end

    def multi_region_trail?
      @resource_via_client.is_multi_region_trail
    end

    def has_log_file_validation_enabled?
      @resource_via_client.log_file_validation_enabled
    end

    def logging?
      is_logging?(@id)
    end
  end
end
