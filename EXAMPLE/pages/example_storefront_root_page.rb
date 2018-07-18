class ExampleStorefrontRootPage < CorePage

  def begin_new_session
    browser.goto(@world.configuration['ENVIRONMENT']["URL"])
    @world.ledger.save_object(:logged_in, false)
    @world.assert_and_set_page(GooglePage)
  end

  def create_common_elements
    @gmail_button = add_button(:gmail, element_type: :a, class: 'gb_P')
  end

  def on_page_load
    @gmail_button.activate_if(!@world.ledger.logged_in)
  end

end