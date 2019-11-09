class CalcController < ApplicationController
    skip_before_action :verify_authenticity_token

    def somar
        render json: {resultado: params[:n1] + params[:n2]}
    end

    def fatorial
        fatorial = 1
        numero = params[:numero]
        for i in (1..numero)
            fatorial *= i
        end
        render json: {resultado: fatorial}
    end
end
