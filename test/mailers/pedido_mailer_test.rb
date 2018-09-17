require 'test_helper'

class PedidoMailerTest < ActionMailer::TestCase
  test "recibido" do
    mail = PedidoMailer.recibido
    assert_equal "Recibido", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "enviado" do
    mail = PedidoMailer.enviado
    assert_equal "Enviado", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
