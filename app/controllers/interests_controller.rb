class InterestsController < ApplicationController

    	def index
            @interests = Interest.all
        end


        def show
    		  @interest = Interest.find_by(id: params[:id])
        end

        def new
            @interest = Interest.new(params[:interest])
        end

        def edit
            @interest = Interest.find_by(id: params[:id])
        end


        def create
        
            @interest = Interest.new(type: params[:interest][:type], interest_name: params[:interest][:interest_name])

            respond_to do |format|
              if @interest.save
                format.html { redirect_to interest_url(@interest), notice: "Interest was successfully created." }
              else
                format.html { render :new, status: :unprocessable_entity }
              end
            end
        end

        def update
          @interest = Interest.find_by(id: params[:id])
          @interest.update(type: params[:interest][:type], interest_name: params[:interest][:interest_name])
          redirect_to interest_path(@interest)
        end

        def destroy
          @interest = Interest.find(params[:id])
          @interest.destroy
          redirect_to interests_path
        end

end
