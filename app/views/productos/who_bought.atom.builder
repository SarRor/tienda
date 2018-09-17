atom_feed do |feed|
  feed.nombre "Who bought #{@producto.nombre}"

  feed.updated @latest_pedido.try(:updated_at)

  @producto.pedidos.each do |pedido|
    feed.entry(pedido) do |entry|
      entry.nombre "Pedido #{pedido.id}"
      entry.summary type: 'xhtml' do |xhtml|
        xhtml.p "Shipped to #{pedido.direccion}"

        xhtml.table do
          xhtml.tr do
            xhtml.th 'Producto'
            xhtml.th 'Cantidad'
            xhtml.th 'Pricio Total'
          end
          pedido.articulos_agregados.each do |item|
            xhtml.tr do
              xhtml.td item.producto.nombre
              xhtml.td item.cantidad
              xhtml.td number_to_currency item.precio_total
            end
          end
          xhtml.tr do
            xhtml.th 'total', colspan: 2
            xhtml.th number_to_currency \
              pedido.articulos_agregados.map(&:precio_total).sum
          end
        end

        xhtml.p "Pagado vía #{pedido.tipo_de_pago}"
      end
      entry.author do |author|
        author.nombre pedido.nombre
        author.email pedido.email
      end
    end
  end
end
