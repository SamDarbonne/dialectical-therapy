module DataHelper

  @array = @user_before_data.map{|a| a.to_f}.inject(:+)/a.length

  x_range = 0..10

  library_options = {
    width: 600,
    hAxis: {ticks: x_range.to_a},
  }

end
