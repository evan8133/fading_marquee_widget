#ifndef FLUTTER_PLUGIN_FADING_MARQUEE_WIDGET_PLUGIN_H_
#define FLUTTER_PLUGIN_FADING_MARQUEE_WIDGET_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace fading_marquee_widget {

class FadingMarqueeWidgetPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  FadingMarqueeWidgetPlugin();

  virtual ~FadingMarqueeWidgetPlugin();

  // Disallow copy and assign.
  FadingMarqueeWidgetPlugin(const FadingMarqueeWidgetPlugin&) = delete;
  FadingMarqueeWidgetPlugin& operator=(const FadingMarqueeWidgetPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace fading_marquee_widget

#endif  // FLUTTER_PLUGIN_FADING_MARQUEE_WIDGET_PLUGIN_H_
