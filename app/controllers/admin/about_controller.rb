# frozen_string_literal: true

module Admin
  class AboutController < AdminController
    before_action :set_about, only: %i[edit update destroy]

    # GET /admin/about
    def index
      @about = About.find_for_locale(locale)
      authorize @about
    end

    # GET /admin/about/1/edit
    def edit
      authorize @about
    end

    # POST /admin/about
    def create
      @about = About.new(permitted_attributes(About))
      authorize @about

      if @about.save
        redirect_to %i[admin abouts],
                    notice: 'About was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /admin/about/1
    def update
      authorize @about
      if @about.update(permitted_attributes(@about))
        redirect_to %i[admin abouts],
                    notice: 'About was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /admin/about/1
    def destroy
      @about.destroy
      authorize @about
      redirect_to %i[admin abouts],
                  notice: 'About was successfully destroyed.'
    end

    private

    def set_about
      @about = About.find(params[:id])
    end
  end
end
