components {
  id: "ai"
  component: "/platformer_creation_kit/framework/scripts/enemy_ai.script"
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
    id: "collision_box_center"
    value: "-3.087, -13.11977, 0.0"
    type: PROPERTY_TYPE_VECTOR3
  }
  properties {
    id: "collision_box_size"
    value: "157.37172, 239.17735, 0.0"
    type: PROPERTY_TYPE_VECTOR3
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
  properties {
    id: "max_health"
    value: "2.0"
    type: PROPERTY_TYPE_NUMBER
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
    id: "move_acceleration"
    value: "1000.0"
    type: PROPERTY_TYPE_NUMBER
  }
  properties {
    id: "max_speed"
    value: "100.0"
    type: PROPERTY_TYPE_NUMBER
  }
  properties {
    id: "jump_takeoff_speed"
    value: "550.0"
    type: PROPERTY_TYPE_NUMBER
  }
  properties {
    id: "invulnurable_after_hit"
    value: "false"
    type: PROPERTY_TYPE_BOOLEAN
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
  "mask: \"player\"\n"
  "mask: \"obstacle\"\n"
  "mask: \"arrow\"\n"
  "mask: \"one_sided\"\n"
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
  "  data: 84.85344\n"
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
  id: "spinemodel_left"
  type: "spinemodel"
  data: "spine_scene: \"/platformer_creation_kit/framework/Characters/hero.spinescene\"\n"
  "default_animation: \"Idle\"\n"
  "skin: \"10 Mage\"\n"
  "blend_mode: BLEND_MODE_ALPHA\n"
  "material: \"/builtins/materials/spine.material\"\n"
  ""
  position {
    x: 0.0
    y: 0.0
    z: 0.1
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
  "skin: \"10 Mage\"\n"
  "blend_mode: BLEND_MODE_ALPHA\n"
  "material: \"/builtins/materials/spine.material\"\n"
  ""
  position {
    x: 0.0
    y: 0.0
    z: 0.1
  }
  rotation {
    x: 0.0
    y: 1.0
    z: 0.0
    w: 6.123234E-17
  }
}
