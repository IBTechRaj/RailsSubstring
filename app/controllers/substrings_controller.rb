class SubstringsController < ApplicationController
  def new
    @substring = Substring.new
  end

  def index
@substrings = Substring.all
  end

  def show
  end

  def create
    @sol=Solution.new
    @substring = Substring.new(substring_params)
    @res = @sol.find_pattern(@substring.str1)
    # @substring.result_digits = @res
    @substring.result_str=@res
    @substring.result_digits=@res.length
    if  @substring.save
    redirect_to substrings_path
    else
    render 'new'
    end
  end

  def search_substring(s)
    # h = {}
    # d = -1
    # max = 0
    # count = 0

    # (0...s.length).each do |i|
    #   if h[s[i]].nil?
    #     count += 1
    #   else
    #     max = count if count > max
    #     count = h[s[i]] > d ? i - h[s[i]] : count + 1
    #     d = h[s[i]] if d < h[s[i]]
    #   end
    #   h[s[i]] = i
    # end

    # max < count ? count : max
  end



  def substring_params
    params.require(:substring).permit(:str1, :str2)
  end

end
