class ResponseSerializer < ActiveModel::Serializer
  # attributes :lemurs_quantity, :month_and_year, :_geolocation, :lemur_category, :location_admin1, :location_admin2
  attributes :saw_captive_lemur, :lemurs_quantity, :decade, :year, :month, :lemur_category, :location_admin1, :location_admin2, :environment, :captive_environment

  def saw_captive_lemur
    if object.saw_captive_lemur
      object.saw_captive_lemur
    else
      "no_answer"
    end
  end

  def lemurs_quantity
  	if object.lemurs_quantity
  		object.lemurs_quantity
  	else
  		"no_answer"
  	end
  end

  def decade
    if object.sighting_year == "before_1961"
      "before_1960"
    elsif object.sighting_year == "i_dont_know"
      "i_dont_know"
    elsif object.sighting_year.to_i >= 1961 && object.sighting_year.to_i <= 1969
      "1960s"
    elsif object.sighting_year.to_i >= 1970 && object.sighting_year.to_i <= 1979
      "1970s"
    elsif object.sighting_year.to_i >= 1980 && object.sighting_year.to_i <= 1989
      "1980s"
    elsif object.sighting_year.to_i >= 1990 && object.sighting_year.to_i <= 1999
      "1990s"  
    elsif object.sighting_year.to_i >= 2000 && object.sighting_year.to_i <= 2009
      "2000s"
    elsif object.sighting_year.to_i >= 2010 && object.sighting_year.to_i <= 2017
      object.sighting_year.to_s
    else
      "no_response"
    end
  end


  def year
  	if object.sighting_year
  		object.sighting_year
  	# elsif object.sighting_year
  	# 	object.sighting_year.strftime('%Y')
  	else
  		"no_response"
  	end
  end

  def month
  	if object.sighting_month
  		object.sighting_month
  	elsif object.sighting_month
  		object.sighting_month.strftime('%B').downcase
  	else
  		"no_response"
  	end
  end

  def lemur_category
  	if object.lemur_category
  		object.lemur_category
  	else
  		"no_response"
  	end
  end

  def location_admin1
  	if object.location_admin1
  		object.location_admin1
  	else
  		"no_response"
  	end
  end

  def location_admin2
  	if object.location_admin2
  		object.location_admin2
  	else
  		"no_response"
  	end
  end

  def environment
    if object.environment
      object.environment
    else
      "no_answer"
    end
  end

  def captive_environment
    if object.captive_environment
      object.captive_environment
    else
      "no_response"
    end
  end


end
