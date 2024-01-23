# frozen_string_literal: true

module Api
  module V1
    class ApiController < ActionController::API
      include ActiveStorage::SetCurrent
    end
  end
end
