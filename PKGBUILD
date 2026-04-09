pkgname=systemd-failure-notifier
pkgver=0.0.1
pkgrel=1
arch=('any')
depends=('coreutils' 'bash' 'libnotify' 'open-in-terminal' 'systemd')
source=('main.sh')
sha512sums=('SKIP')

package(){
	install -d "${pkgdir}/usr/local/bin"
	ln -s "$(dirname ${srcdir})/main.sh" "${pkgdir}/usr/local/bin/${pkgname}"
}

