# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Admin::EducationsController, type: :request do
  let(:valid_attributes) { attributes_for(:education) }
  let(:invalid_attributes) { attributes_for(:education, :invalid) }

  context 'without authenticated user' do
    describe 'GET #index' do
      before do
        get '/admin/educations'
      end

      it_behaves_like 'unauthorized'
    end

    describe 'GET #new' do
      before do
        get '/admin/educations/new'
      end

      it_behaves_like 'unauthorized'
    end

    describe 'GET #edit' do
      let(:education) { create(:education, valid_attributes) }

      before do
        get "/admin/educations/#{education.id}/edit"
      end

      it_behaves_like 'unauthorized'
    end

    describe 'POST #create' do
      before do
        post '/admin/educations', params: { education: valid_attributes }
      end

      it_behaves_like 'unauthorized'
    end

    describe 'PUT #update' do
      let(:education) { create(:education, valid_attributes) }
      let(:new_course) { 'Some new course' }
      let(:new_attributes) { attributes_for(:education, course: new_course) }

      before do
        put "/admin/educations/#{education.id}", params: { id: education.to_param, education: new_attributes }
      end

      it_behaves_like 'unauthorized'
    end

    describe 'DELETE #destroy' do
      let(:education) { create(:education, valid_attributes) }

      before do
        delete "/admin/educations/#{education.id}"
      end

      it_behaves_like 'unauthorized'
    end
  end

  context 'with authenticated user' do
    let(:user) { create(:user) }

    before do
      sign_in(user)
    end

    describe 'GET #index' do
      it 'returns a success response' do
        get '/admin/educations'
        expect(response).to be_successful
      end
    end

    describe 'GET #new' do
      it 'returns a success response' do
        get '/admin/educations/new'
        expect(response).to be_successful
      end
    end

    describe 'GET #edit' do
      it 'returns a success response' do
        education = create(:education, valid_attributes)
        get "/admin/educations/#{education.id}/edit"
        expect(response).to be_successful
      end
    end

    describe 'POST #create' do
      context 'with valid params' do
        it 'creates a new education' do
          expect do
            post '/admin/educations', params: { education: valid_attributes }
          end.to change(Education, :count).by(1)
        end

        it 'redirects to the created education' do
          post '/admin/educations', params: { education: valid_attributes }
          expect(response).to redirect_to(admin_educations_path(locale: :en))
        end
      end

      context 'with invalid params' do
        it 'returns a success response (i.e. to display the new template)' do
          post '/admin/educations', params: { education: invalid_attributes }
          expect(response).to be_successful
        end
      end
    end

    describe 'PUT #update' do
      context 'with valid params' do
        let(:new_course) { 'Some new course' }
        let(:new_attributes) { attributes_for(:education, course: new_course) }

        it 'updates the requested education' do
          education = create(:education, valid_attributes)
          put "/admin/educations/#{education.id}", params: { id: education.to_param, education: new_attributes }
          education.reload
          expect(education.course).to eq(new_course)
        end

        it 'redirects to the education' do
          education = create(:education, valid_attributes)
          put "/admin/educations/#{education.id}", params: { id: education.to_param, education: new_attributes }
          expect(response).to redirect_to(admin_educations_path(locale: :en))
        end
      end

      context 'with invalid params' do
        let(:new_attributes) { attributes_for(:education, :invalid) }

        it 'returns a success response (i.e. to display the edit template)' do
          education = create(:education, valid_attributes)
          put "/admin/educations/#{education.id}", params: { id: education.to_param, education: new_attributes }
          expect(response).to be_successful
        end
      end
    end

    describe 'DELETE #destroy' do
      it 'destroys the requested education' do
        education = create(:education, valid_attributes)
        expect do
          delete "/admin/educations/#{education.id}"
        end.to change(Education, :count).by(-1)
      end

      it 'redirects to the educations list' do
        education = create(:education, valid_attributes)
        delete "/admin/educations/#{education.id}"
        expect(response).to redirect_to(admin_educations_path(locale: :en))
      end
    end
  end
end
