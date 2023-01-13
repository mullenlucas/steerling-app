require 'rails_helper'

RSpec.describe 'operations/index', type: :view do
  before(:each) do
    assign(:operations, [
             Operation.create!,
             Operation.create!
           ])
  end

  it 'renders a list of operations' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
