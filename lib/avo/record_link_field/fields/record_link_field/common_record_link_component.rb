# frozen_string_literal: true
# frozen_string_literal: true

class Avo::RecordLinkField::Fields::RecordLinkField::CommonRecordLinkComponent < ViewComponent::Base
  def initialize(record:, add_via_params:, use_resource:)
    @record = record
    @use_resource = use_resource
    @add_via_params = add_via_params
  end

  def resource_class
    if @use_resource.present?
      Avo.resource_manager.get_resource @use_resource
    else
      Avo.resource_manager.get_resource_by_model_class @record.class
    end
  end

  def resource
    @resource ||= resource_class.new(record: @record)
  end

  def label
    @label ||= resource_class.new(record: @record)&.record_title
  end

  def resource_view_path
    args = {
      record: @record,
      resource: resource,
    }

    if @add_via_params
      args[:via_resource_class] = resource.class.to_s
      args[:via_record_id] = @record.to_param
    end

    helpers.resource_view_path(**args)
  end
end
