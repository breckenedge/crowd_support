require File.dirname(__FILE__) + '/spec_helper'

describe String do
  it 'can sanitize filenames' do
    'my+document$is++very&interesting___thisIs%nice445.doc.pdf'.sanitize_filename.should == 'my_document_is_very_interesting_thisIs_nice445_doc.pdf'
  end
end
