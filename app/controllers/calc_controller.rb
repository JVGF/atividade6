
class CalcController < ApplicationController
    #respond_to :json
    #attr_accessor :resultado
    skip_before_action :verify_authenticity_token
    #protect_from_forgery with: :null_session
    #protect_from_forgery unless: -> { request.format.json? }
    #skip_before_action :verify_authenticity_token

    def megasena
        a = []
        begin
        # add 1 because otherwise it gives you numbers from 0-48(na realidade quero de 0-60)
        number = rand(59)+1
        a.push(number) unless a.include?(number)
        end while a.size < 6
        #a = Array.new(5)
        #numero = params[:numero]
        #a = 6.times.map{Random.rand(numero) }
        #a[0] = rand(numero)
        #a[1] = rand(numero)
        #a[2] = rand(numero)
        #a[3] = rand(numero)
        #a[4] = rand(numero)
        #a[5] = rand(numero)
        #a= a.sort{ rand(numero) }
        a.sort! {|x, y| x <=> y}
        render json: {resultado: a}
    end
   
    #def aleatorio
        #lista = Array.new(6)
        #numero = params[:numero]
        #lista[0] = rand(numero)
        #lista[1] = rand(numero)
        #lista[2] = rand(numero)
        #lista[3] = rand(numero)
        #lista[4] = rand(numero)
        #lista[5] = rand(numero) 
        #render json: { resultado: lista = [lista[0], lista[1], lista[2], lista[3], lista[4], lista[5]] }
    #end

    
    #def megasena1_falha_repete_numeros
        #lista = Array.new(2)
        #lista = Array.new(5)
        #numero = params[:numero]
        #lista[0] = rand(numero)
        #lista[1] = rand(numero)
        #lista[2] = rand(numero)
        #lista[3] = rand(numero)
        #lista[4] = rand(numero)
        #lista[5] = rand(numero)
        #if (lista[0]>lista[1])
          #lista=[lista[1], lista[0]]
        #else
          #lista=[lista[0], lista[1]]
        #end
        #(1..5).sort_by{rand}
        #while/if ((lista[0]=!lista[1])and(lista[0]=!lista[2])and(lista[0]=!lista[3])and(lista[0]=!lista[4])and(lista[0]=!lista[5])and(lista[1]=!lista[2])and(lista[1]=!lista[3])and(lista[1]=!lista[4])and(lista[1]=!lista[5])and(lista[2]=!lista[3])and(lista[2]=!lista[4])and(lista[2]=!lista[5])and(lista[3]=!lista[4])and(lista[3]=!lista[5])and(lista[4]=!lista[5]))
        #break
        #lista.sort! {|x, y| x <=> y}
        #end
        #render json: { resultado: lista}
    #end
    

      
      #def aleatorio2
        #lista = Array.new(2)
        #numero = params[:numero]
        #lista[0] = rand(numero)
        #lista[1] = rand(numero)
        #lista[2] = rand(numero)
        ##lista[3] = rand(numero)
        #lista[4] = rand(numero)
        #lista[5] = rand(numero)
        #if (lista[0]>lista[1]&&lista[0]>lista[2]&&lista[1]>lista[2])
          #lista=[lista[1], lista[2],lista[0]]
        #elsif (lista[1]>lista[2]&&lista[1]>lista[0])
          #lista=[lista[0], lista[2], lista[1]]
        #else 
           #lista=[lista[1], lista[2], lista[0]]
        #end
        #render json: { resultado: lista = [lista[0], lista[1], lista[2], lista[3], lista[4], lista[5]] }
        #render json: { resultado: lista}
    #end
   

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
