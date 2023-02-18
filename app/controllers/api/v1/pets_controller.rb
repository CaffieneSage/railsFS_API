# frozen_string_literal: true

module Api
  module V1
    class PetsController < ApplicationController

      def index
        

        if params[:species] == "dog"

          @dogs = Pet.find(params[:species] == "dog")
          render json: @dogs, status: :ok

        elsif params[:species] == "cat"

          @cats = Pet.find(params[:species] == "cat")
          render json: @cats, status: :ok

        else

          @pets = Pet.all
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