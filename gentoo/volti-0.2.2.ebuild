# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
inherit distutils

DESCRIPTION="GTK+ application for controling audio volume from system tray/notification area"
HOMEPAGE="http://code.google.com/p/volti/"
SRC_URI="http://volti.googlecode.com/files/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="X hal libnotify"

RDEPEND=">=dev-python/pygtk-2.16
	>=dev-python/pyalsaaudio-0.6
	dev-python/dbus-python
	X? ( >=dev-python/python-xlib-0.15_rc1 )
	hal? ( sys-apps/hal )
	libnotify? ( x11-libs/libnotify )"

DEPEND="${RDEPEND}"

DOCS="README ChangeLog AUTHORS"