pkgname="axos-manual"
pkgver=1.0
pkgrel="1"
pkgdesc="AxOS Manual"
arch=("x86_64")
depends=('man-db')
url="https://github.com/AxOS-project/axos-manual"

package() {
    mkdir -p "${pkgdir}/usr/share/man"
    cp -r "man/"* "${pkgdir}/usr/share/man/"
}
