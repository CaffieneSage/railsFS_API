# frozen_string_literal: true

module Api
  module V1
    class PetsController < ApplicationController

      def index
        

        if params[:species] == "dog"

          @pets = Pet.find_by species:'dog'
          render json: @pets, status: :ok

        elsif params[:species] == "cat"

          @pets = Pet.find_by species: 'cat'
          render json: @pets, status: :ok

        else

          @pets = Pet.order(:name).all
          render json: @pets, status: :ok
        
        end
      end

      

    end
  end
end

#resources:
#  https://www.section.io/engineering-education/how-to-integrate-a-react-application-with-rails-api/
#  https://guides.rubyonrails.org/association_basics.html
#  https://rootstack.com/en/blog/ruby-on-rails-api