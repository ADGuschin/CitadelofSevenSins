components {
  id: "sound"
  component: "/sounds/sound.script"
  position {
    x: 0.0
    y: 0.0
    z: 0.0
  }
  rotation {
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0
  }
}
embedded_components {
  id: "gametheme"
  type: "sound"
  data: "sound: \"/sounds/coss game.wav\"\n"
  "looping: 1\n"
  "group: \"master\"\n"
  "gain: 1.0\n"
  ""
  position {
    x: 0.0
    y: 0.0
    z: 0.0
  }
  rotation {
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0
  }
}
embedded_components {
  id: "menutheme"
  type: "sound"
  data: "sound: \"/sounds/coss menu.wav\"\n"
  "looping: 1\n"
  "group: \"master\"\n"
  "gain: 0.7\n"
  ""
  position {
    x: 0.0
    y: 0.0
    z: 0.0
  }
  rotation {
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0
  }
}
