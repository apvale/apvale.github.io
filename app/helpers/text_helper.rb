# frozen_string_literal: true

module TextHelper
  def markdown(text)
    sanitize(Kramdown::Document.new(text || '').to_html.squish)
  end
end
