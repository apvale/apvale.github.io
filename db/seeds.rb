# frozen_string_literal: true

User.where(
  first_name: 'Ana',
  last_name: 'Vale',
  email: 'email@example.com',
  default_locale: :en
).first_or_create(password: 'password2018')
