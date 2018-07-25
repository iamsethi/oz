class GooglePage < ExampleStorefrontRootPage

  add_id_element(:div, //, id: 'gs_lc0')


  def create_elements

    add_static_text(:gmail, element_type: :a, class: 'gb_P')
    add_text_field(:search, element_type: :input, id: 'lst-ib')
    browser.send_keys(:tab)
    add_button(:search, element_type: :input, name: 'btnK')

  end


end