components {
  id: "camera_target"
  component: "/platformer_creation_kit/framework/scripts/camera_target.script"
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
components {
  id: "cast_bg"
  component: "/platformer_creation_kit/framework/particles/magic_background.particlefx"
  position {
    x: 3.1303308
    y: 69.159424
    z: 0.0
  }
  rotation {
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0
  }
}
components {
  id: "class"
  component: "/platformer_creation_kit/framework/scripts/class.script"
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
  properties {
    id: "arrow_delay"
    value: "0.25"
    type: PROPERTY_TYPE_NUMBER
  }
  properties {
    id: "arrow_cooldown"
    value: "0.75"
    type: PROPERTY_TYPE_NUMBER
  }
  properties {
    id: "arrow_offset"
    value: "0.0, 100.0, 0.5"
    type: PROPERTY_TYPE_VECTOR3
  }
  properties {
    id: "arrow_direction"
    value: "1.0, 0.202, 0.0"
    type: PROPERTY_TYPE_VECTOR3
  }
  properties {
    id: "missile_delay"
    value: "0.1"
    type: PROPERTY_TYPE_NUMBER
  }
  properties {
    id: "missile_cooldown"
    value: "0.6"
    type: PROPERTY_TYPE_NUMBER
  }
  properties {
    id: "missile_speed"
    value: "600.0"
    type: PROPERTY_TYPE_NUMBER
  }
  properties {
    id: "missile_offset"
    value: "0.0, 100.0, 0.5"
    type: PROPERTY_TYPE_VECTOR3
  }
  properties {
    id: "swing_delay"
    value: "0.1"
    type: PROPERTY_TYPE_NUMBER
  }
  properties {
    id: "swing_cooldown"
    value: "0.5"
    type: PROPERTY_TYPE_NUMBER
  }
}
components {
  id: "health"
  component: "/platformer_creation_kit/framework/scripts/health.script"
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
components {
  id: "input"
  component: "/platformer_creation_kit/framework/scripts/player_input.script"
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
components {
  id: "inventory"
  component: "/platformer_creation_kit/framework/scripts/inventory.script"
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
components {
  id: "movement"
  component: "/platformer_creation_kit/framework/scripts/movement.script"
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
  properties {
    id: "jump_takeoff_speed"
    value: "770.0"
    type: PROPERTY_TYPE_NUMBER
  }
}
embedded_components {
  id: "arrow_factory"
  type: "factory"
  data: "prototype: \"/platformer_creation_kit/framework/gameobjects/arrow.go\"\n"
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
  id: "arrow_release"
  type: "sound"
  data: "sound: \"/platformer_creation_kit/framework/sounds/bow_release.ogg\"\n"
  "looping: 0\n"
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
  id: "collisionobject"
  type: "collisionobject"
  data: "collision_shape: \"\"\n"
  "type: COLLISION_OBJECT_TYPE_KINEMATIC\n"
  "mass: 0.0\n"
  "friction: 0.1\n"
  "restitution: 0.5\n"
  "group: \"player\"\n"
  "mask: \"obstacle\"\n"
  "mask: \"spikes\"\n"
  "mask: \"pickup\"\n"
  "mask: \"enemy\"\n"
  "mask: \"speech\"\n"
  "mask: \"one_sided\"\n"
  "mask: \"ladder\"\n"
  "mask: \"ladder_end\"\n"
  "embedded_collision_shape {\n"
  "  shapes {\n"
  "    shape_type: TYPE_BOX\n"
  "    position {\n"
  "      x: -0.6800842\n"
  "      y: 101.62394\n"
  "      z: 0.0\n"
  "    }\n"
  "    rotation {\n"
  "      x: 0.0\n"
  "      y: 0.0\n"
  "      z: 0.0\n"
  "      w: 1.0\n"
  "    }\n"
  "    index: 0\n"
  "    count: 3\n"
  "  }\n"
  "  data: 57.4403\n"
  "  data: 101.539566\n"
  "  data: 10.0\n"
  "}\n"
  "linear_damping: 0.0\n"
  "angular_damping: 0.0\n"
  "locked_rotation: false\n"
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
  id: "footstep1"
  type: "sound"
  data: "sound: \"/platformer_creation_kit/framework/sounds/footstep1.ogg\"\n"
  "looping: 0\n"
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
  id: "footstep2"
  type: "sound"
  data: "sound: \"/platformer_creation_kit/framework/sounds/footstep2.ogg\"\n"
  "looping: 0\n"
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
  id: "footstep3"
  type: "sound"
  data: "sound: \"/platformer_creation_kit/framework/sounds/footstep3.ogg\"\n"
  "looping: 0\n"
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
  id: "jump_sound"
  type: "sound"
  data: "sound: \"/platformer_creation_kit/framework/sounds/jump.ogg\"\n"
  "looping: 0\n"
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
  id: "ladder_step1"
  type: "sound"
  data: "sound: \"/platformer_creation_kit/framework/sounds/ladder_step1.ogg\"\n"
  "looping: 0\n"
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
  id: "ladder_step2"
  type: "sound"
  data: "sound: \"/platformer_creation_kit/framework/sounds/ladder_step2.ogg\"\n"
  "looping: 0\n"
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
  id: "ladder_step3"
  type: "sound"
  data: "sound: \"/platformer_creation_kit/framework/sounds/ladder_step3.ogg\"\n"
  "looping: 0\n"
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
  id: "missile_factory"
  type: "factory"
  data: "prototype: \"/platformer_creation_kit/framework/gameobjects/missile.go\"\n"
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
  id: "spell_cast"
  type: "sound"
  data: "sound: \"/platformer_creation_kit/framework/sounds/FireBallCast.wav\"\n"
  "looping: 0\n"
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
  id: "spinemodel_left"
  type: "spinemodel"
  data: "spine_scene: \"/platformer_creation_kit/framework/Characters/hero.spinescene\"\n"
  "default_animation: \"Idle\"\n"
  "skin: \"09 Royal\"\n"
  "blend_mode: BLEND_MODE_ALPHA\n"
  "material: \"/builtins/materials/spine.material\"\n"
  ""
  position {
    x: 13.628327
    y: 0.0
    z: 0.025
  }
  rotation {
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0
  }
}
embedded_components {
  id: "spinemodel_right"
  type: "spinemodel"
  data: "spine_scene: \"/platformer_creation_kit/framework/Characters/hero.spinescene\"\n"
  "default_animation: \"Idle\"\n"
  "skin: \"09 Royal\"\n"
  "blend_mode: BLEND_MODE_ALPHA\n"
  "material: \"/builtins/materials/spine.material\"\n"
  ""
  position {
    x: -7.923446
    y: 0.0
    z: 0.025
  }
  rotation {
    x: 0.0
    y: 1.0
    z: 0.0
    w: 6.123234E-17
  }
}
embedded_components {
  id: "swing"
  type: "sound"
  data: "sound: \"/platformer_creation_kit/framework/sounds/swing00.wav\"\n"
  "looping: 0\n"
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
  id: "swing_factory"
  type: "factory"
  data: "prototype: \"/platformer_creation_kit/framework/gameobjects/swing.go\"\n"
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
