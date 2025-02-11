class PagesController < ApplicationController

  def square_new
    render({ :template => "pages_templates/square_new" })
  end

  def square_result
    @num = params.fetch("num").to_f

    @final = (@num * @num).round(4)

    render({ :template => "pages_templates/square_result" })
  end

  def square_root_new
    render({ :template => "pages_templates/square_root_new" })
  end

  def square_root_result
    @num = params.fetch("num").to_f

    @final = Math.sqrt(@num).round(4)

    render({ :template => "pages_templates/square_root_result" })
  end

  def random_new
    render({ :template => "pages_templates/random_new" })
  end

  def random_result
    @min = params.fetch("min").to_f

    @max = params.fetch("max").to_f

    @output = rand(@min..@max)

    render({ :template => "pages_templates/random_result" })
  end

  def payment_new
    render({ :template => "pages_templates/payment_new" })
  end

  def payment_result
    @apr = params.fetch("apr").to_f
    @years = params.fetch("years").to_i
    @pv = params.fetch("pv").to_f

    @r = @apr / 1200.0
    @n = @years * 12

    @numerator = @r * @pv
    @denominator = 1 - ((1 + @r)**-@n)

    @output = (@numerator/@denominator).to_fs(:currency)

    @apr_formatted = @apr.to_fs(:percentage, {:precision => 4})
    @pv_formatted = @pv.to_fs(:currency)

    render({ :template => "pages_templates/payment_result" })
  end

end
