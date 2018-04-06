components {
  id: "script"
  component: "/level/platform.script"
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
  "group: \"geometry\"\n"
  "mask: \"hero\"\n"
  "embedded_collision_shape {\n"
  "  shapes {\n"
  "    shape_type: TYPE_BOX\n"
  "    position {\n"
  "      x: 0.0\n"
  "      y: 0.0\n"
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
  "  data: 369.31937\n"
  "  data: 61.565853\n"
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
  id: "spike"
  type: "sprite"
  data: "tile_set: \"/level/level.atlas\"\n"
  "default_animation: \"spikes\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "blend_mode: BLEND_MODE_ALPHA\n"
  ""
  position {
    x: -373.7144
    y: 0.49288327
    z: -0.01
  }
  rotation {
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0
  }
}
embedded_components {
  id: "spike1"
  type: "sprite"
  data: "tile_set: \"/level/level.atlas\"\n"
  "default_animation: \"spikes\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "blend_mode: BLEND_MODE_ALPHA\n"
  ""
  position {
    x: 372.56726
    y: 1.399531
    z: -0.01
  }
  rotation {
    x: 6.123234E-17
    y: 6.123234E-17
    z: -1.0
    w: 3.7493994E-33
  }
}
embedded_components {
  id: "spike2"
  type: "sprite"
  data: "tile_set: \"/level/level.atlas\"\n"
  "default_animation: \"spikes\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "blend_mode: BLEND_MODE_ALPHA\n"
  ""
  position {
    x: -64.28592
    y: -73.79053
    z: -0.01
  }
  rotation {
    x: 0.0
    y: 0.0
    z: 0.70327944
    w: 0.71091354
  }
}
embedded_components {
  id: "spike3"
  type: "sprite"
  data: "tile_set: \"/level/level.atlas\"\n"
  "default_animation: \"spikes\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "blend_mode: BLEND_MODE_ALPHA\n"
  ""
  position {
    x: 83.295135
    y: -73.79053
    z: -0.01
  }
  rotation {
    x: 0.0
    y: 0.0
    z: 0.7055403
    w: 0.7086698
  }
}
embedded_components {
  id: "spike4"
  type: "sprite"
  data: "tile_set: \"/level/level.atlas\"\n"
  "default_animation: \"spikes\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "blend_mode: BLEND_MODE_ALPHA\n"
  ""
  position {
    x: -198.50461
    y: -77.73814
    z: -0.01
  }
  rotation {
    x: 0.0
    y: 0.0
    z: 0.70327944
    w: 0.71091354
  }
}
embedded_components {
  id: "spike5"
  type: "sprite"
  data: "tile_set: \"/level/level.atlas\"\n"
  "default_animation: \"spikes\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "blend_mode: BLEND_MODE_ALPHA\n"
  ""
  position {
    x: 212.25035
    y: -72.474655
    z: -0.01
  }
  rotation {
    x: 0.0
    y: 0.0
    z: 0.7055403
    w: 0.7086698
  }
}
embedded_components {
  id: "spikes"
  type: "collisionobject"
  data: "collision_shape: \"\"\n"
  "type: COLLISION_OBJECT_TYPE_KINEMATIC\n"
  "mass: 0.0\n"
  "friction: 0.1\n"
  "restitution: 0.5\n"
  "group: \"danger\"\n"
  "mask: \"hero\"\n"
  "embedded_collision_shape {\n"
  "  shapes {\n"
  "    shape_type: TYPE_BOX\n"
  "    position {\n"
  "      x: 5.840023\n"
  "      y: -73.0512\n"
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
  "  shapes {\n"
  "    shape_type: TYPE_BOX\n"
  "    position {\n"
  "      x: 382.55878\n"
  "      y: -0.7393249\n"
  "      z: 0.0\n"
  "    }\n"
  "    rotation {\n"
  "      x: 0.0\n"
  "      y: 0.0\n"
  "      z: 0.0\n"
  "      w: 1.0\n"
  "    }\n"
  "    index: 3\n"
  "    count: 3\n"
  "  }\n"
  "  shapes {\n"
  "    shape_type: TYPE_BOX\n"
  "    position {\n"
  "      x: -380.5036\n"
  "      y: -5.0170364\n"
  "      z: 0.0\n"
  "    }\n"
  "    rotation {\n"
  "      x: 0.0\n"
  "      y: 0.0\n"
  "      z: 0.0\n"
  "      w: 1.0\n"
  "    }\n"
  "    index: 6\n"
  "    count: 3\n"
  "  }\n"
  "  data: 355.61716\n"
  "  data: 7.9448056\n"
  "  data: 10.0\n"
  "  data: 12.63174\n"
  "  data: 45.542107\n"
  "  data: 10.0\n"
  "  data: 10.0\n"
  "  data: 52.121452\n"
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
  id: "sprite"
  type: "sprite"
  data: "tile_set: \"/level/level.atlas\"\n"
  "default_animation: \"rock_planks\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "blend_mode: BLEND_MODE_ALPHA\n"
  ""
  position {
    x: -186.98395
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
  id: "sprite1"
  type: "sprite"
  data: "tile_set: \"/level/level.atlas\"\n"
  "default_animation: \"rock_planks\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "blend_mode: BLEND_MODE_ALPHA\n"
  ""
  position {
    x: 191.20163
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
