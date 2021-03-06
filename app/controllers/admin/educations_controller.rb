# frozen_string_literal: true

module Admin
  class EducationsController < CrudController
    # GET /admin/educations
    def index
      @educations = model.with_locale(locale).ordered
      authorize @educations
    end

    # GET /admin/educations/new
    def new
      @education = model.new
      authorize @education
    end

    # GET /admin/educations/1/edit
    def edit
      authorize @education
    end

    # POST /admin/educations
    def create
      @education = model.new(permitted_attributes(model))
      authorize @education

      if @education.save
        redirect_to redirect_path,
                    notice: t(:created, scope: %i[helpers], model: human_model)
      else
        render :new
      end
    end

    # PATCH/PUT /admin/educations/1
    def update
      authorize @education
      if @education.update(permitted_attributes(@education))
        redirect_to redirect_path,
                    notice: t(:updated, scope: %i[helpers], model: human_model)
      else
        render :edit
      end
    end

    # DELETE /admin/educations/1
    def destroy
      @education.destroy
      authorize @education
      redirect_to redirect_path,
                  notice: t(:deleted, scope: %i[helpers], model: human_model)
    end

    private

    def redirect_path
      admin_educations_path(locale: @education.locale)
    end
  end
end
