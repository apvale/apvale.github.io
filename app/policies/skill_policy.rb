# frozen_string_literal: true

class SkillPolicy < ApplicationPolicy
  def permitted_attributes
    %i[name value locale translation_id]
  end
end
