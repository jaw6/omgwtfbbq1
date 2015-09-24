class MonkeysController < ApplicationController

  def index
    @monkeys = Monkey.all
  end

  def update
    @monkey = Monkey.find(params[:id])
    @monkey.name = params[:name]
    if @monkey.save
      respond_to do |format|
        format.html { redirect_to monkeys_path }
        format.json { render json: {
          monkey: render_to_string(@monkey, formats: [:html])
        } }
      end
    else
      format.html { raise "Not implmeneted" }
      format.json { render json: {this: "is", a: "json error"} }
    end
  end
end
