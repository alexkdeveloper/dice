dice_sources = [
  'main.vala',
  'window.vala',
]

dice_deps = [
  dependency('gtk4'),
  dependency('libadwaita-1'),
]

gnome = import('gnome')

dice_sources += gnome.compile_resources('dice-resources',
  'dice.gresource.xml',
  c_name: 'dice'
)

executable('com.github.alexkdeveloper.dice', dice_sources,
include_directories: config_h_dir,
vala_args: ['--target-glib=2.50', meson.source_root() + '/src/config.vapi'],
c_args: ['-include', 'config.h'], dependencies: dice_deps,
  install: true,
)

install_data(
    join_paths('images', '1.png'),
    install_dir : join_paths('share', 'dice', 'images'))

install_data(
    join_paths('images', '2.png'),
    install_dir : join_paths('share', 'dice', 'images'))

install_data(
    join_paths('images', '3.png'),
    install_dir : join_paths('share', 'dice', 'images'))

install_data(
    join_paths('images', '4.png'),
    install_dir : join_paths('share', 'dice', 'images'))

install_data(
    join_paths('images', '5.png'),
    install_dir : join_paths('share', 'dice', 'images'))

install_data(
    join_paths('images', '6.png'),
    install_dir : join_paths('share', 'dice', 'images'))
