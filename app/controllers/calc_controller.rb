class CalcController < ApplicationController
    #respond_to :json
    #attr_accessor :resultado
    skip_before_action :verify_authenticity_token
    #protect_from_forgery with: :null_session
    #protect_from_forgery unless: -> { request.format.json? }
    #skip_before_action :verify_authenticity_token
   
    def aleatorio
        numero = params[:numero]
        
        render json: { resultado: rand(numero) }
    end

    def somar
        #n1=0
        #n2=0
        render json: { resultado: params[:n1] + params[:n2] }
    end

    def subtrair
        #n1=0
        #n2=0
        render json: { resultado: params[:n1] - params[:n2] }
    end

    def fatorial
        fatorial = 1
        #numero = 0
        numero = params[:numero]
        for i in (1..numero)
            fatorial *= i
        end
        render json: {resultado: fatorial}
    end
end
