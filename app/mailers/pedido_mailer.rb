class PedidoMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.pedido_mailer.recibido.subject
  #
  def recibido(pedido)
    @pedido = pedido

    mail to: pedido.email, subject: ‘Hemos recibido su pedido, en breve lo enviaremos a su domicilio.’
  end

  def enviado(pedido)
    @pedido = pedido

    mail to: pedido.email, subject: ‘Hemos enviado a su domicilio los productos que compró’
  end
end
