# FincodeApiClient::ExaminationFileUploadExaminationFilesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shop_id** | **String** | ショップID（テナント）\\ \\ このIDのテナントショップに関して画像ファイルを受け付けたことを示します。  | [optional] |
| **type** | [**ExaminationFileType**](ExaminationFileType.md) | 審査ファイルタイプ  | [optional] |
| **filename** | **String** | 審査ファイル名\\ \\ 拡張子を含むアップロードされたファイルの名称  | [optional] |
| **filesize** | **Float** | 審査ファイルサイズ\\ \\ アップロードされたファイルのサイズ（バイト）  | [optional] |

## Example

```ruby
require 'fincode_api_client'

instance = FincodeApiClient::ExaminationFileUploadExaminationFilesInner.new(
  shop_id: s_***********,
  type: null,
  filename: null,
  filesize: null
)
```

