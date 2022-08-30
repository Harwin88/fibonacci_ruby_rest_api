class Api::V1::FibonacciController < ApplicationController

    def show
        @fibo = []
        for i in 0..params[:id].to_i do
            if i > 0
                if i == 1
                    @fibo[i] =  i
                else
                    @fibo[i] =  @fibo[i-2] + @fibo[i-1]
                end
            else
                @fibo[i] =  i
            end
        end
        render json: {
            'rest_fibo':  @fibo[params[:id].to_i] 
           }
    end
end
