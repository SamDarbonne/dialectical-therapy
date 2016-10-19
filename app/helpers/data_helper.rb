module DataHelper

  def data
    bar_chart show_user_data_path, library: {
        yAxis: {
            crosshair: true,
            title: {
                text: 'Competitions count'
            }
        },
        xAxis: {
            crosshair: true,
            title: {
                text: 'Year'
            }
        }
    }
  end




end
