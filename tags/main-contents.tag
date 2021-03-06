<main-contents class="main-contents">

  <section class="item" each={ item, index in data }>
    <div class="wrap">
      <header class="item-header">
        <h2 class="item-title">{ item.title }</h2>
        <div class="item-toggle" show={ item.lat && item.lng }><i class="show-map glyphicon glyphicon-map-marker" onclick={ parent.click } data-id="{ index }"></i></div>
      </header>
      <p class="item-description">{ item.content }</p>

      <ul>
        <li show={ tel }>電話: { tel }</li>
        <li show={ business_hours }>営業時間: { business_hours }</li>
        <li show={ closing_day }>定休日: { closing_day }</li>
        <li show={ parking }>駐車場: { parking }</li>
        <li show={ toilet }>トイレ: { toilet }</li>
      </ul>
    </div>
  </section>

  <script type="es6">
    if ( opts.data ) {
      this.data = opts.data
    }

    this.click = function( e ) {
      route( 'map/' + opts.id.trim() + ':' + e.target.dataset.id.trim() )
    }.bind( this )
  </script>

</main-contents>
