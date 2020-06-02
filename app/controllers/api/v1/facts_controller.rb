class Api::V1::FactsController < ApplicationController

    before_action :find_fact, only: [ :update, :show, :destory]
    def index

        @facts = Fact.all
        render json: @facts

    end

    def show

        render json: @fact

    end

    def create

        @fact = Fact.new(fact_params)
        if @fact.save
            render json: {message: 'fact saved successfuly!'}
            render json: @fact
        else
            render json: { error: 'Unable to create Fact!'}, status: 200
        end

    end

    def update

        if @fact
            @fact.update(fact_params)
            render json: { message: 'Fact updated successfully!'}, status: 200
        else
            render json: {message: 'Unable to update Fact!'}, status: 400
        end

    end

    def destory
    
        if @fact
            @fact.destory
            render json: {message: 'Fact destroyed successfully!'}, status: 200
        else
            render json: {error: 'Unable to destroy Fact!'}, status: 400
        end

    end

    private 
    def fact_params
        param.require(:fact).permit(:fact, :likes, :user_id)
    end

    def find_fact
        @fact = Fact.find(params[:id])
    end

end
