require "test_helper"

class AchatsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get achats_index_url
    assert_response :success
  end

  test "should get alsace" do
    get achats_alsace_url
    assert_response :success
  end

  test "should get bas_rhin" do
    get achats_bas_rhin_url
    assert_response :success
  end

  test "should get haut_rhin" do
    get achats_haut_rhin_url
    assert_response :success
  end

  test "should get strasbourg" do
    get achats_strasbourg_url
    assert_response :success
  end

  test "should get bourse" do
    get achats_bourse_url
    assert_response :success
  end

  test "should get esplanade" do
    get achats_esplanade_url
    assert_response :success
  end

  test "should get krutenau" do
    get achats_krutenau_url
    assert_response :success
  end

  test "should get centre_ville" do
    get achats_centre_ville_url
    assert_response :success
  end

  test "should get gare" do
    get achats_gare_url
    assert_response :success
  end

  test "should get tribunal" do
    get achats_tribunal_url
    assert_response :success
  end

  test "should get orangerie" do
    get achats_orangerie_url
    assert_response :success
  end

  test "should get conseil_des_xv" do
    get achats_conseil_des_xv_url
    assert_response :success
  end

  test "should get cronenbourg" do
    get achats_cronenbourg_url
    assert_response :success
  end

  test "should get hautepierre" do
    get achats_hautepierre_url
    assert_response :success
  end

  test "should get poteries" do
    get achats_poteries_url
    assert_response :success
  end

  test "should get koenigshoffen" do
    get achats_koenigshoffen_url
    assert_response :success
  end

  test "should get montagne_verte" do
    get achats_montagne_verte_url
    assert_response :success
  end

  test "should get elsau" do
    get achats_elsau_url
    assert_response :success
  end

  test "should get meinau" do
    get achats_meinau_url
    assert_response :success
  end

  test "should get neudorf" do
    get achats_neudorf_url
    assert_response :success
  end

  test "should get musau" do
    get achats_musau_url
    assert_response :success
  end

  test "should get port_rhin" do
    get achats_port_rhin_url
    assert_response :success
  end

  test "should get neuhof" do
    get achats_neuhof_url
    assert_response :success
  end

  test "should get stockfeld" do
    get achats_stockfeld_url
    assert_response :success
  end

  test "should get ganzau" do
    get achats_ganzau_url
    assert_response :success
  end

  test "should get robertsau" do
    get achats_robertsau_url
    assert_response :success
  end

  test "should get wacken" do
    get achats_wacken_url
    assert_response :success
  end
end
