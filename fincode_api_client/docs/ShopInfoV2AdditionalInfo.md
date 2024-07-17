# FincodeApiClient::ShopInfoV2AdditionalInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_sales_manager_name** | **String** | 販売責任者氏名\\ \\ ショップの販売責任者の氏名  |  |
| **shop_service_name** | **String** | 屋号・サービス名\\ \\ ショップのサービスの名称  | [optional] |
| **shop_how_to_pay** | **String** | 支払い方法\\ \\ ショップで利用可能な支払い方法  |  |
| **shop_charge_description** | **String** | 商品代金以外の料金の説明\\ \\ 送料、手数料、消費税などの商品代金以外の料金についての説明  | [optional] |
| **shop_product_delivery_time** | **String** | 商品の引き渡し時期\\ \\ 商品の引き渡し時期についての説明  |  |
| **shop_return_goods_handing_conditions** | **String** | 返品・交換に関する条件\\ \\ 返品・交換に関する条件についての説明  |  |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::ShopInfoV2AdditionalInfo.new(
  shop_sales_manager_name: イプシロン太郎,
  shop_service_name: サンプルショップ,
  shop_how_to_pay: クレジットカード、コンビニ決済,
  shop_charge_description: インターネット接続費用およびその他インターネット利用に必要な費用。モバイルデバイスをご利用の場合にはデータ通信料が発生する場合があります。
,
  shop_product_delivery_time: サンプルショップのサービス提供開始日はユーザーアカウントで初めて認証手続を行った日となります。
,
  shop_return_goods_handing_conditions: 1. サービス開始月中に解約した場合、サービスの月額利用料が全額発生します。
2. デジタルコンテンツサービスの特性上、購入後の返品・キャンセルはお受付いたしかねます。

)
```

