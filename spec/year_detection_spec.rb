require File.dirname(__FILE__) + '/spec_helper'

describe String do
  it 'can detect years' do
    '00'.detect_years.should == ['2000']
  end
  
  it 'can detect multiple years' do
    '14 abc00 2023'.detect_years.should == ['2014', '2023']
  end
  
  it 'is customizable' do
    '14 abc00 84'.detect_years('1900'..'1999').should == ['1914', '1984']
  end
end
