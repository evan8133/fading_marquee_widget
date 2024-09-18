#include "include/fading_marquee_widget/fading_marquee_widget_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "fading_marquee_widget_plugin.h"

void FadingMarqueeWidgetPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  fading_marquee_widget::FadingMarqueeWidgetPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
