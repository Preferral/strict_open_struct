require 'strict_open_struct'
require 'minitest/spec'
require 'minitest/autorun'

describe StrictOpenStruct do

  it 'lets you access keys set at initialization' do
    sos = StrictOpenStruct.new(first_name: 'Adam', 'last_name' => 'Adamson')
    assert_equal sos.first_name, 'Adam'
    assert_equal sos.last_name, 'Adamson'
  end

  it 'lets you access keys set later' do
    sos = StrictOpenStruct.new
    sos.first_name = 'Adam'
    assert_equal sos.first_name, 'Adam'
  end

  it 'lets you access methods defined in a subclass' do
    class SubStrictOpenStruct < StrictOpenStruct
      def first_name
        'Adam'
      end
    end

    ssos = SubStrictOpenStruct.new
    assert_equal ssos.first_name, 'Adam'
  end

  it 'raises an exception if you access an undefined key' do
    assert_raises NoMethodError do
      StrictOpenStruct.new.blah
    end
  end

end

