<main-contents>
  <div class="item" each={ data }>
    <h2>{ title }</h2>
    <p>{ content }</p>
  </div>
  <script type="es6">
    if ( opts.data ) {
      this.data = opts.data
    }
  </script>
</main-contents>