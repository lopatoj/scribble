# project name and programming language
project('com.github.lopatoj.scribble', 'vala', 'c')

# Include the translations module
i18n = import('i18n')

# Set our translation domain
add_global_arguments('-DGETTEXT_PACKAGE="@0@"'.format (meson.project_name()), language:'c')

# List the dependencies we need
deps = [
    dependency('gtk+-3.0')
]

# Create a new executable, list the files we want to compile, and install
executable(
    meson.project_name(),
    'src' / 'Application.vala',
    'src' / 'Counter.vala',
    'src' / 'CounterWidget.vala',
    dependencies: deps,
    install: true
)

# Translate and install our .desktop file
i18n.merge_file(
    input: 'data' / 'com.github.lopatoj.scribble.desktop.in',
    output: meson.project_name() + '.desktop',
    po_dir: meson.source_root() / 'po',
    type: 'desktop',
    install: true,
    install_dir: get_option('datadir') / 'applications'
)

# Translate and install our .metainfo file so AppCenter will see it
i18n.merge_file(
    input: 'data' / 'com.github.lopatoj.scribble.metainfo.xml.in',
    output: meson.project_name() + '.metainfo.xml',
    po_dir: meson.source_root() / 'po',
    install: true,
    install_dir: get_option('datadir') / 'metainfo'
)

# Install our icons in all the required sizes
icon_sizes = ['16', '24', '32', '48', '64', '128']

foreach i : icon_sizes
    install_data(
        'data' / i + '.svg',
        install_dir: get_option('datadir') / 'icons' / 'hicolor' / i + 'x' + i / 'apps',
        rename: meson.project_name() + '.svg'
    )
    install_data(
        'data' / i + '.svg',
        install_dir: get_option('datadir') / 'icons' / 'hicolor' / i + 'x' + i + '@2' / 'apps',
        rename: meson.project_name() + '.svg'
    )
endforeach

subdir('po')

src_dir = meson.source_root() / 'src'
subdir('tests')
