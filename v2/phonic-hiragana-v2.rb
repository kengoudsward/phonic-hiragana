#! /usr/bin/env shoes

require HiraganaHash

Shoes.app do

  hh = HiraganaHash.new()
  puts hh::test

  stack :margin => 10 do
    para 'type or paste your phonetic japanese text here: eg. "konichiwa"'
    @input = edit_box :width => 1.0
=begin
    button 'click here to convert to hiragana' do 
      # @data = @input.text # get the input
      @datastring = @input.text

      # encrypt the data
      # we have to do smallest chunks last
      hh::hash3.each do |phonic, hirasym|
        @datastring.gsub!( phonic, hirasym ) # modify in place
      end
      hh::hash2.each do |phonic, hirasym|
        @datastring.gsub!( phonic, hirasym ) # modify in place
      end
      hh::hash1.each do |phonic, hirasym|
        @datastring.gsub!( phonic, hirasym ) # modify in place
      end

      @output.text = @datastring # output the results
    end # of button
=end
    # create a placeholder for the results
    # this seems weird because we refer to it above but
    # it hasn't actually happenned yet until the button click
    # so we actually do this first
    @output = edit_box :width => 1.0

  end # of stack
end # of app
