//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <fading_marquee_widget/fading_marquee_widget_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) fading_marquee_widget_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "FadingMarqueeWidgetPlugin");
  fading_marquee_widget_plugin_register_with_registrar(fading_marquee_widget_registrar);
}
