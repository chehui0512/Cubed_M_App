# Cubed_M

## 團隊成員
臺北商業大學 資訊管理系
- 林哲卉：前端開發、UI/UX設計
- 羅毓翔：前、後端、硬體程式開發
- 郭溱卉：後端開發
- 邱佳柔：硬體設計、程式開發
- 羅貞：資料庫維護

## 技術簡介
「Cubed M」是一個結合IoT結合的手機應用程式。
- Flutter：App採用Google的Flutter框架開發，特色是可以在iOS及Andriod兩大平台運行
- Seeed Studio XIAO nRF52840 Sense：擁有體積小的優勢，適合應用在穿戴式裝置上，提供慣性測量單元IMU，可用來偵測動作角度供計數使用，並採用藍芽連結至App，可實現多裝置連結
- Python：後端採用Python，通過感測器收集大量運動數據後，使用Python有利於後續分析
- MongoDB：非關聯式架構NoSQL，由於大部分的資料都是運動的六軸角度、次數資料，資料間彼此關係不複雜，因此選擇開發效率快、可靈活儲存資料的MongoDB

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
flutter pub run build_runner build

@JsonSerializable(explicitToJson: true)
class {} {
  [](
      {});
  
  factory {}.fromJson(Map<String, dynamic> json) => _${}FromJson(json);
  Map<String, dynamic> toJson() => _${}ToJson(this);
}
