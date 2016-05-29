let on_device_ready _ =
  let t = Cordova_activity_indicator.t () in
  Cordova.Event.add_event_listener
    Cordova.Event.Vol_up_button (fun () -> t#show "Hello world") false;
  Cordova.Event.add_event_listener
    Cordova.Event.Vol_down_button (fun () -> t#hide ()) false

let _ =
  Cordova.Event.device_ready on_device_ready
