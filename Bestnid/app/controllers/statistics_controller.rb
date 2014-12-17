class StatisticsController < ApplicationController

  def por_post
    if request.post?
      f_inicio = Date::civil(params[:start][:year].to_i, params[:start][:month].to_i, params[:start][:day].to_i)
      f_fin = Date::civil(params[:end][:year].to_i, params[:end][:month].to_i, params[:end][:day].to_i)

      @todos= User.where("created_at > ? AND  created_at < ?", f_inicio, f_fin).order("created_at")
    end
  end

  def publication_search
    if request.post?
      f_inicio = Date::civil(params[:pub_start][:year].to_i, params[:pub_start][:month].to_i, params[:pub_start][:day].to_i)
      f_fin = Date::civil(params[:pub_end][:year].to_i, params[:pub_end][:month].to_i, params[:pub_end][:day].to_i)
      @publicaciones= Publication.finalizadas.where("terminated_date > ? AND terminated_date < ?", f_inicio, f_fin)
    end
  end
end