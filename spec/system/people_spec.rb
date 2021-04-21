RSpec.describe 'People', type: :system do
  before do
    driven_by(:selenium_chrome_headless)
  end

  xit 'should render a React component' do
    visit '/'
    expect(page).to have_content('Hello React!')
  end
end
