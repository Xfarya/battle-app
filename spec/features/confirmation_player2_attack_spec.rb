feature 'attack confirmation', type: :feature do
  scenario 'when player 1 attacks player 2' do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content("Dave has attacked John!")
  end
end