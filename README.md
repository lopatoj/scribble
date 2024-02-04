# Scribble

### Compile, Install and Start

```bash
meson build --prefix=/usr
ninja -C build install
com.github.lopatoj.scribble
```

### Uninstall

```bash
sudo ninja -C build uninstall
```

### Update translations

```bash
ninja -C build com.github.lopatoj.scribble-pot
ninja -C build com.github.lopatoj.scribble-update-po
```

### Add more languages

If you want to support more languages, just list them in the LINGUAS file and generate the new po file with the `*-update-po` target:

```bash
ninja -C build com.github.lopatoj.scribble-update-po
```

## Icons

Support for icons is configured too according to the [Icons section of the elementary Developer Documentation](https://docs.elementary.io/develop/writing-apps/our-first-app/icons).

## Packaging

Support for Flatpak is builtin as well and setup according to the [Packaging section of the elementary Developer Documentation](https://docs.elementary.io/develop/writing-apps/our-first-app/packaging).

### Compile, Package and Install

To run a test build and install your app, you can execute flatpak-builder from the project root:

```bash
flatpak-builder build com.github.yourusername.yourrepositoryname.yml --user --install --force-clean
```

### Uninstall

```bash
flatpak uninstall com.github.yourusername.yourrepositoryname --user
```

## Testing

### Unit Tests - `tests/unit/…`

To run the Unit Tests, you can execute the following command from the project root:

```bash
ninja -C build test
```

### UI Tests - `tests/ui/…`

To run the UI Tests, you can execute the following command from the project root:

```bash
ninja -C build test
```
