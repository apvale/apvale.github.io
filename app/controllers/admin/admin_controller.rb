# frozen_string_literal: true

module Admin
  class AdminController < ApplicationController
    include Pundit
    layout 'admin'
    before_action :authenticate_user!
    before_action :set_default_locale
    after_action :verify_authorized

    protected

    def locale
      params[:locale] || I18n.locale
    end

    def model
      controller_name.classify.constantize
    end

    private

    def set_default_locale
      I18n.locale = current_user.default_locale
    end
  end
end
