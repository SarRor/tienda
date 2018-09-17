# Preview all emails at http://localhost:3000/rails/mailers/pedido_mailer
class PedidoMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/pedido_mailer/recibido
  def recibido
    PedidoMailer.recibido
  end

  # Preview this email at http://localhost:3000/rails/mailers/pedido_mailer/enviado
  def enviado
    PedidoMailer.enviado
  end

end
