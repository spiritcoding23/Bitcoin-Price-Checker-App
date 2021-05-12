import 'network.dart';

class Price {
  Future<dynamic> getPrice(String Selected) async {
    List price = [];
    NetworkHelper networkHelper = NetworkHelper(
        'https://api.nomics.com/v1/currencies/ticker?key=338c8d7552368709718660f93a1536757e09ed7c&ids=BTC,ETH,LTC&convert=$Selected');

    var PriceData = await networkHelper.getData();

    var priceBTC = PriceData[0]['price'];
    price.add(priceBTC);
    var priceETH = PriceData[1]['price'];
    price.add(priceETH);
    var priceLTC = PriceData[2]['price'];
    price.add(priceLTC);

    return price;
  }
}
