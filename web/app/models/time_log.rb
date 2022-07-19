# frozen_string_literal: true

class TimeLog < ApplicationRecord
  STATUS_PENDING = 'pending'
  STATUS_BILLED = 'billed'
  
  attribute :status, default: STATUS_PENDING
end