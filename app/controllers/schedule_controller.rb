class ScheduleController < ApplicationController
  def kanri
    @kanri = "テストです"
    @messeage = "kanriアクションが実行"
  end

  def call
    @call ="callアクションが実行"
  end
  
end
