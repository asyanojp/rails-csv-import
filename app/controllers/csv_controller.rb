class CsvController < ApplicationController
  def index
  end
  def data
    require 'csv'
    
    @path = params[:csv].path
    csv = CSV.table("#{@path}", encoding: "Shift_JIS:UTF-8")
    @name = csv[:name]
    @class = csv[:class]
    @score = csv[:score]
    
    @namesize = @name.size.to_i
    
    add1,num1,add2,num2 = 0,0,0,0
    
    for i in 0...@namesize do
      if @class[i] == 1
        add1 += @score[i].to_i
        num1 += 1
      elsif @class[i] == 2
        add2 += @score[i].to_i
        num2 += 1
      end
    end
    
    
    @avg1 = add1 / num1
    @avg2 = add2 / num2
    
    
  end
end
