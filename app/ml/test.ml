let on_device_ready _ =
  let t = Cordova_activity_indicator.t () in
  t#show "Hello world"

let _ =
  Cordova.Event.device_ready on_device_ready
