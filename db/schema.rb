# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_09_16_234325) do

  create_table "articulos_agregados", force: :cascade do |t|
    t.integer "cantidad", default: 1
    t.integer "producto_id"
    t.integer "carrito_id"
    t.integer "pedido_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["carrito_id"], name: "index_articulos_agregados_on_carrito_id"
    t.index ["pedido_id"], name: "index_articulos_agregados_on_pedido_id"
    t.index ["producto_id"], name: "index_articulos_agregados_on_producto_id"
  end

  create_table "carritos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pedidos", force: :cascade do |t|
    t.string "nombre"
    t.string "direccion"
    t.string "email"
    t.string "telefono"
    t.integer "tipo_de_pago"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "productos", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.string "imagen"
    t.decimal "precio", precision: 8, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
